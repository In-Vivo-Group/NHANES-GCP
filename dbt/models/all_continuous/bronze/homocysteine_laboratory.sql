SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXHCY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCY AS FLOAT64) 
 END as homocysteine_umol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_homocysteine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HCY_D.htm
*/
