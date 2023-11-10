SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXTC IS NOT NULL THEN LBXTC 
WHEN LBXTC IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mg_dl, 

CASE
        WHEN LBDTCSI IS NOT NULL THEN LBDTCSI 
WHEN LBDTCSI IS NULL THEN NULL 
ELSE NULL 
 END as total_cholesterol_mmol_l, 

 FROM {{ ref('stg_cholesterol_total_laboratory') }}