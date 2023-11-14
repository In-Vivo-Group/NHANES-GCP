SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXGH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGH AS STRING) 
 END as glycohemoglobin, 

 FROM {{ ref('stg_glycohemoglobin_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/GHB_J.htm
        