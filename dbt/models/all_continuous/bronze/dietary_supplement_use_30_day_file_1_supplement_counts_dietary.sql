SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSD010 IS NULL THEN NULL 
ELSE SAFE_CAST(DSD010 AS STRING) 
 END as any_dietary_supplements_taken, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DSD010AN IS NULL THEN NULL 
ELSE SAFE_CAST(DSD010AN AS STRING) 
 END as any_antacids_taken, 

CASE
WHEN DSDCOUNT IS NULL THEN NULL 
ELSE SAFE_CAST(DSDCOUNT AS FLOAT64) 
 END as total_of_dietary_supplements_taken, 

CASE
WHEN SAFE_CAST(DSDANCNT AS FLOAT64) > 15.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DSDANCNT IS NULL THEN NULL 
ELSE SAFE_CAST(DSDANCNT AS FLOAT64) 
 END as total_of_antacids_taken, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_supplement_use_30_day_file_1_supplement_counts_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DSQ1_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DSQ1_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/DSQ1_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DSQFILE1.htm
*/
