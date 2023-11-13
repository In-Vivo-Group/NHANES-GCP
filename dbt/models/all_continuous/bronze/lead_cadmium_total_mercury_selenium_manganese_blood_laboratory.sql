SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXBPB IS NULL THEN NULL 
ELSE LBXBPB 
 END as blood_lead_ug_dl, 

CASE
            WHEN LBDBPBSI IS NULL THEN NULL 
ELSE LBDBPBSI 
 END as blood_lead_umol_l, 

CASE
            WHEN LBDBPBLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBPBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBPBLC IS NULL THEN NULL 
ELSE LBDBPBLC 
 END as blood_lead_comment_code, 

CASE
            WHEN LBXBCD IS NULL THEN NULL 
ELSE LBXBCD 
 END as blood_cadmium_ug_l, 

CASE
            WHEN LBDBCDSI IS NULL THEN NULL 
ELSE LBDBCDSI 
 END as blood_cadmium_nmol_l, 

CASE
            WHEN LBDBCDLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBCDLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCDLC IS NULL THEN NULL 
ELSE LBDBCDLC 
 END as blood_cadmium_comment_code, 

CASE
            WHEN LBXTHG IS NULL THEN NULL 
ELSE LBXTHG 
 END as blood_mercury_total_ug_l, 

CASE
            WHEN LBDTHGSI IS NULL THEN NULL 
ELSE LBDTHGSI 
 END as blood_mercury_total_nmol_l, 

CASE
            WHEN LBDTHGLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDTHGLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDTHGLC IS NULL THEN NULL 
ELSE LBDTHGLC 
 END as blood_mercury_total_comment_code, 

CASE
            WHEN LBXBSE IS NULL THEN NULL 
ELSE LBXBSE 
 END as blood_selenium_ug_l, 

CASE
            WHEN LBDBSESI IS NULL THEN NULL 
ELSE LBDBSESI 
 END as blood_selenium_umol_l, 

CASE
            WHEN LBDBSELC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBSELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBSELC IS NULL THEN NULL 
ELSE LBDBSELC 
 END as blood_selenium_comment_code, 

CASE
            WHEN LBXBMN IS NULL THEN NULL 
ELSE LBXBMN 
 END as blood_manganese_ug_l, 

CASE
            WHEN LBDBMNSI IS NULL THEN NULL 
ELSE LBDBMNSI 
 END as blood_manganese_nmol_l, 

CASE
            WHEN LBDBMNLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBMNLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBMNLC IS NULL THEN NULL 
ELSE LBDBMNLC 
 END as blood_manganese_comment_code, 

 FROM {{ ref('stg_lead_cadmium_total_mercury_selenium_manganese_blood_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PBCD_J.htm
        