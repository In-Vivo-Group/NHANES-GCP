SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXUCL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN URXUCL IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCL AS STRING) 
 END as chlamydia_urine, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_chlamydia_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/CHLMDA_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CHLMDA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CHLMDA_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/CHLMDA_F.htm
*/
