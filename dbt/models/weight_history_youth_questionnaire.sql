SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WHQ030M = 1 THEN 'Fat or overweight' 
WHEN WHQ030M = 2 THEN 'Too thin' 
WHEN WHQ030M = 3 THEN 'About the right weight' 
WHEN WHQ030M = 7 THEN 'Refused' 
WHEN WHQ030M = 9 THEN 'Don't know' 
WHEN WHQ030M IS NULL THEN NULL 
ELSE NULL 
 END as how_do_you_consider_your_weight,
CASE
    WHEN WHQ500 = 1 THEN 'Lose weight' 
WHEN WHQ500 = 2 THEN 'Gain weight' 
WHEN WHQ500 = 3 THEN 'Stay the same weight' 
WHEN WHQ500 = 4 THEN 'Not trying to do anything about your weight' 
WHEN WHQ500 = 7 THEN 'Refused' 
WHEN WHQ500 = 9 THEN 'Don't know' 
WHEN WHQ500 IS NULL THEN NULL 
ELSE NULL 
 END as trying_to_do_about_weight,
CASE
    WHEN WHQ520 = 1 THEN 'Never' 
WHEN WHQ520 = 2 THEN 'Sometimes' 
WHEN WHQ520 = 3 THEN 'A lot' 
WHEN WHQ520 = 7 THEN 'Refused' 
WHEN WHQ520 = 9 THEN 'Don't know' 
WHEN WHQ520 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_tried_to_lose_weight,
 FROM {ref('stg_weight_history_youth_questionnaire'})