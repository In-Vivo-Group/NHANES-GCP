SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'No one in houseold is a smoker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1 household member is a smoker' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '2 household members are smokers' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 or more household members are smokers' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '777' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD460 AS FLOAT64),0) AS INT64) AS STRING) = '999' THEN 'Dont know' -- categorize string values 
WHEN SMD460 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD460 AS STRING) 
 END as of_people_who_live_here_smoke_tobacco, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'No one smokes inside the house' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1 household member smokes inside the house' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '2 household members smoke inside the house' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 or more household members smoke inside the house' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '777' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD470 AS FLOAT64),0) AS INT64) AS STRING) = '999' THEN 'Dont know' -- categorize string values 
WHEN SMD470 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD470 AS STRING) 
 END as of_people_who_smoke_inside_this_home, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN '0' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '2' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '4' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN '5' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '6' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN '7' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMD480 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN SMD480 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD480 AS STRING) 
 END as in_past_week_days_person_smoked_inside, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMD410 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD410 AS STRING) 
 END as does_anyone_smoke_inside_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 or more' -- categorize numeric values
WHEN SMD415 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD415 AS STRING) 
 END as total_of_smokers_inside_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 or more' -- categorize numeric values
WHEN SMD415A IS NULL THEN NULL 
ELSE SAFE_CAST(SMD415A AS STRING) 
 END as total_cigarette_smokers_inside_home, 

CASE
WHEN SMD430 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD430 AS STRING) 
 END as total_cigarettes_smoked_inside_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 or More' -- categorize numeric values
WHEN SMD415B IS NULL THEN NULL 
ELSE SAFE_CAST(SMD415B AS STRING) 
 END as total_of_cigar_smokers_in_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMD415C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 or More' -- categorize numeric values
WHEN SMD415C IS NULL THEN NULL 
ELSE SAFE_CAST(SMD415C AS STRING) 
 END as total_of_pipe_smokers_in_home, 

CASE
WHEN SMD440 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD440 AS STRING) 
 END as total_of_cigars_smoked_in_home, 

CASE
WHEN SMD450 IS NULL THEN NULL 
ELSE SAFE_CAST(SMD450 AS STRING) 
 END as total_of_pipes_smoked_in_home, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_smoking_household_smokers_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQFAM_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_SMQFAM.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SMQFAM_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SMQFAM_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SMQFAM_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SMQFAM_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SMQFAM_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/SMQFAM_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SMQFAM_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SMQFAM_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SMQFAM.htm
*/
