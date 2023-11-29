SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXCRP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCRP AS FLOAT64) 
 END as c_reactive_protein_mg_dl, 

CASE
WHEN LBXFB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFB AS FLOAT64) 
 END as fibrinogen_mg_dl, 

CASE
WHEN LBDFBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFBSI AS FLOAT64) 
 END as fibrinogen_g_l, 

CASE
WHEN LBDBAP IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBAP AS FLOAT64) 
 END as bone_alkaline_phosphotase_ug_l, 

CASE
WHEN URDNT IS NULL THEN NULL 
ELSE SAFE_CAST(URDNT AS FLOAT64) 
 END as n_telopeptides_nmol_bce, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_c_reactive_protein_crp_fibrinogen_bone_alkaline_phosphatase_urinary_n_telopeptides_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L11_B.htm
*/
