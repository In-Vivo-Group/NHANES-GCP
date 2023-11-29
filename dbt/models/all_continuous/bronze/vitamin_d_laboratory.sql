SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXVIDMS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVIDMS AS FLOAT64) 
 END as lab_25ohd2_25ohd3_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVIDLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVIDLC AS STRING) 
 END as lab_25ohd2_25ohd3_comment_code, 

CASE
WHEN LBXVD2MS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVD2MS AS FLOAT64) 
 END as lab_25ohd2_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVD2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVD2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVD2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVD2LC AS STRING) 
 END as lab_25ohd2_comment_code, 

CASE
WHEN LBXVD3MS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVD3MS AS FLOAT64) 
 END as lab_25ohd3_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVD3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVD3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVD3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVD3LC AS STRING) 
 END as lab_25ohd3_comment_code, 

CASE
WHEN LBXVE3MS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVE3MS AS FLOAT64) 
 END as epi_25ohd3_nmol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVE3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVE3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVE3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVE3LC AS STRING) 
 END as epi_25ohd3_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_vitamin_d_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/VID_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/VID_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/VID_G.htm
*/
