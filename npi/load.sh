#!/bin/sh


#The NPI is updated around the 15th of the month and always holds last month's date in the format 'Feb_2011'. Its around 200 mb i think
echo "wget http://nppes.viva-it.com/NPPES_Data_Dissemination_$(date -d '-1 month' +%b_%Y).zip"


#sed 's/""//g'  <$1> sed.csv


#psql -U acustream@test test <<EOF

#truncate table npi_registry;
#\copy npi_registry from ~/npi/sed.csv delimiter ',' csv quote '"' header
#EOF
