SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXCOT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCOT AS FLOAT64) 
 END as cotinine_serum_ng_ml, 

CASE
            WHEN SAFE_CAST(LBDCOTLC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(LBDCOTLC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDCOTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDCOTLC AS STRING) 
 END as cotinine_serum_comment_code, 

CASE
            WHEN LBXHCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCT AS STRING) 
 END as hydroxycotinine_serum_ng_ml, 

CASE
            WHEN SAFE_CAST(LBDHCTLC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(LBDHCTLC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCTLC AS STRING) 
 END as hydroxycotinine_serum_comment_code, 

 FROM {{ ref('stg_cotinine_and_hydroxycotinine_serum_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/COT_J.htm
        