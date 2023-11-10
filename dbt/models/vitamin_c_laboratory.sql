SELECT
SEQN as respondent_sequence_number,
WHEN LBXVIC IS NOT NULL THEN SAFE_CAST(LBXVIC AS FLOAT64)WHEN LBXVIC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg_dl,
WHEN LBDVICSI IS NOT NULL THEN SAFE_CAST(LBDVICSI AS FLOAT64)WHEN LBDVICSI IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_umol_l,
CASE
    WHEN LBDVICLC = 0 THEN 'At or above detection limit' 
WHEN LBDVICLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVICLC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_comment_code,
 FROM {ref('stg_vitamin_c_laboratory'})