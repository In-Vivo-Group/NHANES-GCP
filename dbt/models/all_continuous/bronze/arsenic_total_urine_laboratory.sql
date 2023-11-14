SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
            WHEN URXUAS IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAS AS FLOAT64) 
 END as arsenic_total_urine_ug_l, 

CASE
            WHEN SAFE_CAST(URDUASLC AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(URDUASLC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUASLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUASLC AS STRING) 
 END as arsenic_total_urine_comment_code, 

 FROM {{ ref('stg_arsenic_total_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UTAS_J.htm
        