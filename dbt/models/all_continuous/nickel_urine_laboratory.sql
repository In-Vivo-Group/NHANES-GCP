SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN URXUNI IS NOT NULL THEN URXUNI 
WHEN URXUNI IS NULL THEN NULL 
ELSE NULL 
 END as nickel_urine_ug_l, 

CASE
        WHEN URDUNILC = 0 THEN 'At or above detection limit' 
WHEN URDUNILC = 1 THEN 'below lower detection limit' 
WHEN URDUNILC IS NULL THEN NULL 
ELSE NULL 
 END as nickel_urine_comment_code, 

 FROM {{ ref('stg_nickel_urine_laboratory') }}