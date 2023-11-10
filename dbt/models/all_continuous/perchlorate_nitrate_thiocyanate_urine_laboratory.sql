SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) 
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64) 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN URXUP8 IS NOT NULL THEN URXUP8 
WHEN URXUP8 IS NULL THEN NULL 
ELSE NULL 
 END as perchlorate_urine_ng_ml, 

CASE
        WHEN URDUP8LC = 0 THEN 'At or above the detection limit' 
WHEN URDUP8LC = 1 THEN 'Below lower detection limit' 
WHEN URDUP8LC IS NULL THEN NULL 
ELSE NULL 
 END as perchlorate_urine_comment_code, 

CASE
        WHEN URXNO3 IS NOT NULL THEN URXNO3 
WHEN URXNO3 IS NULL THEN NULL 
ELSE NULL 
 END as nitrate_urine_ng_ml, 

CASE
        WHEN URDNO3LC = 0 THEN 'At or above the detection limit' 
WHEN URDNO3LC = 1 THEN 'Below lower detection limit' 
WHEN URDNO3LC IS NULL THEN NULL 
ELSE NULL 
 END as nitrate_urine_comment_code, 

CASE
        WHEN URXSCN IS NOT NULL THEN URXSCN 
WHEN URXSCN IS NULL THEN NULL 
ELSE NULL 
 END as thiocyanate_urine_ng_ml, 

CASE
        WHEN URDSCNLC = 0 THEN 'At or above the detection limit' 
WHEN URDSCNLC = 1 THEN 'Below lower detection limit' 
WHEN URDSCNLC IS NULL THEN NULL 
ELSE NULL 
 END as thiocyanate_urine_comment_code, 

 FROM {{ ref('stg_perchlorate_nitrate_thiocyanate_urine_laboratory') }}