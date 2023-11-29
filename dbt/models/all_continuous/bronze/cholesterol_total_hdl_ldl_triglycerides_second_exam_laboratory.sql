SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_1st_and_2nd_exam, 

CASE
WHEN LB2TC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2TC AS FLOAT64) 
 END as total_cholesterol_mg_dl, 

CASE
WHEN LB2TCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2TCSI AS FLOAT64) 
 END as total_cholesterol_mmol_l, 

CASE
WHEN LB2HDL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2HDL AS FLOAT64) 
 END as hdl_cholesterol_mg_dl, 

CASE
WHEN LB2HDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2HDLSI AS FLOAT64) 
 END as hdl_cholesterol_mmol_l, 

CASE
WHEN LB2TR IS NULL THEN NULL 
ELSE SAFE_CAST(LB2TR AS FLOAT64) 
 END as triglyceride_mg_dl, 

CASE
WHEN LB2TRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2TRSI AS FLOAT64) 
 END as triglyceride_mmol_l, 

CASE
WHEN LB2LDL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LDL AS FLOAT64) 
 END as ldl_cholesterol_mg_dl, 

CASE
WHEN LB2LDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LDLSI AS FLOAT64) 
 END as ldl_cholesterol_mmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cholesterol_total_hdl_ldl_triglycerides_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L13_2_B.htm
*/
