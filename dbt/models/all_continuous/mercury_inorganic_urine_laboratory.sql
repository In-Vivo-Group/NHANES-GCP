SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN URXUHG IS NOT NULL THEN URXUHG 
WHEN URXUHG IS NULL THEN NULL 
ELSE NULL 
 END as urine_mercury_ug_l, 

CASE
        WHEN URDUHGLC = 0 THEN 'At or above the detection limit' 
WHEN URDUHGLC = 1 THEN 'Below lower detection limit' 
WHEN URDUHGLC IS NULL THEN NULL 
ELSE NULL 
 END as mercury_urine_comment_code, 

 FROM {{ ref('stg_mercury_inorganic_urine_laboratory') }}