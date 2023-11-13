SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN URXUMA IS NULL THEN NULL 
ELSE URXUMA 
 END as albumin_urine_ug_ml, 

CASE
            WHEN URXUMS IS NOT NULL THEN SAFE_CAST(URXUMS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMS IS NULL THEN NULL 
ELSE URXUMS 
 END as albumin_urine_mg_l, 

CASE
            WHEN URDUMALC = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN URDUMALC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUMALC IS NULL THEN NULL 
ELSE URDUMALC 
 END as albumin_urine_comment_code, 

CASE
            WHEN URXUCR IS NULL THEN NULL 
ELSE URXUCR 
 END as creatinine_urine_mg_dl, 

CASE
            WHEN URXCRS IS NOT NULL THEN SAFE_CAST(URXCRS AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXCRS IS NULL THEN NULL 
ELSE URXCRS 
 END as creatinine_urine_umol_l, 

CASE
            WHEN URDUCRLC = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN URDUCRLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUCRLC IS NULL THEN NULL 
ELSE URDUCRLC 
 END as creatinine_urine_comment_code, 

CASE
            WHEN URDACT IS NOT NULL THEN SAFE_CAST(URDACT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URDACT IS NULL THEN NULL 
ELSE URDACT 
 END as albumin_creatinine_ratio_mg_g, 

 FROM {{ ref('stg_albumin_creatinine_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALB_CR_J.htm
        