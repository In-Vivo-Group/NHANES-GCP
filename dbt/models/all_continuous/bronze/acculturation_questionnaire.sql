SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

-- ACQBOX1 as ACQBOX1, -- not included in table but included in docs without transformation logic 

CASE
            WHEN ACD011A = '1' THEN 'English' -- categorize string values 
WHEN ACD011A = '77' THEN 'Refused' -- categorize string values 
WHEN ACD011A = '99' THEN 'Dont know' -- categorize string values 
WHEN ACD011A IS NULL THEN NULL 
ELSE ACD011A 
 END as speak_english_at_home_nhw_or_nhb, 

CASE
            WHEN ACD011B = '8' THEN 'Spanish' -- categorize string values 
WHEN ACD011B IS NULL THEN NULL 
ELSE ACD011B 
 END as speak_spanish_at_home_nhw_or_nhb, 

CASE
            WHEN ACD011C = '9' THEN 'Other' -- categorize string values 
WHEN ACD011C IS NULL THEN NULL 
ELSE ACD011C 
 END as speak_other_language_at_home_nhw_or_nhb, 

CASE
            WHEN ACD040 = 1 THEN 'Only Spanish,' -- categorize numeric values
WHEN ACD040 = 2 THEN 'More Spanish than English' -- categorize numeric values
WHEN ACD040 = 3 THEN 'Both equally' -- categorize numeric values
WHEN ACD040 = 4 THEN 'More English than Spanish' -- categorize numeric values
WHEN ACD040 = 5 THEN 'Only English' -- categorize numeric values
WHEN ACD040 = 7 THEN 'Refused' -- categorize numeric values
WHEN ACD040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN ACD040 IS NULL THEN NULL 
ELSE ACD040 
 END as language_s_spoken_at_home_hispanics, 

CASE
            WHEN ACD110 = '1' THEN 'Only Non-English language' -- categorize string values 
WHEN ACD110 = '2' THEN 'More Non-English than English' -- categorize string values 
WHEN ACD110 = '3' THEN 'Both equally' -- categorize string values 
WHEN ACD110 = '4' THEN 'More English than Non-English' -- categorize string values 
WHEN ACD110 = '5' THEN 'Only English' -- categorize string values 
WHEN ACD110 = '7' THEN 'Refused' -- categorize string values 
WHEN ACD110 = '9' THEN 'Dont know' -- categorize string values 
WHEN ACD110 IS NULL THEN NULL 
ELSE ACD110 
 END as language_s_spoken_at_home_asians, 

 FROM {{ ref('stg_acculturation_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ACQ_J.htm
        