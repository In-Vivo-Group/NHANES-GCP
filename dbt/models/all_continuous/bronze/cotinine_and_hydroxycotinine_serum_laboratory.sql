SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXCOT IS NULL THEN NULL 
ELSE LBXCOT 
 END as cotinine_serum_ng_ml, 

CASE
            WHEN LBDCOTLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDCOTLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDCOTLC IS NULL THEN NULL 
ELSE LBDCOTLC 
 END as cotinine_serum_comment_code, 

CASE
            WHEN LBXHCT IS NULL THEN NULL 
ELSE LBXHCT 
 END as hydroxycotinine_serum_ng_ml, 

CASE
            WHEN LBDHCTLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDHCTLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHCTLC IS NULL THEN NULL 
ELSE LBDHCTLC 
 END as hydroxycotinine_serum_comment_code, 

 FROM {{ ref('stg_cotinine_and_hydroxycotinine_serum_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/COT_J.htm
        