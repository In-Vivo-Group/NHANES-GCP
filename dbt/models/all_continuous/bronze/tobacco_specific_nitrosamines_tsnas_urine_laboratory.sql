SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN URXNAL IS NULL THEN NULL 
ELSE SAFE_CAST(URXNAL AS FLOAT64) 
 END as urinary_total_nnal_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNALLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNALLC AS STRING) 
 END as urinary_total_nnal_comment_code, 

CASE
WHEN URXNAB IS NULL THEN NULL 
ELSE SAFE_CAST(URXNAB AS FLOAT64) 
 END as n_nitrosanabasine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNABLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNABLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNABLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNABLC AS STRING) 
 END as n_nitrosanabasine_nab_comment_code, 

CASE
WHEN URXNAT IS NULL THEN NULL 
ELSE SAFE_CAST(URXNAT AS FLOAT64) 
 END as n_nitrosanatabine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNATLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNATLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNATLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNATLC AS STRING) 
 END as n_nitrosanatabine_nat_comment_code, 

CASE
WHEN URXNNN IS NULL THEN NULL 
ELSE SAFE_CAST(URXNNN AS FLOAT64) 
 END as n_nitrosonornicotine_urine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNNNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNNNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNNNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNNNLC AS STRING) 
 END as n_nitrosonornicotine_nnn_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_tobacco_specific_nitrosamines_tsnas_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TSNA_H.htm
*/
