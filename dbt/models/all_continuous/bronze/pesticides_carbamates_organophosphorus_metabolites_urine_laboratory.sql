SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_c_2_year_weights, 

CASE
    WHEN URXAPE IS NULL THEN NULL 
ELSE SAFE_CAST(URXAPE AS FLOAT64) 
 END as acephate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAPELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAPELC AS STRING) 
 END as acephate_comment_code, 

CASE
    WHEN URXETU IS NULL THEN NULL 
ELSE SAFE_CAST(URXETU AS FLOAT64) 
 END as ethylenethio_urea_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDETULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDETULC AS STRING) 
 END as ethylenethio_urea_comment_code, 

CASE
    WHEN URXMMI IS NULL THEN NULL 
ELSE SAFE_CAST(URXMMI AS FLOAT64) 
 END as methamidaphos_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMMILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMMILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMMILC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMMILC AS STRING) 
 END as methamidaphos_comment_code, 

CASE
    WHEN URXMTO IS NULL THEN NULL 
ELSE SAFE_CAST(URXMTO AS FLOAT64) 
 END as dimethoate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMTOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMTOLC AS STRING) 
 END as dimethoate_comment_code, 

CASE
    WHEN URXOMO IS NULL THEN NULL 
ELSE SAFE_CAST(URXOMO AS FLOAT64) 
 END as o_methoate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOMOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOMOLC AS STRING) 
 END as o_methoate_comment_code, 

CASE
    WHEN URXPTU IS NULL THEN NULL 
ELSE SAFE_CAST(URXPTU AS FLOAT64) 
 END as propylenethio_urea_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPTULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPTULC AS STRING) 
 END as propylenethio_urea_comment_code, 

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
 FROM {{ ref('stg_pesticides_carbamates_organophosphorus_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/CARB_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/CARB_D.htm
*/
