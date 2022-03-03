-- county_natality_by_maternal_morbidity

--what is the Total number of births in year 2018 from TX-residence  where avg_age of mother is between 26 and 33 and 
--average weight after birth is greater than 3437.53

SELECT SUM (Births) AS tot_birth FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` 
WHERE Year='2018-01-01'AND Ave_Age_of_Mother BETWEEN 26 AND 33
AND Ave_Birth_Weight_gms > 3437.53
AND County_of_Residence LIKE "%TX%"
