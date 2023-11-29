SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LBXCRP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCRP AS FLOAT64) 
 END as c_reactive_protein_mg_dl, 

CASE
WHEN LBXHP1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHP1 AS FLOAT64) 
 END as helicobacter_pylori_isr, 

CASE
WHEN LBXFB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFB AS FLOAT64) 
 END as fibrinogen_mg_dl, 

CASE
WHEN LBDFBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFBSI AS FLOAT64) 
 END as fibrinogen_g_l, 

CASE
WHEN LBXBAP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBAP AS FLOAT64) 
 END as bone_alkaline_phosphotase_ug_l, 

CASE
WHEN URXNT IS NULL THEN NULL 
ELSE SAFE_CAST(URXNT AS FLOAT64) 
 END as n_telopeptides_ntx_nmol_bce, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_c_reactive_protein_crp_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/CRP_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/CRP_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/CRP_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB11.htm
*/
