SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN URXUMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMA AS FLOAT64) 
 END as albumin_urine_ug_ml, 

CASE
WHEN URXUMS IS NOT NULL THEN SAFE_CAST(URXUMS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMS AS FLOAT64) 
 END as albumin_urine_mg_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUMALC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUMALC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMALC AS STRING) 
 END as albumin_urine_comment_code, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN URXCRS IS NOT NULL THEN SAFE_CAST(URXCRS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXCRS IS NULL THEN NULL 
ELSE SAFE_CAST(URXCRS AS FLOAT64) 
 END as creatinine_urine_umol_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUCRLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUCRLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUCRLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCRLC AS STRING) 
 END as creatinine_urine_comment_code, 

CASE
WHEN URDACT IS NOT NULL THEN SAFE_CAST(URDACT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDACT IS NULL THEN NULL 
ELSE SAFE_CAST(URDACT AS FLOAT64) 
 END as albumin_creatinine_ratio_mg_g, 

CASE
WHEN URXUMA2 IS NOT NULL THEN SAFE_CAST(URXUMA2 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMA2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMA2 AS FLOAT64) 
 END as second_albumin_ug_ml, 

CASE
WHEN URDUMA2S IS NOT NULL THEN SAFE_CAST(URDUMA2S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDUMA2S IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMA2S AS FLOAT64) 
 END as second_albumin_urine_mg_l, 

CASE
WHEN URXUCR2 IS NOT NULL THEN SAFE_CAST(URXUCR2 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUCR2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR2 AS FLOAT64) 
 END as second_creatinine_mg_dl, 

CASE
WHEN URDUCR2S IS NOT NULL THEN SAFE_CAST(URDUCR2S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDUCR2S IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCR2S AS FLOAT64) 
 END as second_creatinine_urine_umol_l, 

CASE
WHEN URDACT2 IS NOT NULL THEN SAFE_CAST(URDACT2 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDACT2 IS NULL THEN NULL 
ELSE SAFE_CAST(URDACT2 AS FLOAT64) 
 END as second_albumin_creatinine_ratio_mg_g, 

CASE
WHEN URXUCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCRSI AS FLOAT64) 
 END as creatinine_urine_umol_l_URXUCRSI, 

CASE
WHEN URXUMASI IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMASI AS FLOAT64) 
 END as albumin_urine_mg_l_si, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_albumin_creatinine_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ALB_CR.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ALB_CR_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ALB_CR_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/ALB_CR_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/ALB_CR_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/ALB_CR_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L16_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L16_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB16.htm
*/
