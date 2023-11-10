SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXBPB IS NOT NULL THEN LBXBPB 
WHEN LBXBPB IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_ug_dl, 

CASE
        WHEN LBDBPBSI IS NOT NULL THEN LBDBPBSI 
WHEN LBDBPBSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_umol_l, 

CASE
        WHEN LBDBPBLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBPBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBPBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_comment_code, 

CASE
        WHEN LBXBCD IS NOT NULL THEN LBXBCD 
WHEN LBXBCD IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_ug_l, 

CASE
        WHEN LBDBCDSI IS NOT NULL THEN LBDBCDSI 
WHEN LBDBCDSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_nmol_l, 

CASE
        WHEN LBDBCDLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBCDLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBCDLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_comment_code, 

CASE
        WHEN LBXTHG IS NOT NULL THEN LBXTHG 
WHEN LBXTHG IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_ug_l, 

CASE
        WHEN LBDTHGSI IS NOT NULL THEN LBDTHGSI 
WHEN LBDTHGSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_nmol_l, 

CASE
        WHEN LBDTHGLC = 0 THEN 'At or above the detection limit' 
WHEN LBDTHGLC = 1 THEN 'Below lower detection limit' 
WHEN LBDTHGLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_comment_code, 

CASE
        WHEN LBXBSE IS NOT NULL THEN LBXBSE 
WHEN LBXBSE IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_ug_l, 

CASE
        WHEN LBDBSESI IS NOT NULL THEN LBDBSESI 
WHEN LBDBSESI IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_umol_l, 

CASE
        WHEN LBDBSELC = 0 THEN 'At or above the detection limit' 
WHEN LBDBSELC = 1 THEN 'Below lower detection limit' 
WHEN LBDBSELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_comment_code, 

CASE
        WHEN LBXBMN IS NOT NULL THEN LBXBMN 
WHEN LBXBMN IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_ug_l, 

CASE
        WHEN LBDBMNSI IS NOT NULL THEN LBDBMNSI 
WHEN LBDBMNSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_nmol_l, 

CASE
        WHEN LBDBMNLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBMNLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBMNLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_comment_code, 

 FROM {{ ref('stg_lead_cadmium_total_mercury_selenium_manganese_blood_laboratory') }}