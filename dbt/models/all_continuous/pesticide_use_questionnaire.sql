SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN PUQ100 = '1' THEN 'Yes' 
WHEN PUQ100 = '2' THEN 'No' 
WHEN PUQ100 = '7' THEN 'Refused' 
WHEN PUQ100 = '9' THEN 'Don\'t know' 
WHEN PUQ100 IS NULL THEN NULL 
ELSE NULL 
 END as products_used_in_home_to_control_insects,
CASE
        WHEN PUQ110 = '1' THEN 'Yes' 
WHEN PUQ110 = '2' THEN 'No' 
WHEN PUQ110 = '7' THEN 'Refused' 
WHEN PUQ110 = '9' THEN 'Don\'t know' 
WHEN PUQ110 IS NULL THEN NULL 
ELSE NULL 
 END as products_used_to_kill_weeds,
 FROM {{ ref('stg_pesticide_use_questionnaire') }}