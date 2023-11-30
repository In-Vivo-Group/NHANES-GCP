SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSTFR IS NULL THEN NULL 
ELSE SAFE_CAST(SSTFR AS FLOAT64) 
 END as serum_transferrin_receptor_mg_l, 

CASE
    WHEN SSFER IS NULL THEN NULL 
ELSE SAFE_CAST(SSFER AS FLOAT64) 
 END as serum_ferritin_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_transferrin_receptor_pregnant_women_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSTFR_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSTFR_A.htm
*/
