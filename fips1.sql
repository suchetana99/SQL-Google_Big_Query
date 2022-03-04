--fips1.sql

--Which group of population in Avery,NC have the highest average unemployment compensation based on their per capita personal income?

SELECT  Percapita_personal_income, avg(Percapita_unemployment_insurance_compensation) AS avg_unemp_compensation 	FROM `bigquery-public-data.sdoh_bea_cainc30.fips` 
WHERE LOWER(GeoName)="avery, nc"
GROUP BY Percapita_personal_income
order by avg_unemp_compensation DESC
