SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXTC IS NULL THEN NULL 
ELSE LBXTC 
 END as total_cholesterol_mg_dl, 

CASE
            WHEN LBDTCSI IS NULL THEN NULL 
ELSE LBDTCSI 
 END as total_cholesterol_mmol_l, 

 FROM {{ ref('stg_cholesterol_total_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TCHOL_J.htm
        