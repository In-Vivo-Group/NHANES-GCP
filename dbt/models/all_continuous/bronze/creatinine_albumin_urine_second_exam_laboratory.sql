SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_1st_and_2nd_exam, 

CASE
WHEN UR2UCR IS NULL THEN NULL 
ELSE SAFE_CAST(UR2UCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN UR2UCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(UR2UCRSI AS FLOAT64) 
 END as creatinine_urine_umol_l, 

CASE
WHEN UR2UMA IS NULL THEN NULL 
ELSE SAFE_CAST(UR2UMA AS FLOAT64) 
 END as albumin_urine_ug_ml, 

CASE
WHEN UR2UMASI IS NULL THEN NULL 
ELSE SAFE_CAST(UR2UMASI AS FLOAT64) 
 END as albumin_urine_mg_l_si, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_creatinine_albumin_urine_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L16_2_B.htm
*/
