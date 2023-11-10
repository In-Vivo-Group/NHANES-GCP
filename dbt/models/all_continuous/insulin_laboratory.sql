SELECT
SEQN as respondent_sequence_number,
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YRWHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight,
WHEN LBXIN IS NOT NULL THEN LBXINWHEN LBXIN IS NULL THEN NULL 
ELSE NULL 
 END as insulin_uu_ml,
WHEN LBDINSI IS NOT NULL THEN LBDINSIWHEN LBDINSI IS NULL THEN NULL 
ELSE NULL 
 END as insulin_pmol_l,
CASE
        WHEN LBDINLC = 0 THEN 'Detectable result' 
WHEN LBDINLC = 1 THEN 'Below detectable limit' 
WHEN LBDINLC IS NULL THEN NULL 
ELSE NULL 
 END as insulin_comment_code,
 FROM {{ ref('stg_insulin_laboratory') }}