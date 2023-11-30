SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URXAAC IS NULL THEN NULL 
ELSE SAFE_CAST(URXAAC AS FLOAT64) 
 END as a_a_c_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDAACLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAACLC AS STRING) 
 END as a_a_c_pg_ml_comment_code, 

CASE
    WHEN URXGLP1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXGLP1 AS FLOAT64) 
 END as glu_p_1_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDGP1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDGP1LC AS STRING) 
 END as glu_p_1_pg_ml_comment_code, 

CASE
    WHEN URXGLP2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXGLP2 AS FLOAT64) 
 END as glu_p_2_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDGP2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDGP2LC AS STRING) 
 END as glu_p_2_pg_ml_comment_code, 

CASE
    WHEN URXHM IS NULL THEN NULL 
ELSE SAFE_CAST(URXHM AS FLOAT64) 
 END as harman_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDHMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHMLC AS STRING) 
 END as harman_pg_ml_comment_code, 

CASE
    WHEN URXIQ IS NULL THEN NULL 
ELSE SAFE_CAST(URXIQ AS FLOAT64) 
 END as iq_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDIQLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDIQLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDIQLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDIQLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDIQLC AS STRING) 
 END as iq_pg_ml_comment_code, 

CASE
    WHEN URXMAAC IS NULL THEN NULL 
ELSE SAFE_CAST(URXMAAC AS FLOAT64) 
 END as mea_a_c_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDMACLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMACLC AS STRING) 
 END as mea_a_c_pg_ml_comment_code, 

CASE
    WHEN URXNHM IS NULL THEN NULL 
ELSE SAFE_CAST(URXNHM AS FLOAT64) 
 END as norharman_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNHMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDNHMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNHMLC AS STRING) 
 END as norharman_pg_ml_comment_code, 

CASE
    WHEN URXPHIP IS NULL THEN NULL 
ELSE SAFE_CAST(URXPHIP AS FLOAT64) 
 END as phlp_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDPHPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPHPLC AS STRING) 
 END as phlp_pg_ml_comment_code, 

CASE
    WHEN URXTRP1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRP1 AS FLOAT64) 
 END as trp_p_1_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDTP1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTP1LC AS STRING) 
 END as trp_p_1_pg_ml_comment_code, 

CASE
    WHEN URXTRP2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRP2 AS FLOAT64) 
 END as trp_p_2_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN URDTP2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTP2LC AS STRING) 
 END as trp_p_2_pg_ml_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_heterocyclic_aromatic_amines_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HCAA_H.htm
*/
