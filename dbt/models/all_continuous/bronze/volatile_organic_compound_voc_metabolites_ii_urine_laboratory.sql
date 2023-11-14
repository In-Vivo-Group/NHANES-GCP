SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTVOC2PP IS NULL THEN NULL 
ELSE SAFE_CAST(WTVOC2PP AS FLOAT64) 
 END as uvoc2_subsample_weights_pre_pandemic, 

CASE
WHEN URXMUCA IS NULL THEN NULL 
ELSE SAFE_CAST(URXMUCA AS FLOAT64) 
 END as trans_trans_muconic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMUCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMUCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMUCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMUCLC AS STRING) 
 END as trans_trans_muconic_acid_comment_code, 

CASE
WHEN URXPHMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXPHMA AS FLOAT64) 
 END as phenylmercapturic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPMALC AS STRING) 
 END as phenylmercapturic_acid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_ii_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UVOC2.htm
*/
