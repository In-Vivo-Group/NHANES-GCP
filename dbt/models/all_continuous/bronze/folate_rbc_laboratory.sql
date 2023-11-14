SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WTFOL2YR AS FLOAT64) > 903459.15327 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTFOL2YR AS FLOAT64) 
 END as folate_and_folate_forms_weight, 

CASE
            WHEN LBDRFO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRFO AS FLOAT64) 
 END as rbc_folate_ng_ml, 

CASE
            WHEN LBDRFOSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDRFOSI AS FLOAT64) 
 END as rbc_folate_nmol_l, 

 FROM {{ ref('stg_folate_rbc_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FOLATE_J.htm
        