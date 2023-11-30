SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN URXUFL IS NULL THEN NULL 
ELSE SAFE_CAST(URXUFL AS FLOAT64) 
 END as fluoride_urine_mg_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUFLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUFLLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUFLLC AS STRING) 
 END as fluoride_urine_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_fluoride_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UFLDE_I.htm
*/
