--Code using Left Join
--county_natality_by_mother_race and county_natality_by_maternal_morbidity

--extracting data on average age of mothers in the residency of Calhoun County,AL by relating maternal race and maternal morbidity datasets

SELECT mot_race.* ,mot_morb.*
 FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race` mot_race
 LEFT JOIN `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` mot_morb
 ON mot_race.Ave_Age_of_Mother= mot_morb.Ave_Age_of_Mother
 WHERE mot_race.County_of_Residence="Calhoun County, AL"
