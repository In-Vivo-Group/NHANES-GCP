SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight, 

CASE
        WHEN LBXIN IS NOT NULL THEN LBXIN 
WHEN LBXIN IS NULL THEN NULL 
ELSE NULL 
 END as insulin_uu_ml, 

CASE
        WHEN LBDINSI IS NOT NULL THEN LBDINSI 
WHEN LBDINSI IS NULL THEN NULL 
ELSE NULL 
 END as insulin_pmol_l, 

CASE
        WHEN LBDINLC = 0 THEN 'Detectable result' 
WHEN LBDINLC = 1 THEN 'Below detectable limit' 
WHEN LBDINLC IS NULL THEN NULL 
ELSE NULL 
 END as insulin_comment_code, 

 FROM {{ ref('stg_insulin_laboratory') }}