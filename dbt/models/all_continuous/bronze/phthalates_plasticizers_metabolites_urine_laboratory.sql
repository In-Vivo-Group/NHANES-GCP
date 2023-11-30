SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URXCNP IS NULL THEN NULL 
ELSE SAFE_CAST(URXCNP AS FLOAT64) 
 END as mono_carboxynonyl_phthalate_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCNPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCNPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCNPLC AS STRING) 
 END as mono_carboxynonyl_phthalate_comment, 

CASE
    WHEN URXCOP IS NULL THEN NULL 
ELSE SAFE_CAST(URXCOP AS FLOAT64) 
 END as mono_carboxyoctyl_phthalate_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCOPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCOPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCOPLC AS STRING) 
 END as mono_carboxyoctyl_phthalate_comment, 

CASE
    WHEN URXECP IS NULL THEN NULL 
ELSE SAFE_CAST(URXECP AS FLOAT64) 
 END as mono_2_ethyl_5_carboxypentyl_phthalate, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDECPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDECPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDECPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDECPLC AS STRING) 
 END as mono_2ethyl5carboxypentyl_phthalate_cmt, 

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
    WHEN URXMHH IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHH AS FLOAT64) 
 END as mono_2_ethl_5_hydrxhxyl_phthte_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMHHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMHHLC AS STRING) 
 END as mono_2ethyl5hydroxyhexyl_phthalate_cmt, 

CASE
    WHEN URXMHP IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHP AS FLOAT64) 
 END as mono_2_ethyl_hexyl_phthalate_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMHPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMHPLC AS STRING) 
 END as mono_2_ethyl_hexyl_phthalate_comment, 

CASE
    WHEN URXMNM IS NULL THEN NULL 
ELSE SAFE_CAST(URXMNM AS FLOAT64) 
 END as mono_n_methyl_phthalate, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMNMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMNMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMNMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMNMLC AS STRING) 
 END as mono_n_methyl_phthalate_comment_code, 

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
 END as mono_2_ethyl_5_oxohexyl_phthalate, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMOHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMOHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMOHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMOHLC AS STRING) 
 END as mono_2_ethyl_5_oxohexyl_phthalate_cmt, 

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

CASE
    WHEN URXMIB IS NULL THEN NULL 
ELSE SAFE_CAST(URXMIB AS FLOAT64) 
 END as mono_isobutyl_phthalate, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMIBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMIBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMIBLC AS STRING) 
 END as mono_isobutyl_phthalate_comment_code, 

CASE
    WHEN URXMHNC IS NULL THEN NULL 
ELSE SAFE_CAST(URXMHNC AS FLOAT64) 
 END as mhnc_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMCHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMCHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMCHLC AS STRING) 
 END as mhnc_comment_code, 

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
 FROM {{ ref('stg_phthalates_plasticizers_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PHTHTE_G.htm
*/
