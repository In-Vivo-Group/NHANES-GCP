SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN URXPREG = 1 THEN 'Positive' 
WHEN URXPREG = 2 THEN 'Negative' 
WHEN URXPREG = 3 THEN 'Not Done' 
WHEN URXPREG = 4 THEN 'Invalid' 
WHEN URXPREG IS NULL THEN NULL 
ELSE NULL 
 END as urine_pregnancy_result, 

 FROM {{ ref('stg_urine_pregnancy_test_laboratory') }}