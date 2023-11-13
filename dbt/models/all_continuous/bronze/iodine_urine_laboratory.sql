SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WTSA2YR AS FLOAT64) > 1502431.3423 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUIO IS NULL THEN NULL 
ELSE URXUIO 
 END as iodine_urine_ug_l, 

CASE
            WHEN URDUIOLC = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN URDUIOLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUIOLC IS NULL THEN NULL 
ELSE URDUIOLC 
 END as iodine_urine_comment_code, 

 FROM {{ ref('stg_iodine_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UIO_J.htm
        