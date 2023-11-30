SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_c_2_year_weights, 

CASE
    WHEN URXOP1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP1 AS FLOAT64) 
 END as dimethylphosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP1LC AS STRING) 
 END as dimethylphosphate_comment_code, 

CASE
    WHEN URXOP2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP2 AS FLOAT64) 
 END as diethylphosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP2LC AS STRING) 
 END as diethylphosphate_comment_code, 

CASE
    WHEN URXOP3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP3 AS FLOAT64) 
 END as dimethylthiophosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP3LC AS STRING) 
 END as dimethylthiophosphate_comment_code, 

CASE
    WHEN URXOP4 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP4 AS FLOAT64) 
 END as diethylthiophosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP4LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP4LC AS STRING) 
 END as diethylthiophosphate_comment_code, 

CASE
    WHEN URXOP5 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP5 AS FLOAT64) 
 END as dimethyldithiophosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP5LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP5LC AS STRING) 
 END as dimethyldithiophosphate_comment_code, 

CASE
    WHEN URXOP6 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP6 AS FLOAT64) 
 END as diethyldithiophosphate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOP6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOP6LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOP6LC AS STRING) 
 END as diethyldithiophosphate_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_organophosphate_insecticides_diakyl_phosphate_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/OPD_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/OPD_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L26OPD_C.htm
*/
