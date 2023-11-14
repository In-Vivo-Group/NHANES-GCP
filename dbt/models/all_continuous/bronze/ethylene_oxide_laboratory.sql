SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS STRING) 
 END as subsample_a_weights, 

CASE
            WHEN LBXEOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEOA AS STRING) 
 END as ethylene_oxide_pmol_g_hb, 

CASE
            WHEN SAFE_CAST(LBDEOALC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(LBDEOALC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'below detectable limit' -- categorize numeric values
WHEN LBDEOALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDEOALC AS STRING) 
 END as ethylene_oxide_comment_code, 

 FROM {{ ref('stg_ethylene_oxide_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ETHOX_J.htm
        