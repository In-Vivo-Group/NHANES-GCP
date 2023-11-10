SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN URXUMA IS NOT NULL THEN URXUMA 
WHEN URXUMA IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_ug_ml, 

CASE
        WHEN URXUMS IS NOT NULL THEN SAFE_CAST(URXUMS AS FLOAT64) 
WHEN URXUMS IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_mg_l, 

CASE
        WHEN URDUMALC = '0' THEN 'At or above the detection limit' 
WHEN URDUMALC = '1' THEN 'Below lower detection limit' 
WHEN URDUMALC IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_comment_code, 

CASE
        WHEN URXUCR IS NOT NULL THEN URXUCR 
WHEN URXUCR IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_mg_dl, 

CASE
        WHEN URXCRS IS NOT NULL THEN SAFE_CAST(URXCRS AS FLOAT64) 
WHEN URXCRS IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_umol_l, 

CASE
        WHEN URDUCRLC = '0' THEN 'At or above the detection limit' 
WHEN URDUCRLC = '1' THEN 'Below lower detection limit' 
WHEN URDUCRLC IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_comment_code, 

CASE
        WHEN URDACT IS NOT NULL THEN SAFE_CAST(URDACT AS FLOAT64) 
WHEN URDACT IS NULL THEN NULL 
ELSE NULL 
 END as albumin_creatinine_ratio_mg_g, 

 FROM {{ ref('stg_albumin_creatinine_urine_laboratory') }}