SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXHSCRP IS NULL THEN NULL 
ELSE LBXHSCRP 
 END as hs_c_reactive_protein_mg_l, 

CASE
            WHEN LBDHRPLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDHRPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHRPLC IS NULL THEN NULL 
ELSE LBDHRPLC 
 END as hs_c_reactive_protein_comment_code, 

 FROM {{ ref('stg_high_sensitivity_c_reactive_protein_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HSCRP_J.htm
        