--which category of income group has highest percentage in India?

SELECT income_group,COUNT(income_group) AS COUNT_IG
FROM `bigquery-public-data.world_bank_intl_debt.international_debt` AS DEBT
LEFT JOIN `bigquery-public-data.world_bank_intl_debt.country_summary` AS SUMMARY 
ON  DEBT.country_code=SUMMARY.country_code 
WHERE  DEBT.country_code = "IND"
GROUP BY 1
ORDER BY 2 DESC 

--Which income groups are prevelant in the whole world?

SELECT income_group,COUNT(income_group) AS COUNT
FROM `bigquery-public-data.world_bank_intl_debt.international_debt` AS DEBT
LEFT JOIN `bigquery-public-data.world_bank_intl_debt.country_summary` AS SUMMARY 
ON  DEBT.country_code=SUMMARY.country_code 
GROUP BY 1
ORDER BY 2 DESC 


