SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(WTSAPRP AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS FLOAT64) 
 END as subsample_a_weights_pre_pandemic, 

CASE
    WHEN URXUNI IS NULL THEN NULL 
ELSE SAFE_CAST(URXUNI AS FLOAT64) 
 END as nickel_urine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUNILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUNILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below lower detection limit' -- categorize numeric values
WHEN URDUNILC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUNILC AS STRING) 
 END as nickel_urine_comment_code, 

CASE
    WHEN SAFE_CAST(WTSA2YR AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_nickel_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UNI.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UNI_J.htm
*/
