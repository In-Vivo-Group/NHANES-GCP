SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN LBXEOA IS NULL THEN NULL 
ELSE LBXEOA 
 END as ethylene_oxide_pmol_g_hb, 

CASE
            WHEN LBDEOALC = 0 THEN 'detectable result' -- categorize numeric values
WHEN LBDEOALC = 1 THEN 'below detectable limit' -- categorize numeric values
WHEN LBDEOALC IS NULL THEN NULL 
ELSE LBDEOALC 
 END as ethylene_oxide_comment_code, 

 FROM {{ ref('stg_ethylene_oxide_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ETHOX_J.htm
        