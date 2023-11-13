SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXIHG IS NULL THEN NULL 
ELSE LBXIHG 
 END as mercury_inorganic_ug_l, 

CASE
            WHEN LBDIHGSI IS NULL THEN NULL 
ELSE LBDIHGSI 
 END as mercury_inorganic_nmol_l, 

CASE
            WHEN LBDIHGLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDIHGLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDIHGLC IS NULL THEN NULL 
ELSE LBDIHGLC 
 END as mercury_inorganic_comment_code, 

CASE
            WHEN LBXBGE IS NULL THEN NULL 
ELSE LBXBGE 
 END as mercury_ethyl_ug_l, 

CASE
            WHEN LBDBGESI IS NOT NULL THEN SAFE_CAST(LBDBGESI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDBGESI IS NULL THEN NULL 
ELSE LBDBGESI 
 END as mercury_ethyl_nmol_l, 

CASE
            WHEN LBDBGELC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBGELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBGELC IS NULL THEN NULL 
ELSE LBDBGELC 
 END as mercury_ethyl_comment_code, 

CASE
            WHEN LBXBGM IS NULL THEN NULL 
ELSE LBXBGM 
 END as mercury_methyl_ug_l, 

CASE
            WHEN LBDBGMSI IS NOT NULL THEN SAFE_CAST(LBDBGMSI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDBGMSI IS NULL THEN NULL 
ELSE LBDBGMSI 
 END as mercury_methyl_nmol_l, 

CASE
            WHEN LBDBGMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBGMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBGMLC IS NULL THEN NULL 
ELSE LBDBGMLC 
 END as mercury_methyl_comment_code, 

 FROM {{ ref('stg_mercury_inorganic_ethyl_and_methyl_blood_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/IHGEM_J.htm
        