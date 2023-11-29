SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXHBC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHBC AS STRING) 
 END as hepatitis_b_core_antibody, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHBG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHBG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDHBG IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHBG AS STRING) 
 END as hepatitis_b_surface_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHCV IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCV AS STRING) 
 END as hepatitis_c_antibody_confirmed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDHD IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHD AS STRING) 
 END as hepatitis_d_anti_hdv, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXHCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCR AS STRING) 
 END as hepatitis_c_rna_hcv_rna, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_b_core_antibody_surface_antigen_hepatitis_c_confirmed_antibody_rna_hcv_rna_hepatitis_d_antibody_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L02_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L02_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB02.htm
*/
