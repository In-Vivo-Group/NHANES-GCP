SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_1st_and_2nd_exam, 

CASE
WHEN LB2BAP IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BAP AS FLOAT64) 
 END as bone_alkaline_phosphotase_ug_l, 

CASE
WHEN LB2CRP IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CRP AS FLOAT64) 
 END as c_reactive_protein_mg_dl, 

CASE
WHEN LB2FB IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FB AS FLOAT64) 
 END as fibrinogen_mg_dl, 

CASE
WHEN LB2FBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FBSI AS FLOAT64) 
 END as fibrinogen_g_l, 

CASE
WHEN UR2NT IS NULL THEN NULL 
ELSE SAFE_CAST(UR2NT AS FLOAT64) 
 END as n_telopeptides_nmol_bce, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_c_reactive_protein_others_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L11_2_B.htm
*/
