--iowa_liquor_sales

--what is the proportion of revenue sales greater than 22000 dollars earned by vendrs in the county Scott?

SELECT  DISTINCT vendor_name	, sale_dollars   FROM `bigquery-public-data.iowa_liquor_sales.sales` 
WHERE LOWER(county)="scott" and sale_dollars > 22000
ORDER BY 2 DESC
