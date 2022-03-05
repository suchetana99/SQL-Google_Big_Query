--fips2.sql

-- What are the total employments in the respective counties where the net earnings is greater than 80000 as per residence?

SELECT GeoName,Total_employment FROM `bigquery-public-data.sdoh_bea_cainc30.fips`
WHERE Net_earnings_by_place_of_residence>80000
ORDER BY 2
