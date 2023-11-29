SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXEPP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEPP AS FLOAT64) 
 END as protoporphyrin_ug_dl_rbc, 

CASE
WHEN LBDEPPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDEPPSI AS FLOAT64) 
 END as protoporphyrin_umol_l_rbc, 

CASE
WHEN LBXSEL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSEL AS FLOAT64) 
 END as selenium_ug_l, 

CASE
WHEN LBDSELSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSELSI AS FLOAT64) 
 END as selenium_umol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_erythrocyte_protoporphyrin_selenium_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L39EPP_C.htm
*/
