SELECT
SEQN as respondent_sequence_number,
WHEN LBXTC IS NOT NULL THEN LBXTCWHEN LBXTC IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mg_dl,
WHEN LBDTCSI IS NOT NULL THEN LBDTCSIWHEN LBDTCSI IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mmol_l,
 FROM {{ ref('stg_cholesterol_total_laboratory') }}