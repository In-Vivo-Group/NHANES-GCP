SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DLQ010 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ010 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ010 IS NULL THEN NULL 
ELSE DLQ010 
 END as have_serious_difficulty_hearing, 

CASE
            WHEN DLQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ020 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ020 IS NULL THEN NULL 
ELSE DLQ020 
 END as have_serious_difficulty_seeing, 

CASE
            WHEN DLQ040 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ040 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ040 IS NULL THEN NULL 
ELSE DLQ040 
 END as have_serious_difficulty_concentrating, 

CASE
            WHEN DLQ050 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ050 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ050 IS NULL THEN NULL 
ELSE DLQ050 
 END as have_serious_difficulty_walking, 

CASE
            WHEN DLQ060 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ060 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ060 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ060 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ060 IS NULL THEN NULL 
ELSE DLQ060 
 END as have_difficulty_dressing_or_bathing, 

CASE
            WHEN DLQ080 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ080 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ080 IS NULL THEN NULL 
ELSE DLQ080 
 END as have_difficulty_doing_errands_alone, 

-- DLQ090 as DLQ090, -- not included in table but included in docs without transformation logic 

CASE
            WHEN DLQ100 = 1 THEN 'Daily' -- categorize numeric values
WHEN DLQ100 = 2 THEN 'Weekly' -- categorize numeric values
WHEN DLQ100 = 3 THEN 'Monthly' -- categorize numeric values
WHEN DLQ100 = 4 THEN 'A few times a year' -- categorize numeric values
WHEN DLQ100 = 5 THEN 'Never' -- categorize numeric values
WHEN DLQ100 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ100 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ100 IS NULL THEN NULL 
ELSE DLQ100 
 END as how_often_do_you_feel_worried_or_anxious, 

CASE
            WHEN DLQ110 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ110 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ110 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ110 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ110 IS NULL THEN NULL 
ELSE DLQ110 
 END as take_medication_for_these_feelings, 

-- DLQ120 as DLQ120, -- not included in table but included in docs without transformation logic 

CASE
            WHEN DLQ130 = 1 THEN 'A little' -- categorize numeric values
WHEN DLQ130 = 2 THEN 'A lot' -- categorize numeric values
WHEN DLQ130 = 3 THEN 'Somewhere in between a little and a lot' -- categorize numeric values
WHEN DLQ130 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ130 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ130 IS NULL THEN NULL 
ELSE DLQ130 
 END as how_worried_or_anxious_were_you, 

CASE
            WHEN DLQ140 = 1 THEN 'Daily' -- categorize numeric values
WHEN DLQ140 = 2 THEN 'Weekly' -- categorize numeric values
WHEN DLQ140 = 3 THEN 'Monthly' -- categorize numeric values
WHEN DLQ140 = 4 THEN 'A few times a year' -- categorize numeric values
WHEN DLQ140 = 5 THEN 'Never' -- categorize numeric values
WHEN DLQ140 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ140 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ140 IS NULL THEN NULL 
ELSE DLQ140 
 END as how_often_do_you_feel_depressed, 

CASE
            WHEN DLQ150 = 1 THEN 'Yes' -- categorize numeric values
WHEN DLQ150 = 2 THEN 'No' -- categorize numeric values
WHEN DLQ150 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ150 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ150 IS NULL THEN NULL 
ELSE DLQ150 
 END as take_medication_for_depression, 

-- DLQ160 as DLQ160, -- not included in table but included in docs without transformation logic 

CASE
            WHEN DLQ170 = 1 THEN 'A little' -- categorize numeric values
WHEN DLQ170 = 2 THEN 'A lot' -- categorize numeric values
WHEN DLQ170 = 3 THEN 'Somewhere in between a little and a lot' -- categorize numeric values
WHEN DLQ170 = 7 THEN 'Refused' -- categorize numeric values
WHEN DLQ170 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DLQ170 IS NULL THEN NULL 
ELSE DLQ170 
 END as how_depressed_did_you_feel, 

 FROM {{ ref('stg_disability_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DLQ_J.htm
        