SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUHG IS NULL THEN NULL 
ELSE URXUHG 
 END as urine_mercury_ug_l, 

CASE
            WHEN URDUHGLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUHGLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUHGLC IS NULL THEN NULL 
ELSE URDUHGLC 
 END as mercury_urine_comment_code, 

 FROM {{ ref('stg_mercury_inorganic_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UHG_J.htm
        