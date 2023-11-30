SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBDB12 IS NOT NULL THEN SAFE_CAST(LBDB12 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDB12 IS NULL THEN NULL 
ELSE SAFE_CAST(LBDB12 AS FLOAT64) 
 END as vitamin_b12_pg_ml, 

CASE
    WHEN LBDB12SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDB12SI AS FLOAT64) 
 END as vitamin_b12_pmol_l, 

CASE
    WHEN LBXB12 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXB12 AS FLOAT64) 
 END as vitamin_b12_pg_ml_LBXB12, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_vitamin_b12_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/VITB12_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/VITB12_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/B12_D.htm
*/
