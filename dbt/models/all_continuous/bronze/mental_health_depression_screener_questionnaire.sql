SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DPQ010 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ010 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ010 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ010 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ010 IS NULL THEN NULL 
ELSE DPQ010 
 END as have_little_interest_in_doing_things, 

CASE
            WHEN DPQ020 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ020 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ020 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ020 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ020 IS NULL THEN NULL 
ELSE DPQ020 
 END as feeling_down_depressed_or_hopeless, 

CASE
            WHEN DPQ030 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ030 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ030 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ030 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ030 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ030 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ030 IS NULL THEN NULL 
ELSE DPQ030 
 END as trouble_sleeping_or_sleeping_too_much, 

CASE
            WHEN DPQ040 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ040 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ040 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ040 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ040 IS NULL THEN NULL 
ELSE DPQ040 
 END as feeling_tired_or_having_little_energy, 

CASE
            WHEN DPQ050 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ050 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ050 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ050 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ050 IS NULL THEN NULL 
ELSE DPQ050 
 END as poor_appetite_or_overeating, 

CASE
            WHEN DPQ060 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ060 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ060 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ060 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ060 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ060 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ060 IS NULL THEN NULL 
ELSE DPQ060 
 END as feeling_bad_about_yourself, 

CASE
            WHEN DPQ070 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ070 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ070 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ070 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ070 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ070 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ070 IS NULL THEN NULL 
ELSE DPQ070 
 END as trouble_concentrating_on_things, 

CASE
            WHEN DPQ080 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ080 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ080 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ080 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ080 IS NULL THEN NULL 
ELSE DPQ080 
 END as moving_or_speaking_slowly_or_too_fast, 

CASE
            WHEN DPQ090 = 0 THEN 'Not at all' -- categorize numeric values
WHEN DPQ090 = 1 THEN 'Several days' -- categorize numeric values
WHEN DPQ090 = 2 THEN 'More than half the days' -- categorize numeric values
WHEN DPQ090 = 3 THEN 'Nearly every day' -- categorize numeric values
WHEN DPQ090 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ090 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ090 IS NULL THEN NULL 
ELSE DPQ090 
 END as thought_you_would_be_better_off_dead, 

CASE
            WHEN DPQ100 = 0 THEN 'Not at all difficult,' -- categorize numeric values
WHEN DPQ100 = 1 THEN 'Somewhat difficult,' -- categorize numeric values
WHEN DPQ100 = 2 THEN 'Very difficult,' -- categorize numeric values
WHEN DPQ100 = 3 THEN 'Extremely difficult' -- categorize numeric values
WHEN DPQ100 = 7 THEN 'Refused' -- categorize numeric values
WHEN DPQ100 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DPQ100 IS NULL THEN NULL 
ELSE DPQ100 
 END as difficulty_these_problems_have_caused, 

 FROM {{ ref('stg_mental_health_depression_screener_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DPQ_J.htm
        