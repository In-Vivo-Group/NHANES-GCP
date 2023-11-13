SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXVIC IS NULL THEN NULL 
ELSE LBXVIC 
 END as vitamin_c_mg_dl, 

CASE
            WHEN LBDVICSI IS NULL THEN NULL 
ELSE LBDVICSI 
 END as vitamin_c_umol_l, 

CASE
            WHEN LBDVICLC = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN LBDVICLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDVICLC IS NULL THEN NULL 
ELSE LBDVICLC 
 END as vitamin_c_comment_code, 

 FROM {{ ref('stg_vitamin_c_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VIC_J.htm
        