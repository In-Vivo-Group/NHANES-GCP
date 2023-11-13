SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUAS IS NULL THEN NULL 
ELSE URXUAS 
 END as arsenic_total_urine_ug_l, 

CASE
            WHEN URDUASLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN URDUASLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUASLC IS NULL THEN NULL 
ELSE URDUASLC 
 END as arsenic_total_urine_comment_code, 

 FROM {{ ref('stg_arsenic_total_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UTAS_J.htm
        