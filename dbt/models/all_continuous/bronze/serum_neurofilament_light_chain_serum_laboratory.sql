SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSNH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSNH2Y AS FLOAT64) 
 END as sssnfl_h_2_year_weights, 

CASE
    WHEN SSSNFL IS NULL THEN NULL 
ELSE SAFE_CAST(SSSNFL AS FLOAT64) 
 END as serum_neurofilament_light_chain_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFLH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or below the limit of detection' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFLH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSNFLH IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFLH AS STRING) 
 END as serum_neurofilament_above_detect_limit, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFLL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFLL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSNFLL IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFLL AS STRING) 
 END as serum_neurofilament_below_detect_limit, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_serum_neurofilament_light_chain_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSSNFL_H.htm
*/
