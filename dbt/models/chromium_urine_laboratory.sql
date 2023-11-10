SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WTSA2YR = 3829.845402 to 1502431.3423 THEN 'Range of Values' 
WHEN WTSA2YR = 0 THEN 'No Lab Specimen' 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
CASE
    WHEN URXUCM = 0.13 to 41.79 THEN 'Range of Values' 
WHEN URXUCM IS NULL THEN NULL 
ELSE NULL 
 END as chromium_urine_ug_l,
CASE
    WHEN URDUCMLC = 0 THEN 'At or above detection limit' 
WHEN URDUCMLC = 1 THEN 'below lower detection limit' 
WHEN URDUCMLC IS NULL THEN NULL 
ELSE NULL 
 END as chromium_urine_comment_code,
 FROM { ref('stg_chromium_urine_laboratory') }