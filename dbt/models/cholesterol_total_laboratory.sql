SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN LBXTC = 76 to 446 THEN 'Range of Values' 
WHEN LBXTC IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mg_dl,
CASE
    WHEN LBDTCSI = 1.97 to 11.53 THEN 'Range of Values' 
WHEN LBDTCSI IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mmol_l,
 FROM { ref('stg_cholesterol_total_laboratory') }