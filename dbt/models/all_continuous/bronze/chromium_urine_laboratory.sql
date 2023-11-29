SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(WTSA2YR AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT) 
 END as subsample_a_weights, 

CASE
    WHEN URXUCM IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCM AS FLOAT64) 
 END as chromium_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below lower detection limit' -- categorize numeric values
WHEN URDUCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCMLC AS STRING) 
 END as chromium_urine_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_chromium_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UCM_J.htm
*/
