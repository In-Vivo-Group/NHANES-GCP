SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSAPRP = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE WTSAPRP 
 END as subsample_a_weights_pre_pandemic, 

CASE
            WHEN URXUNI IS NULL THEN NULL 
ELSE URXUNI 
 END as nickel_urine_ug_l, 

CASE
            WHEN URDUNILC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN URDUNILC = 1 THEN 'below lower detection limit' -- categorize numeric values
WHEN URDUNILC IS NULL THEN NULL 
ELSE URDUNILC 
 END as nickel_urine_comment_code, 

 FROM {{ ref('stg_nickel_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UNI.htm
        