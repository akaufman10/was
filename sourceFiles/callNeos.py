# -*- coding: utf-8 -*-
"""
Created on Wed Dec 28 16:40:06 2016

@author: alex
"""

#!/usr/bin/env python
#########################################
# Based on NeosClient.py
######################################### 
import xmlrpclib
import requests, zipfile, StringIO
import math
import time


xmlfilename = 'WAS.xml'

neos=xmlrpclib.ServerProxy('https://neos-server.org:3333')

#Read XML file
xmlfile = open(xmlfilename,"r")
xml=""
buffer=1
while buffer:
  buffer =  xmlfile.read()
  xml+= buffer
xmlfile.close()

#submit
(jobNumber,password) = neos.submitJob(xml)
done = False
while done is False:
    status = neos.getJobStatus(jobNumber,password)
    if status == 'Done':
        done = True
    else:
        time.sleep(5)

#final result if desired
#result = neos.getFinalResults(jobNumber, password).data

#go to the ZIP file url and extract the file
directory = str(int(math.floor(int(jobNumber)/10000)*10000))
url = 'https://neos-server.org/neos/jobs/%s/%s-%s-solver-output.zip' % (directory,jobNumber,password)

r = requests.get(url, stream=True)
z = zipfile.ZipFile(StringIO.StringIO(r.content))
z.extractall()