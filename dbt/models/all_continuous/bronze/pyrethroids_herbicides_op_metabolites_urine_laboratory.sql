SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_c, 

CASE
WHEN URX24D IS NULL THEN NULL 
ELSE SAFE_CAST(URX24D AS FLOAT64) 
 END as lab_2_4_d_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD24DLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD24DLC AS STRING) 
 END as lab_2_4_d_comment_code, 

CASE
WHEN URX25T IS NULL THEN NULL 
ELSE SAFE_CAST(URX25T AS FLOAT64) 
 END as lab_2_4_5_trichlorophenoxyacetic_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD25TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD25TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD25TLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD25TLC AS STRING) 
 END as lab_2_4_5_trichlorophenoxyacetic_acid_comt, 

CASE
WHEN URX4FP IS NULL THEN NULL 
ELSE SAFE_CAST(URX4FP AS FLOAT64) 
 END as lab_4_fluoro_3_phenoxybenzoic_ug_l_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD4FPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4FPLC AS STRING) 
 END as fluoro_phenoxybenzoic_acid_code, 

CASE
WHEN URXCB3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXCB3 AS FLOAT64) 
 END as dibromovinyl_dimeth_prop_carboacid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCB3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCB3LC AS STRING) 
 END as dibromovinyl_dimeth_prop_carboacid_code, 

CASE
WHEN URXCPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXCPM AS FLOAT64) 
 END as lab_3_5_6_trichloropyridinol_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCPMLC AS STRING) 
 END as lab_3_5_6_trichloropyridinol_comment_code, 

CASE
WHEN URXMAL IS NULL THEN NULL 
ELSE SAFE_CAST(URXMAL AS FLOAT64) 
 END as malathion_diacid_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMALLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMALLC AS STRING) 
 END as malathion_diacid_comment_code, 

CASE
WHEN URXOPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXOPM AS FLOAT64) 
 END as lab_3_phenoxybenzoic_ug_l_acid_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOPMLC AS STRING) 
 END as lab_3_phenoxybenzoic_acid_comment_code, 

CASE
WHEN URXOXY IS NULL THEN NULL 
ELSE SAFE_CAST(URXOXY AS FLOAT64) 
 END as oxypyrimidine_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOXYLC AS STRING) 
 END as oxypyrimidine_comment_code, 

CASE
WHEN URXPAR IS NULL THEN NULL 
ELSE SAFE_CAST(URXPAR AS FLOAT64) 
 END as paranitrophenol_ug_l_result, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPARLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPARLC AS STRING) 
 END as paranitrophenol_comment_code, 

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
 FROM {{ ref('stg_pyrethroids_herbicides_op_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UPHOPM_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UPHOPM_E.htm
*/
