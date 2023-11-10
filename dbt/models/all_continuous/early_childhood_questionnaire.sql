SELECT
SEQN as respondent_sequence_number,
WHEN ECD010 IS NOT NULL THEN ECD010WHEN ECD010 IS NULL THEN NULL 
ELSE NULL 
 END as mother_s_age_when_born,
CASE
        WHEN ECQ020 = 1 THEN 'Yes' 
WHEN ECQ020 = 2 THEN 'No' 
WHEN ECQ020 = 7 THEN 'Refused' 
WHEN ECQ020 = 9 THEN 'Don\'t know' 
WHEN ECQ020 IS NULL THEN NULL 
ELSE NULL 
 END as mother_smoked_when_pregnant,
WHEN ECD070A IS NOT NULL THEN ECD070AWHEN ECD070A IS NULL THEN NULL 
ELSE NULL 
 END as weight_at_birth_pounds,
WHEN ECD070B IS NOT NULL THEN ECD070BWHEN ECD070B IS NULL THEN NULL 
ELSE NULL 
 END as weight_at_birth_ounces,
CASE
        WHEN ECQ080 = 1 THEN 'More than 5-1/2 lbs. (2500 g), or' 
WHEN ECQ080 = 2 THEN 'Less than 5-1/2 lbs. (2500 g)?' 
WHEN ECQ080 = 7 THEN 'Refused' 
WHEN ECQ080 = 9 THEN 'Don\'t know' 
WHEN ECQ080 IS NULL THEN NULL 
ELSE NULL 
 END as weight_more_less_than_5_5_lbs,
CASE
        WHEN ECQ090 = 1 THEN 'More than 9 lbs. (4100 g), or' 
WHEN ECQ090 = 2 THEN 'Less than 9 lbs. (4100 g)?' 
WHEN ECQ090 = 7 THEN 'Refused' 
WHEN ECQ090 = 9 THEN 'Don\'t know' 
WHEN ECQ090 IS NULL THEN NULL 
ELSE NULL 
 END as weight_more_less_than_9_0_lbs,
CASE
        WHEN WHQ030E = '1' THEN 'Overweight' 
WHEN WHQ030E = '2' THEN 'Underweight' 
WHEN WHQ030E = '3' THEN 'About the right weight' 
WHEN WHQ030E = '7' THEN 'Refused' 
WHEN WHQ030E = '9' THEN 'Don\'t know' 
WHEN WHQ030E IS NULL THEN NULL 
ELSE NULL 
 END as how_do_you_consider_your_child_s_weight,
CASE
        WHEN MCQ080E = '1' THEN 'Yes' 
WHEN MCQ080E = '2' THEN 'No' 
WHEN MCQ080E = '7' THEN 'Refused' 
WHEN MCQ080E = '9' THEN 'Don\'t know' 
WHEN MCQ080E IS NULL THEN NULL 
ELSE NULL 
 END as your_child_was_overweight,
CASE
        WHEN ECQ150 = '1' THEN 'Yes' 
WHEN ECQ150 = '2' THEN 'No' 
WHEN ECQ150 = '7' THEN 'Refused' 
WHEN ECQ150 = '9' THEN 'Don\'t know' 
WHEN ECQ150 IS NULL THEN NULL 
ELSE NULL 
 END as help_your_child_control_weight,
 FROM {{ ref('stg_early_childhood_questionnaire') }}