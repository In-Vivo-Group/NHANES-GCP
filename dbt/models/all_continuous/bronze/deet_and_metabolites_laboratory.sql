SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_subsample_c_weights, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN URXDEE IS NULL THEN NULL 
ELSE SAFE_CAST(URXDEE AS FLOAT64) 
 END as deet_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDEELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDEELC AS STRING) 
 END as deet_comment_code, 

CASE
WHEN URXDEA IS NULL THEN NULL 
ELSE SAFE_CAST(URXDEA AS FLOAT64) 
 END as deet_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDEALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDEALC AS STRING) 
 END as deet_acid_comment_code, 

CASE
WHEN URXDHD IS NULL THEN NULL 
ELSE SAFE_CAST(URXDHD AS FLOAT64) 
 END as desethyl_hydroxy_deet_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDHDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDHDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDHDLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDHDLC AS STRING) 
 END as desethyl_hydroxy_deet_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_deet_and_metabolites_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEET_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEET_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DEET_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DEET_E.htm
*/
