--Which street has the maximum amount of old age trees?

SELECT aa.street,count(aa.street) as Total_tree
FROM `bigquery-public-data.new_york.tree_census_1995` as aa 
JOIN `bigquery-public-data.new_york.tree_census_2015` as bb  
ON aa.recordid=bb.tree_id
where diameter >11
group by 1
order by 2 desc 
