SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YR 
WHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight, 

CASE
        WHEN LBXTR IS NOT NULL THEN LBXTR 
WHEN LBXTR IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mg_dl, 

CASE
        WHEN LBDTRSI IS NOT NULL THEN LBDTRSI 
WHEN LBDTRSI IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mmol_l, 

CASE
        WHEN LBDLDL IS NOT NULL THEN LBDLDL 
WHEN LBDLDL IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mg_dl, 

CASE
        WHEN LBDLDLSI IS NOT NULL THEN LBDLDLSI 
WHEN LBDLDLSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mmol_l, 

CASE
        WHEN LBDLDLM IS NOT NULL THEN LBDLDLM 
WHEN LBDLDLM IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mg_dl, 

CASE
        WHEN LBDLDMSI IS NOT NULL THEN LBDLDMSI 
WHEN LBDLDMSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mmol_l, 

CASE
        WHEN LBDLDLN IS NOT NULL THEN LBDLDLN 
WHEN LBDLDLN IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mg_dl, 

CASE
        WHEN LBDLDNSI IS NOT NULL THEN LBDLDNSI 
WHEN LBDLDNSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mmol_l, 

 FROM {{ ref('stg_cholesterol_low_density_lipoproteins_ldl_triglycerides_laboratory') }}