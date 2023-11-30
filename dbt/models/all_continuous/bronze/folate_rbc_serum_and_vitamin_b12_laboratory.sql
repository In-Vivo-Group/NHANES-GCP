SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXRBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRBF AS FLOAT64) 
 END as folate_rbc_ng_ml_rbc, 

CASE
    WHEN LBDRBFSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRBFSI AS FLOAT64) 
 END as folate_rbc_nmol_l_rbc, 

CASE
    WHEN LBXB12 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXB12 AS FLOAT64) 
 END as vitamin_b12_serum_pg_ml, 

CASE
    WHEN LBDB12SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDB12SI AS FLOAT64) 
 END as vitamin_b12_serum_pmol_l, 

CASE
    WHEN LBXFOL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFOL AS FLOAT64) 
 END as folate_serum_ng_ml, 

CASE
    WHEN LBDFOLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFOLSI AS FLOAT64) 
 END as folate_serum_nmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_folate_rbc_serum_and_vitamin_b12_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06NB_C.htm
*/
