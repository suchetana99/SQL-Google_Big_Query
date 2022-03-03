-- How many rapes have been cleared by arrest in the year 2016, february to august?

SELECT count(T1.unique_key) as Total_cleared_cases
FROM `bigquery-public-data.austin_crime.crime` T1
LEFT JOIN `bigquery-public-data.austin_incidents.incidents_2016`T2
ON T1.unique_key=T2.unique_key
where date between "2016-02-24" and "2016-08-04"
and description like '%RAPE%'
and clearance_status ="Cleared by Arrest"
