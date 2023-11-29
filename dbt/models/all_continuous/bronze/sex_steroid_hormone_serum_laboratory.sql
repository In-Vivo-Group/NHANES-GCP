SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXTST IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTST AS FLOAT64) 
 END as testosterone_total_ng_dl, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDTSTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTSTLC AS STRING) 
 END as testosterone_comment_code, 

CASE
    WHEN LBXEST IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEST AS FLOAT64) 
 END as estradiol_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDESTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDESTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDESTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDESTLC AS STRING) 
 END as estradiol_comment_code, 

CASE
    WHEN LBXSHBG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSHBG AS FLOAT64) 
 END as shbg_nmol_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDSHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSHGLC AS STRING) 
 END as shbg_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_sex_steroid_hormone_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/TST_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TST_H.htm
*/
