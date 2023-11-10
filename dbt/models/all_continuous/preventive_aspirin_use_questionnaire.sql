SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN RXQ510 = 1 THEN 'Yes' 
WHEN RXQ510 = 2 THEN 'No' 
WHEN RXQ510 = 7 THEN 'Refused' 
WHEN RXQ510 = 9 THEN 'Dont know' 
WHEN RXQ510 IS NULL THEN NULL 
ELSE NULL 
 END as dr_told_to_take_daily_low_dose_aspirin, 

CASE
        WHEN RXQ515 = 1 THEN 'Yes' 
WHEN RXQ515 = 2 THEN 'No' 
WHEN RXQ515 = 3 THEN 'Sometimes' 
WHEN RXQ515 = 4 THEN 'Stopped aspirin use due to side effects' 
WHEN RXQ515 = 9 THEN 'Dont know' 
WHEN RXQ515 IS NULL THEN NULL 
ELSE NULL 
 END as followed_advice_took_low_dose_aspirin, 

CASE
        WHEN RXQ520 = 1 THEN 'Yes' 
WHEN RXQ520 = 2 THEN 'No' 
WHEN RXQ520 = 7 THEN 'Refused' 
WHEN RXQ520 = 9 THEN 'Dont know' 
WHEN RXQ520 IS NULL THEN NULL 
ELSE NULL 
 END as taking_low_dose_aspirin_on_your_own, 

CASE
        WHEN RXQ525G = 1 THEN 'One every day' 
WHEN RXQ525G = 2 THEN 'One every other day' 
WHEN RXQ525G = 3 THEN 'Another schedule' 
WHEN RXQ525G = 7 THEN 'Refused' 
WHEN RXQ525G = 9 THEN 'Dont know' 
WHEN RXQ525G IS NULL THEN NULL 
ELSE NULL 
 END as schedule_frequency_of_aspirin_use, 

CASE
        WHEN RXQ525Q IS NOT NULL THEN RXQ525Q 
WHEN RXQ525Q IS NULL THEN NULL 
ELSE NULL 
 END as another_asa_schedule_number_of_doses, 

CASE
        WHEN RXQ525U = 1 THEN 'Per day' 
WHEN RXQ525U = 2 THEN 'Per week' 
WHEN RXQ525U = 9 THEN 'Dont know' 
WHEN RXQ525U IS NULL THEN NULL 
ELSE NULL 
 END as another_asa_schedule_frequency_of_doses, 

CASE
        WHEN RXD530 IS NOT NULL THEN RXD530 
WHEN RXD530 IS NOT NULL THEN RXD530 
WHEN RXD530 IS NOT NULL THEN RXD530 
WHEN RXD530 IS NOT NULL THEN RXD530 
WHEN RXD530 IS NULL THEN NULL 
ELSE NULL 
 END as aspirin_dose_in_milligrams_mg, 

 FROM {{ ref('stg_preventive_aspirin_use_questionnaire') }}