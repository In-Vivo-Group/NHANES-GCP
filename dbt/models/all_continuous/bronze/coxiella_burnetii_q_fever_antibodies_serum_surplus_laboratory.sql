SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(ELISA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ELISA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ELISA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Equivocal' -- categorize numeric values
WHEN ELISA IS NULL THEN NULL 
ELSE SAFE_CAST(ELISA AS STRING) 
 END as elisa_result_interpretation, 

CASE
    WHEN PHASE1 IS NULL THEN NULL 
ELSE SAFE_CAST(PHASE1 AS FLOAT64) 
 END as phase_i_ifa_titer_igg, 

CASE
    WHEN PHASE2 IS NULL THEN NULL 
ELSE SAFE_CAST(PHASE2 AS FLOAT64) 
 END as phase_ii_ifa_titer_igg, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSQFEVER AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSQFEVER AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SSQFEVER IS NULL THEN NULL 
ELSE SAFE_CAST(SSQFEVER AS STRING) 
 END as antibody_to_q_fever, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_coxiella_burnetii_q_fever_antibodies_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSQFEV_C.htm
*/
