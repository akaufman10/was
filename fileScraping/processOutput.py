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

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)
from fileFunctions import *
from fileParams import *


def findScenariosIn(filepath = WAS_scenario_directory):
    '''
    search a given filepath for subdirectories and return their location/name
    retruns a list of tupples (folderPath, folderName)
    assumes that 
        1) all folders are scenario folders
        2) all scenario folders have no subdirectories 
    '''
    paths = [(i[0]) for i in os.walk(filepath)]
    names = [(i[1]) for i in os.walk(filepath)]
    scenarios = zip(paths[1:],names[0])
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

    for scenario in scenarios:
        scenarioName = scenario[1]
        print('now collecting data for scenario: ' + scenarioName)
        os.chdir(scenario[0])
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
                os.chdir(data_directory)
                exec('%s.writeData(database = conn)' % (value[4:]))
                print('processed file: ' + value)
                os.chdir(scenario[0])
                
                
os.chdir(data_directory)
conn = sqlite3.connect(databaseName+".db")
scenarios = findScenariosIn()
stripFileData(filesToCapture,fileList,scenarios,conn,data_directory)
conn.close()

