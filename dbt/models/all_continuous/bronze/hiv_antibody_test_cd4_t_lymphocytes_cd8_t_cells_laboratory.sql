SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHI AS STRING) 
 END as hiv_antibody_test_result, 

CASE
WHEN LBXCD4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCD4 AS FLOAT64) 
 END as cd4_counts_cells_mm3, 

CASE
WHEN LBXCD8 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCD8 AS FLOAT64) 
 END as cd8_counts_cells_mm3, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hiv_antibody_test_cd4_t_lymphocytes_cd8_t_cells_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HIV_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L03_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L03_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB03.htm
*/
