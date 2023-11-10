SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64)WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URXUIO IS NOT NULL THEN URXUIOWHEN URXUIO IS NULL THEN NULL 
ELSE NULL 
 END as iodine_urine_ug_l,
CASE
        WHEN URDUIOLC = '0' THEN 'At or above detection limit' 
WHEN URDUIOLC = '1' THEN 'Below lower detection limit' 
WHEN URDUIOLC IS NULL THEN NULL 
ELSE NULL 
 END as iodine_urine_comment_code,
 FROM {{ ref('stg_iodine_urine_laboratory') }}