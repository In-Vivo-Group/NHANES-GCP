SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBDRBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRBF AS FLOAT64) 
 END as rbc_folate_ng_ml, 

CASE
    WHEN LBXRBFSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRBFSI AS FLOAT64) 
 END as rbc_folate_nmol_l, 

CASE
    WHEN LBDFOL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFOL AS FLOAT64) 
 END as serum_folate_ng_ml, 

CASE
    WHEN LBXFOLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFOLSI AS FLOAT64) 
 END as serum_folate_nmol_l, 

CASE
    WHEN LBXRBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRBF AS FLOAT64) 
 END as folate_rbc_ng_ml_rbc, 

CASE
    WHEN LBDRBFSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRBFSI AS FLOAT64) 
 END as folate_rbc_nmol_l_rbc, 

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
 FROM {{ ref('stg_folate_rbc_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/FOLATE_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/FOLATE_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/FOLATE_D.htm
*/
