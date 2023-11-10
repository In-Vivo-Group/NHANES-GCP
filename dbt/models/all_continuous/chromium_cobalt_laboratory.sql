SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXBCR IS NOT NULL THEN LBXBCR 
WHEN LBXBCR IS NULL THEN NULL 
ELSE NULL 
 END as chromium_ug_l, 

CASE
        WHEN LBDBCRSI IS NOT NULL THEN LBDBCRSI 
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
        WHEN LBXBCO IS NOT NULL THEN LBXBCO 
WHEN LBXBCO IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_ug_l, 

CASE
        WHEN LBDBCOSI IS NOT NULL THEN LBDBCOSI 
WHEN LBDBCOSI IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_nmol_l, 

CASE
        WHEN LBDBCOLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBCOLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBCOLC IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_comment_code, 

 FROM {{ ref('stg_chromium_cobalt_laboratory') }}