SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_the_1st_and_2nd_exams, 

CASE
WHEN LB2GH IS NULL THEN NULL 
ELSE SAFE_CAST(LB2GH AS FLOAT64) 
 END as glycohemoglobin, 

CASE
WHEN LB2GLU IS NULL THEN NULL 
ELSE SAFE_CAST(LB2GLU AS FLOAT64) 
 END as plasma_glucose_mg_dl, 

CASE
WHEN LB2GLUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2GLUSI AS FLOAT64) 
 END as plasma_glucose_si_mmol_l, 

CASE
WHEN LB2CP IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CP AS FLOAT64) 
 END as c_peptide_pmol_ml, 

CASE
WHEN LB2CPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2CPSI AS FLOAT64) 
 END as c_peptide_si_nmol_l, 

CASE
WHEN LB2IN IS NULL THEN NULL 
ELSE SAFE_CAST(LB2IN AS FLOAT64) 
 END as insulin_uu_ml, 

CASE
WHEN LB2INSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2INSI AS FLOAT64) 
 END as insulin_si_pmol_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_glycohemoglobin_plasma_glucose_serum_c_peptide_insulin_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L10_2_B.htm
*/
