SELECT
SEQN as respondent_sequence_number,
WHEN LBXIHG IS NOT NULL THEN LBXIHGWHEN LBXIHG IS NULL THEN NULL 
ELSE NULL 
 END as mercury_inorganic_ug_l,
WHEN LBDIHGSI IS NOT NULL THEN LBDIHGSIWHEN LBDIHGSI IS NULL THEN NULL 
ELSE NULL 
 END as mercury_inorganic_nmol_l,
CASE
        WHEN LBDIHGLC = 0 THEN 'At or above the detection limit' 
WHEN LBDIHGLC = 1 THEN 'Below lower detection limit' 
WHEN LBDIHGLC IS NULL THEN NULL 
ELSE NULL 
 END as mercury_inorganic_comment_code,
WHEN LBXBGE IS NOT NULL THEN LBXBGEWHEN LBXBGE IS NULL THEN NULL 
ELSE NULL 
 END as mercury_ethyl_ug_l,
WHEN LBDBGESI IS NOT NULL THEN SAFE_CAST(LBDBGESI AS FLOAT64)WHEN LBDBGESI IS NULL THEN NULL 
ELSE NULL 
 END as mercury_ethyl_nmol_l,
CASE
        WHEN LBDBGELC = 0 THEN 'At or above the detection limit' 
WHEN LBDBGELC = 1 THEN 'Below lower detection limit' 
WHEN LBDBGELC IS NULL THEN NULL 
ELSE NULL 
 END as mercury_ethyl_comment_code,
WHEN LBXBGM IS NOT NULL THEN LBXBGMWHEN LBXBGM IS NULL THEN NULL 
ELSE NULL 
 END as mercury_methyl_ug_l,
WHEN LBDBGMSI IS NOT NULL THEN SAFE_CAST(LBDBGMSI AS FLOAT64)WHEN LBDBGMSI IS NULL THEN NULL 
ELSE NULL 
 END as mercury_methyl_nmol_l,
CASE
        WHEN LBDBGMLC = 0 THEN 'At or above the detection limit' 
WHEN LBDBGMLC = 1 THEN 'Below lower detection limit' 
WHEN LBDBGMLC IS NULL THEN NULL 
ELSE NULL 
 END as mercury_methyl_comment_code,
 FROM {{ ref('stg_mercury_inorganic_ethyl_and_methyl_blood_laboratory') }}