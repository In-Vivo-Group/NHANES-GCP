SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN LBXBCR = 0.29 to 8.62 THEN 'Range of Values' 
WHEN LBXBCR IS NULL THEN NULL 
ELSE NULL 
 END as chromium_ug_l,
CASE
    WHEN LBDBCRSI = 5.58 to 165.76 THEN 'Range of Values' 
WHEN LBDBCRSI IS NULL THEN NULL 
ELSE NULL 
 END as chromium_nmol_l,
CASE
    WHEN LBDBCRLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBCRLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBCRLC IS NULL THEN NULL 
ELSE NULL 
 END as chromium_comment_code,
CASE
    WHEN LBXBCO = 0.04 to 17.79 THEN 'Range of Values' 
WHEN LBXBCO IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_ug_l,
CASE
    WHEN LBDBCOSI = 0.68 to 301.9 THEN 'Range of Values' 
WHEN LBDBCOSI IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_nmol_l,
CASE
    WHEN LBDBCOLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBCOLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBCOLC IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_comment_code,
 FROM { ref('stg_chromium_cobalt_laboratory') }