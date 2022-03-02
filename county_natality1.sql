--Births Data Summary
--county_natality  

--countries and their total number of births

SELECT LOWER(County_of_Residence) AS County_of_Residence, SUM(Births)AS total_birth
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
GROUP BY 1
ORDER BY 2
