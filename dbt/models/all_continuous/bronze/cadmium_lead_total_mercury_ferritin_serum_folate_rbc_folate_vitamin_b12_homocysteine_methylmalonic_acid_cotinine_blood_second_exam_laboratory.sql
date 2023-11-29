SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN LB2BCD IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BCD AS FLOAT64) 
 END as cadmium_ug_l, 

CASE
WHEN LB2BCDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BCDSI AS FLOAT64) 
 END as cadmium_nmol_l, 

CASE
WHEN LB2BPB IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BPB AS FLOAT64) 
 END as lead_ug_dl, 

CASE
WHEN LB2BPBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BPBSI AS FLOAT64) 
 END as lead_umol_l, 

CASE
WHEN LB2RBF IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RBF AS FLOAT64) 
 END as folate_rbc_ng_ml_rbc, 

CASE
WHEN LB2RBFSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RBFSI AS FLOAT64) 
 END as folate_rbc_nmol_l_rbc, 

CASE
WHEN LB2THG IS NULL THEN NULL 
ELSE SAFE_CAST(LB2THG AS FLOAT64) 
 END as mercury_total_ug_l, 

CASE
WHEN LB2THGSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2THGSI AS FLOAT64) 
 END as mercury_total_umol_l, 

CASE
WHEN LB2HCY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2HCY AS FLOAT64) 
 END as homocysteine_umol_l, 

CASE
WHEN LB2FER IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FER AS FLOAT64) 
 END as ferritin_ng_ml, 

CASE
WHEN LB2FERSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FERSI AS FLOAT64) 
 END as ferritin_ug_l, 

CASE
WHEN LB2B12 IS NULL THEN NULL 
ELSE SAFE_CAST(LB2B12 AS FLOAT64) 
 END as vitamin_b12_serum_pg_ml, 

CASE
WHEN LB2B12SI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2B12SI AS FLOAT64) 
 END as vitamin_b12_serum_pmol_l, 

CASE
WHEN LB2FOL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FOL AS FLOAT64) 
 END as folate_serum_ng_ml, 

CASE
WHEN LB2FOLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FOLSI AS FLOAT64) 
 END as folate_serum_nmol_l, 

CASE
WHEN LB2MMA IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MMA AS FLOAT64) 
 END as methylmalonic_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LB2COTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LB2COTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN LB2COTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2COTLC AS STRING) 
 END as cotinine_comment_code, 

CASE
WHEN LB2COT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2COT AS FLOAT64) 
 END as cotinine_ng_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cadmium_lead_total_mercury_ferritin_serum_folate_rbc_folate_vitamin_b12_homocysteine_methylmalonic_acid_cotinine_blood_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L06_2_B.htm
*/
