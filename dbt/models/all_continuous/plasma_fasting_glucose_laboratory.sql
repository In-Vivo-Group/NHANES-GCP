SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight, 

CASE
        WHEN LBXGLU IS NOT NULL THEN LBXGLU 
WHEN LBXGLU IS NULL THEN NULL 
ELSE NULL 
 END as fasting_glucose_mg_dl, 

CASE
        WHEN LBDGLUSI IS NOT NULL THEN LBDGLUSI 
WHEN LBDGLUSI IS NULL THEN NULL 
ELSE NULL 
 END as fasting_glucose_mmol_l, 

 FROM {{ ref('stg_plasma_fasting_glucose_laboratory') }}