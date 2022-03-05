--Which residential counties have medicaid as the source of payment?

SELECT T1.County_of_Residence FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`AS T1
INNER JOIN `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment` AS T2
ON T1.County_of_Residence=T2.County_of_Residence
WHERE Source_of_Payment="Medicaid"
