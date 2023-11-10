SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WTSAF2YR = 9133.518063 to 944153.24975 THEN 'Range of Values' 
WHEN WTSAF2YR = 0 THEN 'No Lab Result or Not Fasting for 8 to <24 hours' 
WHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight,
CASE
    WHEN LBXTR = 10 to 2684 THEN 'Range of Values' 
WHEN LBXTR IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mg_dl,
CASE
    WHEN LBDTRSI = 0.113 to 30.302 THEN 'Range of Values' 
WHEN LBDTRSI IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mmol_l,
CASE
    WHEN LBDLDL = 18 to 357 THEN 'Range of Values' 
WHEN LBDLDL IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mg_dl,
CASE
    WHEN LBDLDLSI = 0.465 to 9.232 THEN 'Range of Values' 
WHEN LBDLDLSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mmol_l,
CASE
    WHEN LBDLDLM = 21 to 358 THEN 'Range of Values' 
WHEN LBDLDLM IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mg_dl,
CASE
    WHEN LBDLDMSI = 0.543 to 9.258 THEN 'Range of Values' 
WHEN LBDLDMSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mmol_l,
CASE
    WHEN LBDLDLN = 20 to 359 THEN 'Range of Values' 
WHEN LBDLDLN IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mg_dl,
CASE
    WHEN LBDLDNSI = 0.517 to 9.284 THEN 'Range of Values' 
WHEN LBDLDNSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mmol_l,
 FROM { ref('stg_cholesterol_low_density_lipoproteins_ldl_triglycerides_laboratory') }