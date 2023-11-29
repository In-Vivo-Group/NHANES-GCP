SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLA AS FLOAT64) 
 END as latex_iu_ml, 

CASE
WHEN LBXLACL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLACL AS FLOAT64) 
 END as latex_class, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_latex_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB07.htm
*/
