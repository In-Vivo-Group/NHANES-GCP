SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as two_year_smoking_weights, 

CASE
WHEN URXNDEA IS NULL THEN NULL 
ELSE SAFE_CAST(URXNDEA AS FLOAT64) 
 END as n_nitrosodiethylamine_ndea_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDNDELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNDELC AS STRING) 
 END as ndea_comment_code, 

CASE
WHEN URXNMEA IS NULL THEN NULL 
ELSE SAFE_CAST(URXNMEA AS FLOAT64) 
 END as n_nitrosoethylmethylamine_nmea_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDMEALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMEALC AS STRING) 
 END as nmea_comment_code, 

CASE
WHEN URXNMOR IS NULL THEN NULL 
ELSE SAFE_CAST(URXNMOR AS FLOAT64) 
 END as n_nitrosomorpholine_nmor_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMORLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMORLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMORLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDMORLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMORLC AS STRING) 
 END as nmor_comment_code, 

CASE
WHEN URXNPIP IS NULL THEN NULL 
ELSE SAFE_CAST(URXNPIP AS FLOAT64) 
 END as n_nitrosopiperidine_npip_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDPIPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPIPLC AS STRING) 
 END as npip_comment_code, 

CASE
WHEN URXNPYR IS NULL THEN NULL 
ELSE SAFE_CAST(URXNPYR AS FLOAT64) 
 END as n_nitrosopyrrolidine_npyr_ng_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPYRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPYRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPYRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDPYRLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPYRLC AS STRING) 
 END as npyr_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_n_nitrosamine_compounds_vnas_urine_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/VNAS_H.htm
*/
