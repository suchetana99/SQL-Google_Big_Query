--fips2.sql

SELECT GeoName,Total_employment FROM `bigquery-public-data.sdoh_bea_cainc30.fips`
WHERE Net_earnings_by_place_of_residence>80000
ORDER BY 2
