SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URX1NP IS NULL THEN NULL 
ELSE SAFE_CAST(URX1NP AS FLOAT64) 
 END as lab_1_aminonaphthalene_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URD1NPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD1NPLC AS STRING) 
 END as lab_1_aminonaphthalene_urine_comment_code, 

CASE
    WHEN URX2NP IS NULL THEN NULL 
ELSE SAFE_CAST(URX2NP AS FLOAT64) 
 END as lab_2_aminonaphthalene_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2NPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URD2NPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD2NPLC AS STRING) 
 END as lab_2_aminonaphthalene_urine_comment_code, 

CASE
    WHEN URX4BP IS NULL THEN NULL 
ELSE SAFE_CAST(URX4BP AS FLOAT64) 
 END as lab_4_aminobiphenyl_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4BPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4BPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4BPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URD4BPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4BPLC AS STRING) 
 END as lab_4_aminobiphenyl_urine_comment_code, 

CASE
    WHEN URXANS IS NULL THEN NULL 
ELSE SAFE_CAST(URXANS AS FLOAT64) 
 END as o_anisidine_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDANSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDANSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDANSLC AS STRING) 
 END as o_anisidine_urine_comment_code, 

CASE
    WHEN URXDMN IS NULL THEN NULL 
ELSE SAFE_CAST(URXDMN AS FLOAT64) 
 END as lab_2_6_dimethylaniline_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDMNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDDMNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDMNLC AS STRING) 
 END as lab_2_6_dimethylaniline_urine_comment_code, 

CASE
    WHEN URXOTD IS NULL THEN NULL 
ELSE SAFE_CAST(URXOTD AS FLOAT64) 
 END as o_toluidine_urine_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOTDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOTDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOTDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDOTDLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOTDLC AS STRING) 
 END as o_toluidine_urine_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_aromatic_amines_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/AA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HCAA_H.htm
*/
