SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSCL2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCL2Y AS FLOAT64) 
 END as surplus_specimen_clty_15_16_2_yr_weights, 

CASE
    WHEN SSCL1Y IS NULL THEN NULL 
ELSE SAFE_CAST(SSCL1Y AS FLOAT64) 
 END as lab_3_chlorotyrosine_cl_tyr_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCL1YL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCL1YL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCL1YL IS NULL THEN NULL 
ELSE SAFE_CAST(SSCL1YL AS STRING) 
 END as lab_3_chlorotyrosine_cl_tyr_comment_code, 

CASE
    WHEN SSCL2Y IS NULL THEN NULL 
ELSE SAFE_CAST(SSCL2Y AS FLOAT64) 
 END as lab_3_5_dichlorotyrosine_cl2_tyr_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCL2YL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCL2YL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCL2YL IS NULL THEN NULL 
ELSE SAFE_CAST(SSCL2YL AS STRING) 
 END as lab_3_5_dichlorotyrosine_cl2_tyr_comt_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_chlorinated_tyrosine_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SSCLTY_I.htm
*/
