SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSSCB2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCB2Y AS FLOAT64) 
 END as cardiac_biomarkers_2_year_weights, 

CASE
    WHEN WTSSCB4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSCB4Y AS FLOAT64) 
 END as cardiac_biomarker_4_yr_weights_1999_2002, 

CASE
    WHEN SSB2M IS NULL THEN NULL 
ELSE SAFE_CAST(SSB2M AS FLOAT64) 
 END as beta_2_microglobulin_mg_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSB2ML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Within the detection limits' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSB2ML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSB2ML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSB2ML IS NULL THEN NULL 
ELSE SAFE_CAST(SSB2ML AS STRING) 
 END as beta_2_microglobulin_comment_code, 

CASE
    WHEN SSCYST IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYST AS FLOAT64) 
 END as cystatin_c_mg_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCYSTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Within the detection limits' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCYSTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCYSTL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSCYSTL IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYSTL AS STRING) 
 END as cystatin_c_comment_code, 

CASE
    WHEN SSGALB IS NULL THEN NULL 
ELSE SAFE_CAST(SSGALB AS FLOAT64) 
 END as glycated_albumin_g_dl, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Within the detection limits' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSGALBL IS NULL THEN NULL 
ELSE SAFE_CAST(SSGALBL AS STRING) 
 END as glycated_albumin_comment_code, 

CASE
    WHEN SSALB IS NULL THEN NULL 
ELSE SAFE_CAST(SSALB AS FLOAT64) 
 END as albumin_g_dl, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Within the detection limits' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSALBL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN SSALBL IS NULL THEN NULL 
ELSE SAFE_CAST(SSALBL AS STRING) 
 END as albumin_comment_code, 

CASE
    WHEN SSGALBP IS NULL THEN NULL 
ELSE SAFE_CAST(SSGALBP AS FLOAT64) 
 END as percent_glycated_albumin, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRIS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Non-Pristine' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRIS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Pristine' -- categorize numeric values
WHEN SSPRIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPRIS AS STRING) 
 END as pristine_sample, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_glycated_albumin_beta_2_microglobulin_cystatin_c_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSCARD_A.htm
*/
