SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URX4TDA IS NULL THEN NULL 
ELSE SAFE_CAST(URX4TDA AS FLOAT64) 
 END as lab_2_4_diaminotoluene_4tda_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4DALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4DALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD4DALC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4DALC AS STRING) 
 END as lab_2_4_diaminotoluene_4tda_comment_code, 

CASE
    WHEN URX6TDA IS NULL THEN NULL 
ELSE SAFE_CAST(URX6TDA AS FLOAT64) 
 END as lab_2_6_diaminotoluene_6tda_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD6DALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD6DALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD6DALC IS NULL THEN NULL 
ELSE SAFE_CAST(URD6DALC AS STRING) 
 END as lab_2_6_diaminotoluene_6tda_comment_code, 

CASE
    WHEN URX4MDA IS NULL THEN NULL 
ELSE SAFE_CAST(URX4MDA AS FLOAT64) 
 END as lab_4mda_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4MALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4MALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD4MALC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4MALC AS STRING) 
 END as lab_4mda_comment_code, 

CASE
    WHEN URX5NDA IS NULL THEN NULL 
ELSE SAFE_CAST(URX5NDA AS FLOAT64) 
 END as lab_1_5_diaminonaphthalene_5nda_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD5NALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD5NALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD5NALC IS NULL THEN NULL 
ELSE SAFE_CAST(URD5NALC AS STRING) 
 END as lab_5nda_comment_code, 

CASE
    WHEN URXPPDA IS NULL THEN NULL 
ELSE SAFE_CAST(URXPPDA AS FLOAT64) 
 END as p_phenylenediamine_ppda_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPDALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPDALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPDALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPDALC AS STRING) 
 END as p_phenylenediamine_ppda_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_aromatic_diamines_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UADM_I.htm
*/
