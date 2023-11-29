SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as two_year_b_subsample_weights, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine, 

CASE
WHEN URX4TO IS NULL THEN NULL 
ELSE SAFE_CAST(URX4TO AS FLOAT64) 
 END as urinary_4_tert_octylphenol_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4TOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4TOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD4TOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4TOLC AS STRING) 
 END as urinary_4_tert_octylphenol_comment, 

CASE
WHEN URXBP3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXBP3 AS FLOAT64) 
 END as urinary_benzophenone_3_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBP3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBP3LC AS STRING) 
 END as urinary_benzophenone_3_comment, 

CASE
WHEN URXBPH IS NULL THEN NULL 
ELSE SAFE_CAST(URXBPH AS FLOAT64) 
 END as urinary_bisphenol_a_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBPHLC AS STRING) 
 END as urinary_bisphenol_a_comment_code, 

CASE
WHEN URXTRS IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRS AS FLOAT64) 
 END as urinary_triclosan_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTRSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTRSLC AS STRING) 
 END as urinary_triclosan_comment, 

CASE
WHEN URXBUP IS NULL THEN NULL 
ELSE SAFE_CAST(URXBUP AS FLOAT64) 
 END as butyl_paraben_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBUPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBUPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBUPLC AS STRING) 
 END as butyl_paraben_comment, 

CASE
WHEN URXEPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXEPB AS FLOAT64) 
 END as ethyl_paraben_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDEPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDEPBLC AS STRING) 
 END as ethyl_paraben_comment, 

CASE
WHEN URXMPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXMPB AS FLOAT64) 
 END as methyl_paraben_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMPBLC AS STRING) 
 END as methyl_paraben_comment, 

CASE
WHEN URXPPB IS NULL THEN NULL 
ELSE SAFE_CAST(URXPPB AS FLOAT64) 
 END as propyl_paraben_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPPBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPPBLC AS STRING) 
 END as propyl_paraben_comment, 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_c, 

CASE
WHEN URDTRS IS NULL THEN NULL 
ELSE SAFE_CAST(URDTRS AS FLOAT64) 
 END as urinary_triclosan_ng_ml_URDTRS, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_environmental_phenols_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/EPH_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/EPH_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L24EPH_C.htm
*/
