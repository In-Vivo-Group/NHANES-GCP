SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as environmental_b_2_year_weights, 

CASE
WHEN URXCNP IS NULL THEN NULL 
ELSE SAFE_CAST(URXCNP AS FLOAT64) 
 END as mono_carboxynonyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCNPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCNPLC AS STRING) 
 END as mono_carboxynonyl_phthalate_cmt_code, 

CASE
WHEN URXCOP IS NULL THEN NULL 
ELSE SAFE_CAST(URXCOP AS FLOAT64) 
 END as mono_carboxyoctyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCOPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCOPLC AS STRING) 
 END as mono_carboxyoctyl_phthalate_cmt_code, 

CASE
WHEN URXECP IS NULL THEN NULL 
ELSE SAFE_CAST(URXECP AS FLOAT64) 
 END as mecp_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDECPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDECPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDECPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDECPLC AS STRING) 
 END as mecp_phthalate_comment_code, 

CASE
WHEN URXHIBP IS NULL THEN NULL 
ELSE SAFE_CAST(URXHIBP AS FLOAT64) 
 END as mhibp_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHIBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHIBLC AS STRING) 
 END as mhibp_phthalate_comment_code, 

CASE
WHEN URXMBP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMBP AS FLOAT64) 
 END as mono_n_butyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMBPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMBPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMBPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMBPLC AS STRING) 
 END as mono_n_butyl_phthalate_comment_code, 

CASE
WHEN URXMC1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMC1 AS FLOAT64) 
 END as mono_3_carboxypropyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMC1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMC1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMC1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMC1LC AS STRING) 
 END as mono_3_carboxypropyl_phthalate_cmt, 

CASE
WHEN URXMCOH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMCOH AS FLOAT64) 
 END as mcoch_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMCOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMCOLC AS STRING) 
 END as mcoch_phthalate_comment_code, 

CASE
WHEN URXMEP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMEP AS FLOAT64) 
 END as mono_ethyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMEPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMEPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMEPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMEPLC AS STRING) 
 END as mono_ethyl_phthalate_comment_code, 

CASE
WHEN URXMHBP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHBP AS FLOAT64) 
 END as mono_3_hydroxy_n_butyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMHBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMHBLC AS STRING) 
 END as mhbp_phthalate_comment_code, 

CASE
WHEN URXMHH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHH AS FLOAT64) 
 END as mehp_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMHHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMHHLC AS STRING) 
 END as mehp_phthalate_comment_code, 

CASE
WHEN URXMHNC IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHNC AS FLOAT64) 
 END as mhnch_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMCHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMCHLC AS STRING) 
 END as mhnch_comment_code, 

CASE
WHEN URXMHP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHP AS FLOAT64) 
 END as mono_2_ethyl_hexyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMHPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMHPLC AS STRING) 
 END as mono_2_ethyl_hexyl_phthalate_cmt_code, 

CASE
WHEN URXMIB IS NULL THEN NULL 
ELSE SAFE_CAST(URXMIB AS FLOAT64) 
 END as mono_isobutyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMIBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMIBLC AS STRING) 
 END as mono_isobutyl_phthalate_comment_code, 

CASE
WHEN URXMNP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMNP AS FLOAT64) 
 END as mono_isononyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMNPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMNPLC AS STRING) 
 END as mono_isononyl_phthalate_comment_code, 

CASE
WHEN URXMOH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMOH AS FLOAT64) 
 END as meoh_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMOHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMOHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMOHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMOHLC AS STRING) 
 END as meoh_phthalate_comment_code, 

CASE
WHEN URXMZP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMZP AS FLOAT64) 
 END as mono_benzyl_phthalate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMZPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMZPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMZPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMZPLC AS STRING) 
 END as mono_benzyl_phthalate_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_phthalates_and_plasticizers_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PHTHTE_I.htm
*/
