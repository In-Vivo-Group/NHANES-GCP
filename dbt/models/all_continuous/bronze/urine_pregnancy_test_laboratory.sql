SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN URXPREG = 1 THEN 'Positive' -- categorize numeric values
WHEN URXPREG = 2 THEN 'Negative' -- categorize numeric values
WHEN URXPREG = 3 THEN 'Not Done' -- categorize numeric values
WHEN URXPREG = 4 THEN 'Invalid' -- categorize numeric values
WHEN URXPREG IS NULL THEN NULL 
ELSE URXPREG 
 END as urine_pregnancy_result, 

 FROM {{ ref('stg_urine_pregnancy_test_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UCPREG_J.htm
        