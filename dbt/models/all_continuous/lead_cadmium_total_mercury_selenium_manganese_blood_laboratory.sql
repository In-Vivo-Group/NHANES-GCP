SELECT
SEQN as respondent_sequence_number,
WHEN LBXBPB IS NOT NULL THEN LBXBPBWHEN LBXBPB IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_ug_dl,
WHEN LBDBPBSI IS NOT NULL THEN LBDBPBSIWHEN LBDBPBSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_umol_l,
CASE
        WHEN LBDBPBLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBPBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBPBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_lead_comment_code,
WHEN LBXBCD IS NOT NULL THEN LBXBCDWHEN LBXBCD IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_ug_l,
WHEN LBDBCDSI IS NOT NULL THEN LBDBCDSIWHEN LBDBCDSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_nmol_l,
CASE
        WHEN LBDBCDLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBCDLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBCDLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_cadmium_comment_code,
WHEN LBXTHG IS NOT NULL THEN LBXTHGWHEN LBXTHG IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_ug_l,
WHEN LBDTHGSI IS NOT NULL THEN LBDTHGSIWHEN LBDTHGSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_nmol_l,
CASE
        WHEN LBDTHGLC = 0 THEN 'At or above the detection limit' 
WHEN LBDTHGLC = 1 THEN 'Below lower detection limit' 
WHEN LBDTHGLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_mercury_total_comment_code,
WHEN LBXBSE IS NOT NULL THEN LBXBSEWHEN LBXBSE IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_ug_l,
WHEN LBDBSESI IS NOT NULL THEN LBDBSESIWHEN LBDBSESI IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_umol_l,
CASE
        WHEN LBDBSELC = 0 THEN 'At or above the detection limit' 
WHEN LBDBSELC = 1 THEN 'Below lower detection limit' 
WHEN LBDBSELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_selenium_comment_code,
WHEN LBXBMN IS NOT NULL THEN LBXBMNWHEN LBXBMN IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_ug_l,
WHEN LBDBMNSI IS NOT NULL THEN LBDBMNSIWHEN LBDBMNSI IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_nmol_l,
CASE
        WHEN LBDBMNLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBMNLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBMNLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_manganese_comment_code,
 FROM {{ ref('stg_lead_cadmium_total_mercury_selenium_manganese_blood_laboratory') }}