SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHBC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXHBC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHBC AS STRING) 
 END as hepatitis_b_core_antibody_anti_hbc, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHBG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHBG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDHBG IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHBG AS STRING) 
 END as hepatitis_b_surface_antigen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDHD IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHD AS STRING) 
 END as hepatitis_d_anti_hdv, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_b_core_antibody_surface_antigen_hepatitis_d_antibody_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HEPBD_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HEPBD_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HEPBD_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HEPBD_D.htm
*/
