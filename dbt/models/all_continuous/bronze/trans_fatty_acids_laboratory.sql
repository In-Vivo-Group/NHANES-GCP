SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTTFA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTTFA2YR AS FLOAT64) 
 END as trans_fatty_acid_subsample_2_year_weight, 

CASE
    WHEN LBXHDT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHDT AS FLOAT64) 
 END as trans_9_hexadecenoic_acid_umol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHDTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHDTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHDTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHDTLC AS STRING) 
 END as trans_9_hexadecenoic_acid_comment_code, 

CASE
    WHEN LBXOD1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXOD1 AS FLOAT64) 
 END as trans_11_octadecenoic_acid_umol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOD1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOD1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDOD1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDOD1LC AS STRING) 
 END as trans_11_octadecenoic_acid_comment_code, 

CASE
    WHEN LBXOD9 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXOD9 AS FLOAT64) 
 END as trans_9_octadecenoic_acid_umol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOD9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOD9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDOD9LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDOD9LC AS STRING) 
 END as trans_9_octadecenoic_acid_comment_code, 

CASE
    WHEN LBXOTT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXOTT AS FLOAT64) 
 END as trans_trans_9_12_octadecadienoic_umol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOTTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOTTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDOTTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDOTTLC AS STRING) 
 END as trans_trans_9_12_octadecadienoic_comt, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_trans_fatty_acids_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/TFA_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/TFA_A.htm
*/
