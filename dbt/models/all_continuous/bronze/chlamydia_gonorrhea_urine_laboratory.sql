SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN URXUCL IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCL AS STRING) 
 END as urinary_chlamydia, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUGC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUGC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUGC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN URXUGC IS NULL THEN NULL 
ELSE SAFE_CAST(URXUGC AS STRING) 
 END as urinary_gonorrhea, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_chlamydia_gonorrhea_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/CHLMDA_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/CHLMDA_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L05_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L05_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB05.htm
*/
