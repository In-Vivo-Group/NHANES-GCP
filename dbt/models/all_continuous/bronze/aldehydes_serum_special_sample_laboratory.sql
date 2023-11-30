SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTALDS2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTALDS2Y AS FLOAT64) 
 END as two_year_aldehyde_smoking_weights, 

CASE
    WHEN LBXBZAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBZAL AS FLOAT64) 
 END as benzaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDBZLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBZLC AS STRING) 
 END as benzaldehyde_comment_code, 

CASE
    WHEN LBX4AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX4AL AS FLOAT64) 
 END as butyraldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD4ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD4ALC AS STRING) 
 END as butyraldehyde_comment_code, 

CASE
    WHEN LBXCRAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCRAL AS FLOAT64) 
 END as crotonaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDCRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDCRLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDCRLC AS STRING) 
 END as crotonaldehyde_comment_code, 

CASE
    WHEN LBX10AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX10AL AS FLOAT64) 
 END as decanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD10ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD10ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD10ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD10ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD10ALC AS STRING) 
 END as decanaldehyde_comment_code, 

CASE
    WHEN LBX7AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX7AL AS FLOAT64) 
 END as heptanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD7ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD7ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD7ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD7ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD7ALC AS STRING) 
 END as heptanaldehyde_comment_code, 

CASE
    WHEN LBX6AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX6AL AS FLOAT64) 
 END as hexanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD6ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD6ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD6ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD6ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD6ALC AS STRING) 
 END as hexanaldehyde_comment_code, 

CASE
    WHEN LBXI5AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXI5AL AS FLOAT64) 
 END as isopentanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDI5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDI5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDI5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDI5ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDI5ALC AS STRING) 
 END as isopentanaldehyde_comment_code, 

CASE
    WHEN LBX9AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX9AL AS FLOAT64) 
 END as nonanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD9ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD9ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD9ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD9ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD9ALC AS STRING) 
 END as nonanaldehyde_comment_code, 

CASE
    WHEN LBX8AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX8AL AS FLOAT64) 
 END as octanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD8ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD8ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD8ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD8ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD8ALC AS STRING) 
 END as octanaldehyde_comment_code, 

CASE
    WHEN LBXTLAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTLAL AS FLOAT64) 
 END as o_tolualdehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTLALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTLALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTLALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDTLALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTLALC AS STRING) 
 END as o_tolualdehyde_comment_code, 

CASE
    WHEN LBX5AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX5AL AS FLOAT64) 
 END as pentanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD5ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD5ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD5ALC AS STRING) 
 END as pentanaldehyde_comment_code, 

CASE
    WHEN LBX3AL IS NULL THEN NULL 
ELSE SAFE_CAST(LBX3AL AS FLOAT64) 
 END as propanaldehyde_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD3ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD3ALC AS STRING) 
 END as propanaldehyde_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_aldehydes_serum_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ALDS_H.htm
*/
