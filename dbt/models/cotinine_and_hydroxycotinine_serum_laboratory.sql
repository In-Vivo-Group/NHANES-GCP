SELECT
SEQN as respondent_sequence_number,
WHEN LBXCOT IS NOT NULL THEN SAFE_CAST(LBXCOT AS FLOAT64)WHEN LBXCOT IS NULL THEN NULL 
ELSE NULL 
 END as cotinine_serum_ng_ml,
CASE
    WHEN LBDCOTLC = 0 THEN 'At or above the detection limit' 
WHEN LBDCOTLC = 1 THEN 'Below lower detection limit' 
WHEN LBDCOTLC IS NULL THEN NULL 
ELSE NULL 
 END as cotinine_serum_comment_code,
WHEN LBXHCT IS NOT NULL THEN SAFE_CAST(LBXHCT AS FLOAT64)WHEN LBXHCT IS NULL THEN NULL 
ELSE NULL 
 END as hydroxycotinine_serum_ng_ml,
CASE
    WHEN LBDHCTLC = 0 THEN 'At or above detection limit' 
WHEN LBDHCTLC = 1 THEN 'Below lower detection limit' 
WHEN LBDHCTLC IS NULL THEN NULL 
ELSE NULL 
 END as hydroxycotinine_serum_comment_code,
 FROM {ref('stg_cotinine_and_hydroxycotinine_serum_laboratory'})