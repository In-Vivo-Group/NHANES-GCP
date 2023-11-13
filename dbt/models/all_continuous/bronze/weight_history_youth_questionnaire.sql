SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WHQ030M = 1 THEN 'Fat or overweight' -- categorize numeric values
WHEN WHQ030M = 2 THEN 'Too thin' -- categorize numeric values
WHEN WHQ030M = 3 THEN 'About the right weight' -- categorize numeric values
WHEN WHQ030M = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ030M = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ030M IS NULL THEN NULL 
ELSE WHQ030M 
 END as how_do_you_consider_your_weight, 

CASE
            WHEN WHQ500 = 1 THEN 'Lose weight' -- categorize numeric values
WHEN WHQ500 = 2 THEN 'Gain weight' -- categorize numeric values
WHEN WHQ500 = 3 THEN 'Stay the same weight' -- categorize numeric values
WHEN WHQ500 = 4 THEN 'Not trying to do anything about your weight' -- categorize numeric values
WHEN WHQ500 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ500 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ500 IS NULL THEN NULL 
ELSE WHQ500 
 END as trying_to_do_about_weight, 

CASE
            WHEN WHQ520 = 1 THEN 'Never' -- categorize numeric values
WHEN WHQ520 = 2 THEN 'Sometimes' -- categorize numeric values
WHEN WHQ520 = 3 THEN 'A lot' -- categorize numeric values
WHEN WHQ520 = 7 THEN 'Refused' -- categorize numeric values
WHEN WHQ520 = 9 THEN 'Dont know' -- categorize numeric values
WHEN WHQ520 IS NULL THEN NULL 
ELSE WHQ520 
 END as how_often_tried_to_lose_weight, 

 FROM {{ ref('stg_weight_history_youth_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/WHQMEC_J.htm
        