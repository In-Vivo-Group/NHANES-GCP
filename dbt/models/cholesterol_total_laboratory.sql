SELECT
SEQN as respondent_sequence_number,
WHEN LBXTC IS NOT NULL THEN SAFE_CAST(LBXTC AS FLOAT64)WHEN LBXTC IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mg_dl,
WHEN LBDTCSI IS NOT NULL THEN SAFE_CAST(LBDTCSI AS FLOAT64)WHEN LBDTCSI IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mmol_l,
 FROM {ref('stg_cholesterol_total_laboratory'})