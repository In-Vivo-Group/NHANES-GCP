SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSAFPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAFPRP AS STRING) 
 END as fasting_subsample_weight, 

CASE
            WHEN LBXTR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTR AS STRING) 
 END as triglyceride_mg_dl, 

CASE
            WHEN LBDTRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTRSI AS STRING) 
 END as triglyceride_mmol_l, 

CASE
            WHEN LBDLDL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDL AS STRING) 
 END as ldl_cholesterol_friedewald_mg_dl, 

CASE
            WHEN LBDLDLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLSI AS STRING) 
 END as ldl_cholesterol_friedewald_mmol_l, 

CASE
            WHEN LBDLDLM IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLM AS STRING) 
 END as ldl_cholesterol_martin_hopkins_mg_dl, 

CASE
            WHEN LBDLDMSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDMSI AS STRING) 
 END as ldl_cholesterol_martin_hopkins_mmol_l, 

CASE
            WHEN LBDLDLN IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDLN AS STRING) 
 END as ldl_cholesterol_nih_equation_2_mg_dl, 

CASE
            WHEN LBDLDNSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLDNSI AS STRING) 
 END as ldl_cholesterol_nih_equation_2_mmol_l, 

 FROM {{ ref('stg_cholesterol_low_density_lipoproteins_ldl_triglycerides_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_TRIGLY.htm
        