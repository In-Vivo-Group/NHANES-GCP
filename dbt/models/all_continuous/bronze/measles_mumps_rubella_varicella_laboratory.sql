SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXMEA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMEA AS FLOAT64) 
 END as measles_antibody_igg, 

CASE
    WHEN LBXMUM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMUM AS FLOAT64) 
 END as mumps_antibody_igg, 

CASE
    WHEN LBXRUB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRUB AS FLOAT64) 
 END as rubella_antibody_igg, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVWCGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVWCGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBDVWCGP IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVWCGP AS STRING) 
 END as varicella_antibody_confirmed, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_measles_mumps_rubella_varicella_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/MMRV_F.htm
*/
