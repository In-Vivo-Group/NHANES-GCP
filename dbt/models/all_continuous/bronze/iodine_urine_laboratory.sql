SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) -- correct wrong data types for numerical data 
WHEN SAFE_CAST(WTSA2YR AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
WHEN URXUIO IS NULL THEN NULL 
ELSE SAFE_CAST(URXUIO AS FLOAT64) 
 END as iodine_urine_ug_l, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUIOLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(URDUIOLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUIOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUIOLC AS STRING) 
 END as iodine_urine_comment_code, 

CASE
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN SAFE_CAST(WTSAPRP AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS FLOAT64) 
 END as subsample_a_weights_pre_pandemic, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_c, 

CASE
WHEN WTUIO2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTUIO2YR AS FLOAT64) 
 END as iodine_subsample_2_year_mec_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_iodine_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UIO_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UIO.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UIO_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UIO_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UIO_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/UIO_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UIO_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/UIO_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06UIO_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L06UIO_B.htm
*/
