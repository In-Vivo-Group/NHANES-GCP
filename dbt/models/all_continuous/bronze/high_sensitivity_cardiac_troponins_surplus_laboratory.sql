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
    WHEN SSTNT IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNT AS FLOAT64) 
 END as cardiac_hs_troponin_t_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Measurable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Unblinded' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Imputed' -- categorize numeric values
WHEN SSTNTLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNTLC AS STRING) 
 END as cardiac_hs_troponin_t_comment_code, 

CASE
    WHEN SSTNIA IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNIA AS FLOAT64) 
 END as cardiac_hs_troponin_i_abbott_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNIALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Greater than or equal to the LoD' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNIALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than the LoD' -- categorize numeric values
WHEN SSTNIALC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNIALC AS STRING) 
 END as cardiac_hs_troponin_i_abbott_comt, 

CASE
    WHEN SSTNIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNIS AS FLOAT64) 
 END as cardiac_hs_troponin_i_siemens_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNISLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Measurable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNISLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Unblinded' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNISLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Imputed' -- categorize numeric values
WHEN SSTNISLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNISLC AS STRING) 
 END as cardiac_hs_troponin_i_siemens_comt, 

CASE
    WHEN SSTNIO IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNIO AS FLOAT64) 
 END as cardiac_hs_troponin_i_ortho_ng_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNIOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Measurable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNIOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Unblinded' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSTNIOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Imputed' -- categorize numeric values
WHEN SSTNIOLC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTNIOLC AS STRING) 
 END as cardiac_hs_troponin_i_ortho_comt, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRISTP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Non-Pristine' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPRISTP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Pristine' -- categorize numeric values
WHEN SSPRISTP IS NULL THEN NULL 
ELSE SAFE_CAST(SSPRISTP AS STRING) 
 END as pristine_sample_comment_for_sstrop_a, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_high_sensitivity_cardiac_troponins_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSTROP_A.htm
*/
