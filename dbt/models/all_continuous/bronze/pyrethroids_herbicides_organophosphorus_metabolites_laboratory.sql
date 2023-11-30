SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as environmental_subsample_b_weights, 

CASE
    WHEN URX24D IS NULL THEN NULL 
ELSE SAFE_CAST(URX24D AS FLOAT64) 
 END as lab_2_4_d_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD24DLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD24DLC AS STRING) 
 END as lab_2_4_d_comment_code, 

CASE
    WHEN URXCPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXCPM AS FLOAT64) 
 END as lab_3_5_6_trichloropyridinol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCPMLC AS STRING) 
 END as lab_3_5_6_trichloropyridinol_comment_code, 

CASE
    WHEN URX4FP IS NULL THEN NULL 
ELSE SAFE_CAST(URX4FP AS FLOAT64) 
 END as lab_4_fluoro_3_phenoxy_benzoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD4FPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4FPLC AS STRING) 
 END as lab_4_fluoro_3_phenoxy_benzoic_acid_cmt_code, 

CASE
    WHEN URXOPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXOPM AS FLOAT64) 
 END as lab_3_phenoxybenzoic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOPMLC AS STRING) 
 END as lab_3_phenoxybenzoic_acid_comment_code, 

CASE
    WHEN URXOXY IS NULL THEN NULL 
ELSE SAFE_CAST(URXOXY AS FLOAT64) 
 END as oxypyrimidine_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOXYLC AS STRING) 
 END as oxypyrimidine_comment_code, 

CASE
    WHEN URXPAR IS NULL THEN NULL 
ELSE SAFE_CAST(URXPAR AS FLOAT64) 
 END as para_nitrophenol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPARLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPARLC AS STRING) 
 END as para_nitrophenol_comment_code, 

CASE
    WHEN URXTCC IS NULL THEN NULL 
ELSE SAFE_CAST(URXTCC AS FLOAT64) 
 END as dichlorovnl_dimeth_prop_carboacid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTCCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTCCLC AS STRING) 
 END as dichlorovnl_dimeth_prop_carboacid_code, 

CASE
    WHEN URXMAL IS NULL THEN NULL 
ELSE SAFE_CAST(URXMAL AS FLOAT64) 
 END as malathion_diacid, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMALLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMALLC AS STRING) 
 END as malathion_diacid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pyrethroids_herbicides_organophosphorus_metabolites_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UPHOPM_I.htm
*/
