# -*- coding: utf-8 -*-
"""
Created on Tue Oct 18 23:36:47 2016

@author: alex
"""
import weakref
import pandas as pd
import sqlite3
import re
from copy import copy
import collections


def stripFileData(filesToUse, fileList):
    '''
    takes a list of files to use, a list of tupples describing available files,
    assigns each file to a textFile object and collects and formats the data
    '''
    for key, value in fileList.iteritems():
        if key in filesToUse:
            exec('%s = textFile(fileName = %s_filename)' % (value[4:],key))
            exec('%s.stripData(scenarioName = scenarioName, tableNames = %s_tablenames, variableNames = %s_variablenames,dataLines = %s_datalines)' % (value[4:],key,key,key))
            try:
                exec('%s.joinTables(%s_joinTableNames,joinKey=%s_variablenames[0][0])' % (value[4:],key,key))
            except NameError:
                pass
            try:            
                exec('%s.appendTables(appendTableNames=%s_appendTableNames)' % (value[4:],key))
            except NameError:
                pass


class textFile(object):
    '''
    an object that represents a WAS output file in a specified location
    '''
    instances = []    
    
    def __init__(self,fileName=None):
        self.__class__.instances.append(self)
        self.fileName = fileName
        with open(self.fileName) as f:
            self.textData = f.read().splitlines()

    def __repr__(self):
        return self.fileName
                
    def viewFile(self):
    
        for i, line in enumerate(self.textData):
            print(str(i)+': '+line)

    def findTables(self,fullTableNames):
        
        tableStartPoints = []
        datalines = []
        
        #check for duplicated fullTableNames
        if len(set(fullTableNames)) != len(fullTableNames) : 
            counter = collections.Counter(fullTableNames) #count the number of times each name appears

            #loop through all the unique tablenames
            for key, value in counter.iteritems(): 
                if value > 1: #if the name appears more than once
                    indexes = [i for i,x in enumerate(fullTableNames) if x == key] #get the index of each instance of the tablename
                    instances = range(1,value+1) #make a list from 1-n, n= # of instances of the table

                    #for each instance of the table
                    for j,i in enumerate(indexes): 
                        #replace the table with a tupple that contains (tableName, instance#)
                        fullTableNames[i] = (fullTableNames[i], instances[j]) 
                        
        #recove the line number for each table title
        for i,table in enumerate(fullTableNames):

            # if there is only a table name in table object
            if isinstance(table, str): 
                
                #loop through the lines in the file
                for j,line in enumerate(self.textData): 

                    if table in line: #check if the table name is in the text
                        #print('line ' + str(j) + ': ' + table)
                        tableStartPoints.append(j) #add the line number to the list of starting points
  
            #if there is a second arguemnt, it specifies the instance number of the table
            else: 
                instanceCounter = 0 #initialize a counter for use with tables that have multiple occurrences 
                
                #loop through the lines in the file
                for j,line in enumerate(self.textData): 
                    
                    tabName, instance = table #unpack the table name and instance
                    if tabName in line: #if the table is in the line
                            instanceCounter += 1 #add one to the instance counter
                            if instanceCounter == instance: #if the instance counter matches table's instance                               
                                tableStartPoints.append(j) #add the line number to the list of starting points          
            
        
        #modify the table start points using the first line distances specified
        tableStartPoints = [i + self.firstLineDists[n] for n,i in enumerate(tableStartPoints)] #ot7 hack
        
        #use the table starting lines to make the intervals for the table
        #this step is not so important because whie space or '==' ends most tables
        try:
            tableIntervals = [(tableStartPoints[i],tableStartPoints[i+1]) for i in range(len(tableStartPoints)-1)]
        except IndexError:
            pass
        tableIntervals.append((tableStartPoints[-1],200)) #add a arbitrary final point to complete the last interval
        tableIntervals = [(x,y-2) for x,y in tableIntervals]

        #convert the intervals into ranges that can be used to itterate through lines        
        for x,y in tableIntervals:
            datalines.append(range(x,y))

        return datalines
    
    def stripData(
                  self,scenarioName = None,
                  tableNames        = None,
                  variableNames     = None,
                  dataLines         = None,
                  joinTableNames    = None,
                  joinKey           = None,
                  appendTableNames  = None,
                  fullTableNames    = None,
                  colWidths         = None,
                  altVariableNames  = None,
                  firstLineDists    = None
                  ):
        '''                      
        takes a number of parameters that specify how to strip data from file
        the number of tables in tableNames must match exactly:
        -the number of list objects in the variableNames list
        -the number of names in the fullTableNames list
        -the number of list objects in colWidths (including NoneType)
        -the number of list objects in altVariableNames if specified
        -the number of integers in firstLineDists
        '''           
        self.tableNames = copy(tableNames)
        self.variableNames = copy(variableNames)
        self.firstLineDists = copy(firstLineDists)
        self.data = []
        self.dataLines = self.findTables(fullTableNames) 
        if joinTableNames:
            self.joinTablenames = joinTableNames
            self.joinKey = joinKey
        if appendTableNames:
            self.appendTableNames = appendTableNames


        #loop through each table 
        for i in range(len(self.tableNames)):
            
            #initialize a dataframe to hold the data that is read
            table = pd.DataFrame(data=[], columns=self.variableNames[i])
 
            #(re)set the specified column widths to None for the new table
            colWidth = None
            
             #(re)set the value of the previous row blank to False
            prevRowBlank = False
            
            #check if there are column widths for this table and assign them            
            if colWidths:
                colWidth = colWidths[i]
                if colWidth != []:
                    colWidth = [0] + colWidth
                else:
                    colWidth = None                                

            #store an empty table even if there are no data, and continue
            if self.dataLines[i] == []:
                table['scenario'] = scenarioName
                self.data.append(table)
                continue
            
            #assuming there are data, loop through each line of the text file
            for j, line in enumerate(self.textData):
                
     
                #when the current line is market in self.datalines...
                if j in self.dataLines[i]:

                    #sub in an underscore for spaces between letters
                    line = re.sub(r'([^0-9\s])\s([^0-9\s])', r'\1_\2',line)

                    #if the column width is spcified
                    if colWidth is not None:
                        #convert column widths to points on the numberline
                        colPoints = [sum(x for x in colWidth[:k+1]) for k in range(len(colWidth))]
                        #convert column points to intervals
                        colIntervals = [(colPoints[x],colPoints[x+1]) for x in range(len(colPoints)-1)]
                        #read each interval from the line
                        row = [line[x:y] for x,y in colIntervals]
                        #strip off leading and trailing space
                        row = [lin.strip(' ') for lin in row]  
                        #add back spaces where underscores had been inserted
                        row = [lin.replace('_',' ') for lin in row]
                        #if the row has only an empty space, its empty
                        if len(set(row)) <= 1  and row[0] == '':
                            row = []
                    #if there are no column widths specified
                    else: 
                        #split the line
                        row = line.split() 
                        #add back spaces where underscores had been inserted
                        row = [lin.replace('_',' ') for lin in row] #swap 

                    #if the row is blank
                    if row == []: 

                        #and the previous row was blank
                        if prevRowBlank == True: 

                            #check if its the specific table
                            if self.tableNames[i] == 'intrntl_net': 
                                #add the country variable in (since its printed on the line above in the text file)                                
                                table['country'] = pd.Series(['Israel','PNA','Jordan'],index=[table.index])

                            #whether or not this is the intrntl_net table...
                            break #break the loop reading lines and continue within the table loop

                        #if the previous row was not blank
                        else: 
                            prevRowBlank = True #set the previous row to blank and continue to the next line
                            continue

                    #now that we know the row is not blank, test if its an endline
                    if '=======' in row[0]: 
                        break #break the loop reading line and continue withing the table loop

                    #if there are no alt variables just add the row to the table
                    if altVariableNames is None: 
                        table.loc[j] = row

                    #if there are alternative variable names
                    else: 
                        try: 
                            table.loc[j] = row #try to add the row
                            
                        except ValueError: #if it fails, check for alternative variable names for the table

                            #this is a hack to except a certain table in was.ot0 which produces this error
                            if row[0] in ['Israel', 'Jordan', 'PNA']  and len(row) == 1 :
                                continue #go to the next line if these conditions are met, its not a problem

                            #get the new variables to add 
                            varsToAdd = set(altVariableNames[i]) - set(table.columns)
                            
                            #add each new variable to the dataframe
                            for var in varsToAdd: 
                                table[var] = "" #NOTE(may need to be modified to also remove variables if needed)

                            #add the row to the table
                            table.loc[j] = row 
                        
            table['scenario'] = scenarioName #add the scenario name after reading all data into the table
            self.data.append(table) #add the table to the self.data list
                
    def joinTables(self,joinTables = None, joinKeys = None, newTableNames = None):
        for t in range(len(joinTables)):
            joinTableNames = joinTables[t]
            joinKey        = joinKeys[t]
            newTableName   = newTableNames[t]
            if not joinTableNames or not joinKey:
                try:
                    joinTableNames = self.joinTableNames
                    joinKey = self.joinKey
                except NameError as err:
                    print(err + ': join table info was not passed to this Text file' )
            
            toJoin = []
            for i, table in enumerate(self.tableNames):
                for j, joinTable in enumerate(joinTableNames):
                    if table == joinTable:
                        toJoin.append(i)
            
            for i in toJoin:
                if i != toJoin[-1]:
                    del self.data[i+1]['scenario']
                    self.data[i+1] = pd.merge(self.data[i],self.data[i+1],on=joinKey)
            for i in reversed(toJoin):
                if i != toJoin[-1]:
                    del self.data[i]
                    del self.tableNames[i]
                else:
                    if newTableName is not None:
                        self.tableNames[i] = newTableName

    def appendTables(self,appendTableNames = None, newTableName = None):
        
        if not appendTableNames:
            try:
                appendTableNames = self.appendTableNames
            except NameError as err:
                print(err + ': join table info was not passed to this Text file' )
                            
        toAppend = []        
        for i, table in enumerate(self.tableNames):
            for j, appendTable in enumerate(appendTableNames):
                if table == appendTable:
                    toAppend.append(i)
                    
        for i,j in enumerate(toAppend):
            self.data[j]['subTable'] = appendTableNames[i]

        for i in reversed(toAppend):
            if i != toAppend[-1]:
                self.data[toAppend[-1]] = self.data[toAppend[-1]].append(self.data[i])

        for i in reversed(toAppend):
            if i != toAppend[-1]:
                del self.data[i]
                del self.tableNames[i]
            else:
                if newTableName is not None:
                    self.tableNames[i] = newTableName


    def writeData(self, database = None):
        self.conn = database
        if not isinstance(database, sqlite3.Connection):
            raise TypeError('database must be a connection to a sqlite3 database')
        for i in range(len(self.tableNames)):
            try:
                self.data[i].to_sql(self.tableNames[i], self.conn, if_exists='append', index=False)
            except sqlite3.OperationalError:
                del self.data[i]['TS-GC'] 
                self.data[i].to_sql(self.tableNames[i], self.conn, if_exists='append', index=False)
        self.conn.commit()
        

                
                
                