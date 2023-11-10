SELECT
SEQN as respondent_sequence_number,
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YRWHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight,
WHEN LBXGLU IS NOT NULL THEN LBXGLUWHEN LBXGLU IS NULL THEN NULL 
ELSE NULL 
 END as fasting_glucose_mg_dl,
WHEN LBDGLUSI IS NOT NULL THEN LBDGLUSIWHEN LBDGLUSI IS NULL THEN NULL 
ELSE NULL 
 END as fasting_glucose_mmol_l,
 FROM {{ ref('stg_plasma_fasting_glucose_laboratory') }}