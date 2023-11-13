SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WTSA2YR AS FLOAT64) > 1502431.3423 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUP8 IS NULL THEN NULL 
ELSE URXUP8 
 END as perchlorate_urine_ng_ml, 

CASE
            WHEN URDUP8LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUP8LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUP8LC IS NULL THEN NULL 
ELSE URDUP8LC 
 END as perchlorate_urine_comment_code, 

CASE
            WHEN URXNO3 IS NULL THEN NULL 
ELSE URXNO3 
 END as nitrate_urine_ng_ml, 

CASE
            WHEN URDNO3LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDNO3LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNO3LC IS NULL THEN NULL 
ELSE URDNO3LC 
 END as nitrate_urine_comment_code, 

CASE
            WHEN URXSCN IS NULL THEN NULL 
ELSE URXSCN 
 END as thiocyanate_urine_ng_ml, 

CASE
            WHEN URDSCNLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDSCNLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSCNLC IS NULL THEN NULL 
ELSE URDSCNLC 
 END as thiocyanate_urine_comment_code, 

 FROM {{ ref('stg_perchlorate_nitrate_thiocyanate_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PERNT_J.htm
        