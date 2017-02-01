# -*- coding: utf-8 -*-
"""
Created on Sun Oct 16 13:55:15 2016

@author: alex
"""

import sqlite3
import pandas as pd
import os
import numpy as np
import re
import weakref
import os
import sys
from os import listdir
from os.path import isfile, join

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)
data_directory = dname +'/Data'
from fileFunctions import *
from fileParams import *


#get a list of all the folders in the current directory
def findScenarios(filepath = dname):
    '''
    search a given filepath for subdirectories and return their location/name
    retruns a list of tupples (folderPath, folderName)
    assumes that
        1) all folders are scenario folders
        2) all scenario folders have no subdirectories 
    '''
    removeFiles = ['Help','JOR2020','saved','Data','Saved_temp','excel',
                   'DLLs','Doc','include','Lib','libs','Logs','Scripts',
                    'share','tcl','tools','GAMS23.5','225a','225b',
		    'License','man']
    
    scenarios = [f for f in listdir(os.getcwd()) if not isfile(join(os.getcwd(),f))]
    
    for i, scn in enumerate(scenarios):
        if scn in removeFiles:
            scenarios.pop(i) #remove folders that do not contain scenario data

    return scenarios


def makeFileList(metaFile):
    '''
    read a text file containing gams code and return a dictionary of output files
    key: GAMS file object
    value : the name output file  
    '''

    with open(metaFile) as f:
        fileList = []    
        for line in f:
            try:
                fileList.append((re.search('FILE\ (\w+)', line).groups()[0],re.search('/(.*)/', line).groups()[0]))
            except AttributeError:
                pass
    return dict(fileList)


def stripFileData(filesToUse,fileList,scenarios,database,dataDirectory):
    directory = os.getcwd()
    for scenario in scenarios:
        scenarioName = scenario
        scenarioPath = directory + "/" + scenarioName
        os.chdir(scenarioPath)
        
        if not os.path.exists('unprocessed.txt'):

            continue
        else:
            os.remove('unprocessed.txt')

        for key, value in fileList.iteritems():
            if key in filesToUse:
                try:                    
                    exec('%s = textFile(fileName = %s_filename)' % (value[4:],key))
                except IOError:
                    continue
                try:            
                    exec('%s.stripData(scenarioName = scenarioName, tableNames = %s_tablenames, variableNames = %s_variablenames, fullTableNames = %s_fullTablenames, firstLineDists = %s_firstLinedists, colWidths=%s_colwidths, altVariableNames = %s_altVariablenames)' % (value[4:],key,key,key,key,key,key))                                        
                except NameError:
                    try:
                        exec('%s.stripData(scenarioName = scenarioName, tableNames = %s_tablenames, variableNames = %s_variablenames, fullTableNames = %s_fullTablenames, firstLineDists = %s_firstLinedists, altVariableNames = %s_altVariablenames)' % (value[4:],key,key,key,key,key))                
                    except NameError:
                        try:
                            exec('%s.stripData(scenarioName = scenarioName, tableNames = %s_tablenames, variableNames = %s_variablenames,fullTableNames = %s_fullTablenames, firstLineDists = %s_firstLinedists, colWidths=%s_colwidths,altVariableNames = %s_altVariablenames)' % (value[4:],key,key,key,key,key,key))
                        except NameError:                
                            exec('%s.stripData(scenarioName = scenarioName, tableNames = %s_tablenames, variableNames = %s_variablenames, fullTableNames = %s_fullTablenames, firstLineDists = %s_firstLinedists, altVariableNames = %s_altVariablenames)' % (value[4:],key,key,key,key,key))               
                try:
                    exec('%s.joinTables(%s_joinTables,joinKeys=%s_joinKeys,newTableNames = %s_newTablenames)' % (value[4:],key,key,key))
                except NameError:
                    pass
                try:
                    exec('%s.appendTables(appendTableNames=%s_appendTablenames,newTableName = %s_newTablename)' % (value[4:],key,key))
                except NameError:
                    pass
                exec('%s.writeData(database = conn)' % (value[4:]))       

try:
    os.chdir(data_directory)
except:
    os.makedirs(data_directory)
conn = sqlite3.connect(databaseName+".db")
os.chdir(dname)
scenarios = findScenarios()
stripFileData(filesToCapture,fileList,scenarios,conn,data_directory)
conn.close()

