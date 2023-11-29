SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSBPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSBPRP AS FLOAT64) 
 END as subsample_b_weights_pre_pandemic, 

CASE
WHEN URXBCPP IS NULL THEN NULL 
ELSE SAFE_CAST(URXBCPP AS FLOAT64) 
 END as bis_1_chloro_2_propyl_phosphate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBCPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBCPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBCPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBCPLC AS STRING) 
 END as bis_1_chloro_2_propyl_phosphate_comt, 

CASE
WHEN URXBCEP IS NULL THEN NULL 
ELSE SAFE_CAST(URXBCEP AS FLOAT64) 
 END as bis_2_chloroethyl_phosphate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCEPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCEPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCEPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCEPLC AS STRING) 
 END as bis_2_chloroethyl_phosphate_comt_code, 

CASE
WHEN URXBDCP IS NULL THEN NULL 
ELSE SAFE_CAST(URXBDCP AS FLOAT64) 
 END as bis_1_3_dichloro_2_propyl_phosphate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBDCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBDCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBDCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBDCLC AS STRING) 
 END as bis_1_3_dichloro_2_propyl_phosph_comt, 

CASE
WHEN URXDBUP IS NULL THEN NULL 
ELSE SAFE_CAST(URXDBUP AS FLOAT64) 
 END as dibutyl_phosphate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDUPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDUPLC AS STRING) 
 END as dibutyl_phosphate_comment_code, 

CASE
WHEN URXDPHP IS NULL THEN NULL 
ELSE SAFE_CAST(URXDPHP AS FLOAT64) 
 END as diphenyl_phosphate, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDPHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDPHLC AS STRING) 
 END as diphenyl_phosphate_comment_code, 

CASE
WHEN URXTBBA IS NULL THEN NULL 
ELSE SAFE_CAST(URXTBBA AS FLOAT64) 
 END as lab_2_3_4_5_tetrabromobenzoic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBBALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBBALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBBALC AS STRING) 
 END as lab_2_3_4_5_tetrabromobenzoic_acid_comt_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_flame_retardants_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FR.htm
*/
