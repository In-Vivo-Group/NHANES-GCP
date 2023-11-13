SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXTFR IS NULL THEN NULL 
ELSE LBXTFR 
 END as transferrin_receptor_mg_l, 

CASE
            WHEN LBDTFRSI IS NOT NULL THEN SAFE_CAST(LBDTFRSI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBDTFRSI IS NULL THEN NULL 
ELSE LBDTFRSI 
 END as transferrin_receptor_nmol_l, 

 FROM {{ ref('stg_transferrin_receptor_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TFR_J.htm
        