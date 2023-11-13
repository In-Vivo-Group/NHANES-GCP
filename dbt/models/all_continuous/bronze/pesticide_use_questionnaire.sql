SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN PUQ100 = '1' THEN 'Yes' -- categorize string values 
WHEN PUQ100 = '2' THEN 'No' -- categorize string values 
WHEN PUQ100 = '7' THEN 'Refused' -- categorize string values 
WHEN PUQ100 = '9' THEN 'Dont know' -- categorize string values 
WHEN PUQ100 IS NULL THEN NULL 
ELSE PUQ100 
 END as products_used_in_home_to_control_insects, 

CASE
            WHEN PUQ110 = '1' THEN 'Yes' -- categorize string values 
WHEN PUQ110 = '2' THEN 'No' -- categorize string values 
WHEN PUQ110 = '7' THEN 'Refused' -- categorize string values 
WHEN PUQ110 = '9' THEN 'Dont know' -- categorize string values 
WHEN PUQ110 IS NULL THEN NULL 
ELSE PUQ110 
 END as products_used_to_kill_weeds, 

 FROM {{ ref('stg_pesticide_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PUQMEC_J.htm
        