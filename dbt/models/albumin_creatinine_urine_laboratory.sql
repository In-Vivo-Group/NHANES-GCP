SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN URXUMA = 0.21 to 14040 THEN 'Range of Values' 
WHEN URXUMA IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_ug_ml,
CASE
    WHEN URXUMS = 0.21 to 14040 THEN 'Range of Values' 
WHEN URXUMS IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_mg_l,
CASE
    WHEN URDUMALC = 0 THEN 'At or above the detection limit' 
WHEN URDUMALC = 1 THEN 'Below lower detection limit' 
WHEN URDUMALC IS NULL THEN NULL 
ELSE NULL 
 END as albumin_urine_comment_code,
CASE
    WHEN URXUCR = 3.54 to 621 THEN 'Range of Values' 
WHEN URXUCR IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_mg_dl,
CASE
    WHEN URXCRS = 312.9 to 54896.4 THEN 'Range of Values' 
WHEN URXCRS IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_umol_l,
CASE
    WHEN URDUCRLC = 0 THEN 'At or above the detection limit' 
WHEN URDUCRLC = 1 THEN 'Below lower detection limit' 
WHEN URDUCRLC IS NULL THEN NULL 
ELSE NULL 
 END as creatinine_urine_comment_code,
CASE
    WHEN URDACT = 0.27 to 11676.92 THEN 'Range of Values' 
WHEN URDACT IS NULL THEN NULL 
ELSE NULL 
 END as albumin_creatinine_ratio_mg_g,
 FROM { ref('stg_albumin_creatinine_urine_laboratory') }