SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSSBH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBH2Y AS FLOAT64) 
 END as surplus_specimen_b_13_14_2_year_weights, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN SSURMHBP IS NULL THEN NULL 
ELSE SAFE_CAST(SSURMHBP AS FLOAT64) 
 END as mono_3_hydroxy_n_butyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDUMHBPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDUMHBPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDUMHBPL IS NULL THEN NULL 
ELSE SAFE_CAST(SDUMHBPL AS STRING) 
 END as mono_3_hydroxy_n_butyl_phthalate_cmt, 

CASE
WHEN SSURHIBP IS NULL THEN NULL 
ELSE SAFE_CAST(SSURHIBP AS FLOAT64) 
 END as mono_2_hydroxy_iso_butyl_phthlte_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDUHIBPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SDUHIBPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SDUHIBPL IS NULL THEN NULL 
ELSE SAFE_CAST(SDUHIBPL AS STRING) 
 END as mono_2_hydroxy_iso_butyl_phthlte_cmt, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_phthalates_and_plasticizers_metabolites_urine_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSPHTE_H.htm
*/
