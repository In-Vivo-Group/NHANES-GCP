SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64)WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URXUNI IS NOT NULL THEN SAFE_CAST(URXUNI AS FLOAT64)WHEN URXUNI IS NULL THEN NULL 
ELSE NULL 
 END as nickel_urine_ug_l,
CASE
    WHEN URDUNILC = 0 THEN 'At or above detection limit' 
WHEN URDUNILC = 1 THEN 'below lower detection limit' 
WHEN URDUNILC IS NULL THEN NULL 
ELSE NULL 
 END as nickel_urine_comment_code,
 FROM {ref('stg_nickel_urine_laboratory'})