SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXFER IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFER AS FLOAT64) 
 END as ferritin_ng_ml, 

CASE
WHEN LBDFERSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFERSI AS FLOAT64) 
 END as ferritin_ug_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_ferritin_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FERTIN.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/FERTIN_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/FERTIN_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/FERTIN_D.htm
*/
