SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXHCY IS NULL THEN NULL 
WHEN LBXHCY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCY AS FLOAT64) 
 END as homocysteine_umol_l, 

CASE
    WHEN LBXMMA IS NULL THEN NULL 
WHEN LBXMMA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMMA AS FLOAT64) 
 END as methylmalonic_acid_umol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_methylmalonic_acid_homocysteine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06MH_C.htm
*/
