SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN WTSA2YRWHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URXUAS IS NOT NULL THEN URXUASWHEN URXUAS IS NULL THEN NULL 
ELSE NULL 
 END as arsenic_total_urine_ug_l,
CASE
        WHEN URDUASLC = 0 THEN 'At or above detection limit' 
WHEN URDUASLC = 1 THEN 'Below lower detection limit' 
WHEN URDUASLC IS NULL THEN NULL 
ELSE NULL 
 END as arsenic_total_urine_comment_code,
 FROM {{ ref('stg_arsenic_total_urine_laboratory') }}