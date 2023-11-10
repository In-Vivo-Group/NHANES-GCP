SELECT
SEQN as respondent_sequence_number,
WHEN LBXTFR IS NOT NULL THEN LBXTFRWHEN LBXTFR IS NULL THEN NULL 
ELSE NULL 
 END as transferrin_receptor_mg_l,
WHEN LBDTFRSI IS NOT NULL THEN SAFE_CAST(LBDTFRSI AS FLOAT64)WHEN LBDTFRSI IS NULL THEN NULL 
ELSE NULL 
 END as transferrin_receptor_nmol_l,
 FROM {{ ref('stg_transferrin_receptor_laboratory') }}