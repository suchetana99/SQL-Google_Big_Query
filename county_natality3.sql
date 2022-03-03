SELECT SUBSTR(County_of_Residence,-2 , 2) as county_code,SUM(Ave_Pre_pregnancy_BMI) AS AVG_BIRTHSAve_Pre_pregnancy_BMI	

from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race`

GROUP BY 1

ORDER BY 2 DESC
