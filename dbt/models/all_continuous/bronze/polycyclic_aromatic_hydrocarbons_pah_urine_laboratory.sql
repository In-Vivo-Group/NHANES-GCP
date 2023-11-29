SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URXP01 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP01 AS FLOAT64) 
 END as lab_1_hydroxynaphthalene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP01LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP01LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP01LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP01LC AS STRING) 
 END as lab_1_hydroxynaphthalene_comment_code, 

CASE
    WHEN URXP02 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP02 AS FLOAT64) 
 END as lab_2_hydroxynaphthalene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP02LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP02LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below lower detection limit' -- categorize numeric values
WHEN URDP02LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP02LC AS STRING) 
 END as lab_2_hydroxynaphthalene_comment_code, 

CASE
    WHEN URXP03 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP03 AS FLOAT64) 
 END as lab_3_hydroxyfluorene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP03LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP03LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP03LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP03LC AS STRING) 
 END as lab_3_hydroxyfluorene_comment_code, 

CASE
    WHEN URXP04 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP04 AS FLOAT64) 
 END as lab_2_hydroxyfluorene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP04LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP04LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP04LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP04LC AS STRING) 
 END as lab_2_hydroxyfluorene_comment_code, 

CASE
    WHEN URXP06 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP06 AS FLOAT64) 
 END as lab_1_hydroxyphenanthrene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP06LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP06LC AS STRING) 
 END as lab_1_hydroxyphenanthrene_comment_code, 

CASE
    WHEN URXP10 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP10 AS FLOAT64) 
 END as lab_1_hydroxypyrene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP10LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP10LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP10LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP10LC AS STRING) 
 END as lab_1_hydroxypyrene_comment_code, 

CASE
    WHEN URXP25 IS NULL THEN NULL 
ELSE SAFE_CAST(URXP25 AS FLOAT64) 
 END as lab_2_3_hydroxyphenanthrene_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP25LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDP25LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDP25LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDP25LC AS STRING) 
 END as lab_2_3_hydroxyphenanthrene_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_polycyclic_aromatic_hydrocarbons_pah_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PAH_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAH_H.htm
*/
