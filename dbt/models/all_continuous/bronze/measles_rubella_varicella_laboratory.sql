SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXME AS FLOAT64) 
 END as measles, 

CASE
    WHEN LBDRUIU IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRUIU AS FLOAT64) 
 END as rubella_international_units, 

CASE
    WHEN LBXVAR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVAR AS FLOAT64) 
 END as varicella, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_measles_rubella_varicella_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L19_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L19_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB19.htm
*/
