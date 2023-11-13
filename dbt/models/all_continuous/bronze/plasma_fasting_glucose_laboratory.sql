SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSAF2YR IS NULL THEN NULL 
ELSE WTSAF2YR 
 END as fasting_subsample_2_year_mec_weight, 

CASE
            WHEN LBXGLU IS NULL THEN NULL 
ELSE LBXGLU 
 END as fasting_glucose_mg_dl, 

CASE
            WHEN LBDGLUSI IS NULL THEN NULL 
ELSE LBDGLUSI 
 END as fasting_glucose_mmol_l, 

 FROM {{ ref('stg_plasma_fasting_glucose_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/GLU_J.htm
        