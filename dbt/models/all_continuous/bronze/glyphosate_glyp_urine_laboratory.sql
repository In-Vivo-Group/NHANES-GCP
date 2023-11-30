SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSCH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCH2Y AS FLOAT64) 
 END as surplus_specimen_c_13_14_2_year_weights, 

CASE
    WHEN SSGLYP IS NULL THEN NULL 
ELSE SAFE_CAST(SSGLYP AS FLOAT64) 
 END as glyphosate, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGLYPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGLYPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSGLYPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSGLYPL AS STRING) 
 END as glyphosate_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_glyphosate_glyp_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSGLYP_H.htm
*/
