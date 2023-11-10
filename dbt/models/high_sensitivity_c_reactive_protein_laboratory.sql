SELECT
SEQN as respondent_sequence_number,
WHEN LBXHSCRP IS NOT NULL THEN SAFE_CAST(LBXHSCRP AS FLOAT64)WHEN LBXHSCRP IS NULL THEN NULL 
ELSE NULL 
 END as hs_c_reactive_protein_mg_l,
CASE
    WHEN LBDHRPLC = 0 THEN 'At or above detection limit' 
WHEN LBDHRPLC = 1 THEN 'Below lower detection limit' 
WHEN LBDHRPLC IS NULL THEN NULL 
ELSE NULL 
 END as hs_c_reactive_protein_comment_code,
 FROM {ref('stg_high_sensitivity_c_reactive_protein_laboratory'})