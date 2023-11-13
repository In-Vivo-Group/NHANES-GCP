SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXBCR IS NULL THEN NULL 
ELSE LBXBCR 
 END as chromium_ug_l, 

CASE
            WHEN LBDBCRSI IS NULL THEN NULL 
ELSE LBDBCRSI 
 END as chromium_nmol_l, 

CASE
            WHEN LBDBCRLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBCRLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCRLC IS NULL THEN NULL 
ELSE LBDBCRLC 
 END as chromium_comment_code, 

CASE
            WHEN LBXBCO IS NULL THEN NULL 
ELSE LBXBCO 
 END as cobalt_ug_l, 

CASE
            WHEN LBDBCOSI IS NULL THEN NULL 
ELSE LBDBCOSI 
 END as cobalt_nmol_l, 

CASE
            WHEN LBDBCOLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDBCOLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCOLC IS NULL THEN NULL 
ELSE LBDBCOLC 
 END as cobalt_comment_code, 

 FROM {{ ref('stg_chromium_cobalt_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CRCO_J.htm
        