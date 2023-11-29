SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXCRP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCRP AS FLOAT64) 
 END as c_reactive_protein_mg_dl, 

CASE
WHEN LBXBAP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBAP AS FLOAT64) 
 END as bone_alkaline_phosphotase_ug_l, 

CASE
WHEN LBXPT21 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPT21 AS FLOAT64) 
 END as parathyroid_hormone_elecys_method_pg_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_c_reactive_protein_crp_bone_alkaline_phosphatase_bap_parathyroid_hormone_pth_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L11_C.htm
*/
