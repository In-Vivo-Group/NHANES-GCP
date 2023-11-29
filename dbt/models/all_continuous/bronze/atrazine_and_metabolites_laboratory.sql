SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_c_weights, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXAAZ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.3536 AS FLOAT64),0) AS INT64) THEN '0.3536' -- categorize numeric values
WHEN URXAAZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXAAZ AS STRING) 
 END as atrazine_result_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAAZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAAZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAAZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAAZLC AS STRING) 
 END as atrazine_comment_code, 

CASE
WHEN URXATZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXATZ AS FLOAT64) 
 END as atrazine_mercapturate_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDATZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDATZLC AS STRING) 
 END as atrazine_mercapturate_comment_code, 

CASE
WHEN URXDCZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXDCZ AS FLOAT64) 
 END as diaminochloroatrazine_result_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDCZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDCZLC AS STRING) 
 END as diaminochloroatrazine_comment_code, 

CASE
WHEN URXDTZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXDTZ AS FLOAT64) 
 END as desethyl_atrazine_result_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDTZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDTZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDTZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDTZLC AS STRING) 
 END as desethyl_atrazine_comment_code, 

CASE
WHEN URXSIS IS NULL THEN NULL 
ELSE SAFE_CAST(URXSIS AS FLOAT64) 
 END as desisopropyl_atrazine_result_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSISLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSISLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSISLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDSISLC AS STRING) 
 END as desisopropyl_atrazine_comment_code, 

CASE
WHEN URXSISM IS NULL THEN NULL 
ELSE SAFE_CAST(URXSISM AS FLOAT64) 
 END as desisopropyl_atrazine_mercapturate_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSIMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDSIMLC AS STRING) 
 END as sism_comment_code, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_atrazine_and_metabolites_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UAM_E.htm
*/
