SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as two_year_smoking_weights, 

CASE
WHEN URXUAS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAS AS FLOAT64) 
 END as urinary_arsenic_total_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUASLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUASLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUASLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUASLC AS STRING) 
 END as urinary_arsenic_total_comment_code, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_arsenic_total_urine_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UTASS_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UTASS_H.htm
*/
