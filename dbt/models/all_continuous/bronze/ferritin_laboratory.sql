SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXFER IS NULL THEN NULL 
ELSE LBXFER 
 END as ferritin_ng_ml, 

CASE
            WHEN LBDFERSI IS NULL THEN NULL 
ELSE LBDFERSI 
 END as ferritin_ug_l, 

 FROM {{ ref('stg_ferritin_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FERTIN_J.htm
        