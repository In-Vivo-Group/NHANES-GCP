SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN LBXEOA IS NOT NULL THEN LBXEOA 
WHEN LBXEOA IS NULL THEN NULL 
ELSE NULL 
 END as ethylene_oxide_pmol_g_hb, 

CASE
        WHEN LBDEOALC = 0 THEN 'detectable result' 
WHEN LBDEOALC = 1 THEN 'below detectable limit' 
WHEN LBDEOALC IS NULL THEN NULL 
ELSE NULL 
 END as ethylene_oxide_comment_code, 

 FROM {{ ref('stg_ethylene_oxide_laboratory') }}