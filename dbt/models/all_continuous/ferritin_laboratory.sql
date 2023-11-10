SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXFER IS NOT NULL THEN LBXFER 
WHEN LBXFER IS NULL THEN NULL 
ELSE NULL 
 END as ferritin_ng_ml, 

CASE
        WHEN LBDFERSI IS NOT NULL THEN LBDFERSI 
WHEN LBDFERSI IS NULL THEN NULL 
ELSE NULL 
 END as ferritin_ug_l, 

 FROM {{ ref('stg_ferritin_laboratory') }}