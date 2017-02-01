# -*- coding: utf-8 -*-
"""
Created on Tue Oct 18 23:39:49 2016

@author: alex
"""
from copy import copy
    

databaseName = 'ScenarioData'

filesToCapture = ['OUT0', 'OUT1', 'OUT2','OUT3','OUT4','OUT5','OUT6','OUT7','OUT8','OUT9']

fileList =  {'DEBUG': 'summary.out',
             'GSD': 'gsd.out',
             'OUT0': 'WAS.OT0',
             'OUT0i': 'WAS.iT0',
             'OUT0j': 'WAS.jT0',
             'OUT0p': 'WAS.pT0',
             'OUT1': 'WAS.OT1',
             'OUT1i': 'WAS.iT1',
             'OUT1j': 'WAS.jT1',
             'OUT1p': 'WAS.pT1',
             'OUT2': 'WAS.OT2',
             'OUT2i': 'WAS.iT2',
             'OUT2j': 'WAS.jT2',
             'OUT2p': 'WAS.pT2',
             'OUT3': 'WAS.OT3',
             'OUT3i': 'WAS.iT3',
             'OUT3j': 'WAS.jT3',
             'OUT3p': 'WAS.pT3',
             'OUT4': 'WAS.OT4',
             'OUT4i': 'WAS.iT4',
             'OUT4j': 'WAS.jT4',
             'OUT4p': 'WAS.pT4',
             'OUT5': 'WAS.OT5',
             'OUT5i': 'WAS.iT5',
             'OUT5j': 'WAS.jT5',
             'OUT5p': 'WAS.pT5',
             'OUT6': 'WAS.OT6',
             'OUT6i': 'WAS.iT6',
             'OUT6j': 'WAS.jT6',
             'OUT6p': 'WAS.pT6',
             'OUT7': 'WAS.OT7',
             'OUT8': 'WAS.OT8',
             'OUT8i': 'WAS.iT8',
             'OUT8j': 'WAS.jT8',
             'OUT8p': 'WAS.pT8',
             'OUT9': 'WAS.OT9',
             'OUT9i': 'WAS.iT9',
             'OUT9j': 'WAS.jT9',
             'OUT9p': 'WAS.pT9',
             'SCH1': 'WAS.SC1',
             'SCH2': 'WAS.SC2',
             'SCH3': 'WAS.SC3',
             'SCH4': 'WAS.SC4',
             'SCH5': 'WAS.SC5',
             'SCH6': 'WAS.SC6',
             'SCH7': 'WAS.SC7',
             'SCH8': 'WAS.SC8',
             'SCHN': 'WAS.SCN',
             'aug99': 'aug99.out'}

#---------------------------Summary File (OUT0,ot0)------------------------#
OUT0_filename         =  'was.ot0'
OUT0_tablenames       =  ['overall','overallContd','intrntl_net','pCommonPool','qCommonPool','profits_by_points_of_extraction']
OUT0_fullTablenames   =  ['LOCALLY OPTIMAL','Politcal       Freshwater','Net Common Pool','Payments for COMMON','Quantities for COMMON','Profits by']
OUT0_firstLinedists   =  [6,3,1,7,7,2]
OUT0_table1           =  ['Political_Unit','Total_Expenditure','Buyer_Surplus','Water_Producer_Surplus','Constrained_Capacity_Payments','Unaccounted_for_Costs','Total_Surplus','Government_Costs']
OUT0_table2           =  ['Political_Unit','Freshwater_Demand','Recycled_Demand','Average_Price','Urban_per-capita_Demand']
OUT0_table3           =  ['Net_Common_Pool','Net_Pipeline','Net_International_Payments']
OUT0_table4           =  ['Common Pool','Israel_in','Israel_out','PNA_in','PNA_out','Jordan_in','Jordan_out','Scarcity']
OUT0_table5           =  ['Common Pool','Total_MCM','Israel_own','Israel_use','PNA_in','PNA_out','Jordan_in','Jordan_out','Total_Claims','Total_Profit']
OUT0_table6           =  ['Israel_profits_by_point','PNA_profits_by_point','Jordan_profits_by_point']
OUT0_variablenames    =  []
for i in range(6):
    OUT0_variablenames.append(eval("OUT0_table" + str(i+1)))
OUT0_altVariablenames  = [OUT0_table1+['TS-GC']]
for i in range(1,6):
    OUT0_altVariablenames.append(eval("OUT0_table" + str(i+1)))
#----------info for tables to combine#---------------
OUT0_joinTables       =  [['overall','overallContd']]
OUT0_joinKeys         =  [['Political_Unit']]
OUT0_newTablenames    =  ['overall']


#--------------------------Price File (OUT1, ot1)--------------------------#
OUT1_filename         =  'was.ot1'
OUT1_tablenames       =  ['Israel_prices','Jordan_prices','PNA_prices']
OUT1_fullTablenames   =  ['ISRAEL','JORDAN','PNA']
OUT1_firstLinedists   =  [7,7,7]
OUT1_table1           =  ['district','shaddow_value','shaddow_value_with_leakage','recycled_price','urban_price','industry_price','agricultural_price','expenditure']
OUT1_table2           =  copy(OUT1_table1)
OUT1_table3           =  copy(OUT1_table1)
OUT1_variablenames    =  []
for i in range(3):
    OUT1_variablenames.append(eval("OUT1_table" + str(i+1)))
OUT1_altVariablenames =  None
#----------info for tables to combine#---------------
OUT1_appendTablenames =  copy(OUT1_tablenames)
OUT1_newTablename     =  'prices'


#---------------------Quantity Fresh File (OUT2, ot2)----------------------#
OUT2_filename         = 'was.ot2'
OUT2_tablenames       =  ['Israel_quant_fresh','Jordan_quant_fresh','PNA_quant_fresh']
OUT2_fullTablenames   =  ['ISRAEL','JORDAN','PNA']
OUT2_firstLinedists   =  [7,7,7]
OUT2_table1           =  ['district','total_production','fresh_net_export','recycled_net_export','urban_demand','industrial_demand','agricultural_demand_fresh','agricultural_demand_rec','total_demand','urban_per_cap_demand']
OUT2_table2           =  copy(OUT2_table1)
OUT2_table3           =  copy(OUT2_table1)
OUT2_variablenames    =  []
for i in range(3):
    OUT2_variablenames.append(eval("OUT2_table" + str(i+1)))
OUT2_altVariablenames =  None
#----------info for tables to combine---------------#
OUT2_appendTablenames =  ['Israel_quant','Jordan_quant','PNA_quant']
OUT2_newTablename     =  'fresh_Quantity'



#-------------------Quantity non-potable File (OUT3, ot3)------------------#
OUT3_filename         = 'was.ot3'
OUT3_tablenames       =  ['Israel_quant_nonpot','Jordan_quant_nonpot','PNA_quant_nonpot']
OUT3_fullTablenames    =  ['ISRAEL','JORDAN','PNA']
OUT3_firstLinedists   =  [6,6,6]
OUT3_table1           =  ['district','from_urban','from_industry','from_agriculture','to_agriculture','net_exports','other_nonpotable']
OUT3_table2           =  ['district','from_urban','from_industry','from_agriculture','to_agriculture','net_exports']
OUT3_table3           =  copy(OUT3_table2)
OUT3_variablenames    =  []
for i in range(3):
    OUT3_variablenames.append(eval("OUT3_table" + str(i+1)))
OUT3_altVariablenames =  None
#----------info for tables to combine---------------#
OUT3_appendTablenames =  copy(OUT3_tablenames)
OUT3_newTablename     =  'nonpot_Quantity'


#----------------------Social Welfare File (OUT4, ot4)---------------------#
OUT4_filename         = 'was.ot4'
OUT4_tablenames       =  ['Israel_soc_welfare','Israelcontd','Jordan_soc_welfare','Jordancontd','PNA_soc_welfare','PNAcontd']
OUT4_fullTablenames   =  ['ISRAEL','Buyer Surplus','JORDAN','Buyer Surplus','PNA','Buyer Surplus']
OUT4_firstLinedists   =  [6,3,6,3,6,3]
OUT4_table1           =  ['district','profits','direct_gov_costs','buyer_surplus','social_welfare','unacctd_for_costs']
OUT4_table2           =  ['district','urban_buyer_surplus','industrial_buyer_surplus','agricultural_buyer_surplus']
OUT4_table3           =  copy(OUT4_table1)
OUT4_table4           =  copy(OUT4_table2)
OUT4_table5           =  copy(OUT4_table1)
OUT4_table6           =  copy(OUT4_table2)
OUT4_variablenames    =  []
for i in range(6):
    OUT4_variablenames.append(eval("OUT4_table" + str(i+1)))
OUT4_altVariablenames =  None
#----------info for tables to combine---------------#
OUT4_joinTables       =  [['Israel_soc_welfare','Israelcontd'],['Jordan_soc_welfare','Jordancontd'],['PNA_soc_welfare','PNAcontd']]
OUT4_joinKeys         =  [['district'] for i in range(len(OUT4_joinTables))]
OUT4_newTablenames    =  ['Israel_soc_welfare','Jordan_soc_welfare','Palestine_soc_welfare']
OUT4_appendTablenames =  copy(OUT4_newTablenames)
OUT4_newTablename     =  'social_welfare'


#-------------------Fresh Water Linkages File (OUT5, ot5)------------------#
OUT5_filename         = 'was.ot5'
OUT5_tablenames       =  ['transport_fresh']
OUT5_fullTablenames   =  ['LINKAGES']
OUT5_firstLinedists   =  [3]
OUT5_table1           =  ['from','to','quantity','cost']
OUT5_variablenames    =  [OUT5_table1]
OUT5_colwidths        =  [[16,23,12,6]]
OUT5_altVariablenames =  None

#-----------------Non-Potable Water Linkages File (OUT6, ot6)--------------#
OUT6_filename         = 'was.ot6'
OUT6_tablenames       =  ['transport_recycled']
OUT6_fullTablenames   =  ['LINKAGES']
OUT6_firstLinedists   =  [3]
OUT6_table1           =  ['from','to','quantity','cost']
OUT6_variablenames    =  [OUT5_table1]
OUT6_colwidths        =  [[16,23,12,6]]
OUT6_altVariablenames =  None

#-------------------Quantity non-potable File (OUT7, ot7)------------------#
OUT7_filename         = 'was.ot7'
OUT7_tablenames       =  ['transport_constraint_fresh','transport_constraint_recycled','recycling_plants_with_capacity_constraints','Israel','Jordan','PNA']
OUT7_fullTablenames   =  ['CONSTRAINED TRANSPORT LINKS FOR FRESH WATER','CONSTRAINED TRANSPORT LINKS FOR RECYCLED WATER','RECYCLING PLANTS','ISRAEL','JORDAN','PNA']
OUT7_firstLinedists   =  [3,3,3,1,1,1]
OUT7_table1           =  ['from','to','capacity','shaddow_value']
OUT7_table2           =  copy(OUT7_table1)
OUT7_table3           =  ['location','capacity','shaddow_value']
OUT7_table4           =  ['district','capacity','shaddow_value']
OUT7_table5           =  copy(OUT7_table4)
OUT7_table6           =  copy(OUT7_table4)
OUT7_variablenames    =  []
for i in range(6):
    OUT7_variablenames.append(eval("OUT7_table" + str(i+1)))
OUT7_appendTablenames =  ['Israel','Jordan','PNA']
OUT7_newTablename     =  'desalination_plants_with_capacity_constraints'
OUT7_altVariablenames =  None

#-------------------Quantity non-potable File (OUT7, ot7)------------------#
OUT8_filename         =  'was.ot8'
OUT8_tablenames       =  ['final_supply_schedule']
OUT8_fullTablenames   =  ['FINAL SUPPLY']
OUT8_firstLinedists   =  [4]
OUT8_table1           =  ['district','s1','s2','s3','s4','s5','total']
OUT8_variablenames    =  [OUT8_table1]
OUT8_altVariablenames =  None

#-------------------Quantity non-potable File (OUT7, ot7)------------------#
OUT9_filename         =  'was.ot9'
OUT9_tablenames       =  ['fresh_transport_links','rec_transport_links','recycling_plants_on_line','Israel','Jordan','PNA']
OUT9_fullTablenames   =  ['TRANSPORT LINKS AVAILABLE FOR FRESH WATER','TRANSPORT LINKS AVAILABLE FOR RECYCLED WATER','RECYCLING PLANTS','ISRAEL','JORDAN','PNA']
OUT9_firstLinedists   =  [3,3,3,1,1,1]
OUT9_table1           =  ['from','to','capacity','cost']
OUT9_table2           =  copy(OUT9_table1)
OUT9_table3           =  ['location','capacity_pct_ind','capacity_pct_urb']
OUT9_table4           =  ['district','capacity','shaddow_value']
OUT9_table5           =  copy(OUT9_table4)
OUT9_table6           =  copy(OUT9_table4)
OUT9_variablenames    =  []
for i in range(6):
    OUT9_variablenames.append(eval("OUT9_table" + str(i+1)))

#----------info for tables to combine---------------#
OUT9_appendTablenames =  ['Israel','Jordan','PNA']
OUT9_newTablename     =  'desalination_plants_on_line'
OUT9_colwidths        =  [[16,23,10,6],[16,23,10,6],[],[],[],[]]
OUT9_altVariablenames =  None





