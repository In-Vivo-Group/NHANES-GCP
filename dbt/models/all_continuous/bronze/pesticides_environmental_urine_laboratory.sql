SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
    WHEN URX14D IS NULL THEN NULL 
ELSE SAFE_CAST(URX14D AS FLOAT64) 
 END as lab_2_5_dichlorophenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD14DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD14DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD14DLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD14DLC AS STRING) 
 END as lab_2_5_dichlorophenol_comment, 

CASE
    WHEN URXDCB IS NULL THEN NULL 
ELSE SAFE_CAST(URXDCB AS FLOAT64) 
 END as lab_2_4_dichlorophenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDCBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDCBLC AS STRING) 
 END as lab_2_4_dichlorophenol_comment, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine_mg_dl, 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as environmental_b_2_year_weights, 

CASE
    WHEN URXOPP IS NULL THEN NULL 
ELSE SAFE_CAST(URXOPP AS FLOAT64) 
 END as o_phenyl_phenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOPPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOPPLC AS STRING) 
 END as o_phenyl_phenol_comment, 

CASE
    WHEN URX1TB IS NULL THEN NULL 
ELSE SAFE_CAST(URX1TB AS FLOAT64) 
 END as lab_2_4_5_trichlorophenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1TBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1TBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD1TBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD1TBLC AS STRING) 
 END as lab_2_4_5_trichlorophenol_comment, 

CASE
    WHEN URX3TB IS NULL THEN NULL 
ELSE SAFE_CAST(URX3TB AS FLOAT64) 
 END as lab_2_4_6_trichlorophenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD3TBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD3TBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD3TBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD3TBLC AS STRING) 
 END as lab_2_4_6_trichlorophenol_comment, 

CASE
    WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_c_2_year_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pesticides_environmental_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PP_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PP_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PP_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PP_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L24PP_C.htm
*/
