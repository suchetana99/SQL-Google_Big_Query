--What is the total cases of Mumps in the USA?

select count(state) as Totl_Num_of_Case from `lookerdata.cdc.project_tycho_reports` where cases <> '0' and disease ="MUMPS"

-- What is the total cases of Mumps in the CA?

select count (state) as CA_cases from `lookerdata.cdc.project_tycho_reports` where cases <> '0' and state ="CA"     ----= 1571 
and disease ="MUMPS"
