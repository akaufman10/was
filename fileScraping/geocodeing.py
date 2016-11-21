# -*- coding: utf-8 -*-
"""
Created on Sat Nov 19 17:19:37 2016

@author: alex
"""
from geopy.geocoders import Nominatim
import os
import numpy as np
import pandas as pd
os.chdir('/home/alex/Documents/Projects/WAS/Code/fileScraping')
from fileParams import *

os.chdir(data_directory+'/excel_files')
data = pd.read_csv('social_welfare.csv') #read in the regional data
cities = set(data['district'].tolist()) #get a list of city and region names

#define a dict with alternative regional names to avoid geocoding errors
alt_cities = {'Arava':'Eilat',
              'Gaza':'Gaza City',
              'Hula':'Ramot Naftali',
              'Golan':'Merom Golan',
              'Negev':'Segev Shalom',
              'Bethlehem':'Church of Nativity'
              }
#sub in the alternative city names where needed
cities = [alt_cities[key] if key in alt_cities else key for key in cities] 



#get the geocoder object and geocode the locations
locator = Nominatim()
locations = [(city,locator.geocode(city, timeout=10)) for city in cities]
locations = [(city, location.latitude, location.longitude) for city, location in locations]
cols = ['city','latitude','longitude']
locations = pd.DataFrame(data=locations, columns=cols)

#replace city names with regional names
inv_alt_cities = {v: k for k, v in alt_cities.iteritems()}
locations['city'] = [inv_alt_cities[key] if key in inv_alt_cities else key for key in locations['city']]


#remove coordinates for TOTAL
rownum = locations.loc[locations['city'] == 'TOTAL'].index[0]
locations['latitude'][rownum] = np.NaN
locations['longitude'][rownum] = np.NaN

locations.to_csv('geocoded_cities.csv', index=False)