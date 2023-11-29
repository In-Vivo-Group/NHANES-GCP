SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN URXUMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMA AS STRING) 
 END as albumin_urine_ug_ml, 

CASE
            WHEN URXUMS IS NOT NULL THEN SAFE_CAST(URXUMS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMS AS FLOAT64) 
 END as albumin_urine_mg_l, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(URDUMALC,'.0','') AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(URDUMALC,'.0','') AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMALC AS STRING) 
 END as albumin_urine_comment_code, 

CASE
            WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS STRING) 
 END as creatinine_urine_mg_dl, 

CASE
            WHEN URXCRS IS NOT NULL THEN SAFE_CAST(URXCRS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXCRS IS NULL THEN NULL 
ELSE SAFE_CAST(URXCRS AS FLOAT64) 
 END as creatinine_urine_umol_l, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(URDUCRLC,'.0','') AS INT64) AS STRING) = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(URDUCRLC,'.0','') AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUCRLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUCRLC AS STRING) 
 END as creatinine_urine_comment_code, 

CASE
            WHEN URDACT IS NOT NULL THEN SAFE_CAST(URDACT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDACT IS NULL THEN NULL 
ELSE SAFE_CAST(URDACT AS FLOAT64) 
 END as albumin_creatinine_ratio_mg_g, 

 FROM {{ ref('stg_albumin_creatinine_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALB_CR_J.htm
        