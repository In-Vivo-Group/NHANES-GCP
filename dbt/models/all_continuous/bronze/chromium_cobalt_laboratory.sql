SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXBCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBCR AS STRING) 
 END as chromium_ug_l, 

CASE
            WHEN LBDBCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCRSI AS STRING) 
 END as chromium_nmol_l, 

CASE
            WHEN SAFE_CAST(LBDBCRLC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(LBDBCRLC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCRLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCRLC AS STRING) 
 END as chromium_comment_code, 

CASE
            WHEN LBXBCO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBCO AS STRING) 
 END as cobalt_ug_l, 

CASE
            WHEN LBDBCOSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCOSI AS STRING) 
 END as cobalt_nmol_l, 

CASE
            WHEN SAFE_CAST(LBDBCOLC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(LBDBCOLC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBCOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBCOLC AS STRING) 
 END as cobalt_comment_code, 

 FROM {{ ref('stg_chromium_cobalt_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CRCO_J.htm
        