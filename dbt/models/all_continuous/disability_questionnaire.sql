SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN DLQ010 = 1 THEN 'Yes' 
WHEN DLQ010 = 2 THEN 'No' 
WHEN DLQ010 = 7 THEN 'Refused' 
WHEN DLQ010 = 9 THEN 'Dont know' 
WHEN DLQ010 IS NULL THEN NULL 
ELSE NULL 
 END as have_serious_difficulty_hearing, 

CASE
        WHEN DLQ020 = 1 THEN 'Yes' 
WHEN DLQ020 = 2 THEN 'No' 
WHEN DLQ020 = 7 THEN 'Refused' 
WHEN DLQ020 = 9 THEN 'Dont know' 
WHEN DLQ020 IS NULL THEN NULL 
ELSE NULL 
 END as have_serious_difficulty_seeing, 

CASE
        WHEN DLQ040 = 1 THEN 'Yes' 
WHEN DLQ040 = 2 THEN 'No' 
WHEN DLQ040 = 7 THEN 'Refused' 
WHEN DLQ040 = 9 THEN 'Dont know' 
WHEN DLQ040 IS NULL THEN NULL 
ELSE NULL 
 END as have_serious_difficulty_concentrating, 

CASE
        WHEN DLQ050 = 1 THEN 'Yes' 
WHEN DLQ050 = 2 THEN 'No' 
WHEN DLQ050 = 7 THEN 'Refused' 
WHEN DLQ050 = 9 THEN 'Dont know' 
WHEN DLQ050 IS NULL THEN NULL 
ELSE NULL 
 END as have_serious_difficulty_walking, 

CASE
        WHEN DLQ060 = 1 THEN 'Yes' 
WHEN DLQ060 = 2 THEN 'No' 
WHEN DLQ060 = 7 THEN 'Refused' 
WHEN DLQ060 = 9 THEN 'Dont know' 
WHEN DLQ060 IS NULL THEN NULL 
ELSE NULL 
 END as have_difficulty_dressing_or_bathing, 

CASE
        WHEN DLQ080 = 1 THEN 'Yes' 
WHEN DLQ080 = 2 THEN 'No' 
WHEN DLQ080 = 7 THEN 'Refused' 
WHEN DLQ080 = 9 THEN 'Dont know' 
WHEN DLQ080 IS NULL THEN NULL 
ELSE NULL 
 END as have_difficulty_doing_errands_alone, 

CASE
        WHEN DLQ100 = 1 THEN 'Daily' 
WHEN DLQ100 = 2 THEN 'Weekly' 
WHEN DLQ100 = 3 THEN 'Monthly' 
WHEN DLQ100 = 4 THEN 'A few times a year' 
WHEN DLQ100 = 5 THEN 'Never' 
WHEN DLQ100 = 7 THEN 'Refused' 
WHEN DLQ100 = 9 THEN 'Dont know' 
WHEN DLQ100 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_do_you_feel_worried_or_anxious, 

CASE
        WHEN DLQ110 = 1 THEN 'Yes' 
WHEN DLQ110 = 2 THEN 'No' 
WHEN DLQ110 = 7 THEN 'Refused' 
WHEN DLQ110 = 9 THEN 'Dont know' 
WHEN DLQ110 IS NULL THEN NULL 
ELSE NULL 
 END as take_medication_for_these_feelings, 

CASE
        WHEN DLQ130 = 1 THEN 'A little' 
WHEN DLQ130 = 2 THEN 'A lot' 
WHEN DLQ130 = 3 THEN 'Somewhere in between a little and a lot' 
WHEN DLQ130 = 7 THEN 'Refused' 
WHEN DLQ130 = 9 THEN 'Dont know' 
WHEN DLQ130 IS NULL THEN NULL 
ELSE NULL 
 END as how_worried_or_anxious_were_you, 

CASE
        WHEN DLQ140 = 1 THEN 'Daily' 
WHEN DLQ140 = 2 THEN 'Weekly' 
WHEN DLQ140 = 3 THEN 'Monthly' 
WHEN DLQ140 = 4 THEN 'A few times a year' 
WHEN DLQ140 = 5 THEN 'Never' 
WHEN DLQ140 = 7 THEN 'Refused' 
WHEN DLQ140 = 9 THEN 'Dont know' 
WHEN DLQ140 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_do_you_feel_depressed, 

CASE
        WHEN DLQ150 = 1 THEN 'Yes' 
WHEN DLQ150 = 2 THEN 'No' 
WHEN DLQ150 = 7 THEN 'Refused' 
WHEN DLQ150 = 9 THEN 'Dont know' 
WHEN DLQ150 IS NULL THEN NULL 
ELSE NULL 
 END as take_medication_for_depression, 

CASE
        WHEN DLQ170 = 1 THEN 'A little' 
WHEN DLQ170 = 2 THEN 'A lot' 
WHEN DLQ170 = 3 THEN 'Somewhere in between a little and a lot' 
WHEN DLQ170 = 7 THEN 'Refused' 
WHEN DLQ170 = 9 THEN 'Dont know' 
WHEN DLQ170 IS NULL THEN NULL 
ELSE NULL 
 END as how_depressed_did_you_feel, 

 FROM {{ ref('stg_disability_questionnaire') }}