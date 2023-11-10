SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXVIC IS NOT NULL THEN LBXVIC 
WHEN LBXVIC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg_dl, 

CASE
        WHEN LBDVICSI IS NOT NULL THEN LBDVICSI 
WHEN LBDVICSI IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_umol_l, 

CASE
        WHEN LBDVICLC = '0' THEN 'At or above detection limit' 
WHEN LBDVICLC = '1' THEN 'Below lower detection limit' 
WHEN LBDVICLC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_comment_code, 

 FROM {{ ref('stg_vitamin_c_laboratory') }}