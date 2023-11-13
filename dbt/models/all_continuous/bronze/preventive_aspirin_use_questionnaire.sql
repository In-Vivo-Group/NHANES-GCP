SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN RXQ510 = 1 THEN 'Yes' -- categorize numeric values
WHEN RXQ510 = 2 THEN 'No' -- categorize numeric values
WHEN RXQ510 = 7 THEN 'Refused' -- categorize numeric values
WHEN RXQ510 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ510 IS NULL THEN NULL 
ELSE RXQ510 
 END as dr_told_to_take_daily_low_dose_aspirin, 

CASE
            WHEN RXQ515 = 1 THEN 'Yes' -- categorize numeric values
WHEN RXQ515 = 2 THEN 'No' -- categorize numeric values
WHEN RXQ515 = 3 THEN 'Sometimes' -- categorize numeric values
WHEN RXQ515 = 4 THEN 'Stopped aspirin use due to side effects' -- categorize numeric values
WHEN RXQ515 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ515 IS NULL THEN NULL 
ELSE RXQ515 
 END as followed_advice_took_low_dose_aspirin, 

CASE
            WHEN RXQ520 = 1 THEN 'Yes' -- categorize numeric values
WHEN RXQ520 = 2 THEN 'No' -- categorize numeric values
WHEN RXQ520 = 7 THEN 'Refused' -- categorize numeric values
WHEN RXQ520 = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ520 IS NULL THEN NULL 
ELSE RXQ520 
 END as taking_low_dose_aspirin_on_your_own, 

CASE
            WHEN RXQ525G = 1 THEN 'One every day' -- categorize numeric values
WHEN RXQ525G = 2 THEN 'One every other day' -- categorize numeric values
WHEN RXQ525G = 3 THEN 'Another schedule' -- categorize numeric values
WHEN RXQ525G = 7 THEN 'Refused' -- categorize numeric values
WHEN RXQ525G = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ525G IS NULL THEN NULL 
ELSE RXQ525G 
 END as schedule_frequency_of_aspirin_use, 

CASE
            WHEN RXQ525Q IS NULL THEN NULL 
ELSE RXQ525Q 
 END as another_asa_schedule_number_of_doses, 

CASE
            WHEN RXQ525U = 1 THEN 'Per day' -- categorize numeric values
WHEN RXQ525U = 2 THEN 'Per week' -- categorize numeric values
WHEN RXQ525U = 9 THEN 'Dont know' -- categorize numeric values
WHEN RXQ525U IS NULL THEN NULL 
ELSE RXQ525U 
 END as another_asa_schedule_frequency_of_doses, 

CASE
            WHEN RXD530 IS NULL THEN NULL 
ELSE RXD530 
 END as aspirin_dose_in_milligrams_mg, 

 FROM {{ ref('stg_preventive_aspirin_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/RXQASA_J.htm
        