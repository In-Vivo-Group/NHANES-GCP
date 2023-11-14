SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN ECD010 IS NULL THEN NULL 
ELSE ECD010 
 END as mother_s_age_when_born, 

CASE
            WHEN ECQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN ECQ020 = 2 THEN 'No' -- categorize numeric values
WHEN ECQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN ECQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN ECQ020 IS NULL THEN NULL 
ELSE ECQ020 
 END as mother_smoked_when_pregnant, 

CASE
            WHEN ECD070A IS NULL THEN NULL 
ELSE ECD070A 
 END as weight_at_birth_pounds, 

CASE
            WHEN ECD070B IS NULL THEN NULL 
ELSE ECD070B 
 END as weight_at_birth_ounces, 

-- ECQ075 as ECQ075, -- not included in table but included in docs without transformation logic 

CASE
            WHEN ECQ080 = 1 THEN 'More than 5-1/2 lbs. (2500 g), or' -- categorize numeric values
WHEN ECQ080 = 2 THEN 'Less than 5-1/2 lbs. (2500 g)?' -- categorize numeric values
WHEN ECQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN ECQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN ECQ080 IS NULL THEN NULL 
ELSE ECQ080 
 END as weight_more_less_than_5_5_lbs, 

CASE
            WHEN ECQ090 = 1 THEN 'More than 9 lbs. (4100 g), or' -- categorize numeric values
WHEN ECQ090 = 2 THEN 'Less than 9 lbs. (4100 g)?' -- categorize numeric values
WHEN ECQ090 = 7 THEN 'Refused' -- categorize numeric values
WHEN ECQ090 = 9 THEN 'Dont know' -- categorize numeric values
WHEN ECQ090 IS NULL THEN NULL 
ELSE ECQ090 
 END as weight_more_less_than_9_0_lbs, 

-- ECQ095 as ECQ095, -- not included in table but included in docs without transformation logic 

CASE
            WHEN WHQ030E = '1' THEN 'Overweight' -- categorize string values 
WHEN WHQ030E = '2' THEN 'Underweight' -- categorize string values 
WHEN WHQ030E = '3' THEN 'About the right weight' -- categorize string values 
WHEN WHQ030E = '7' THEN 'Refused' -- categorize string values 
WHEN WHQ030E = '9' THEN 'Dont know' -- categorize string values 
WHEN WHQ030E IS NULL THEN NULL 
ELSE WHQ030E 
 END as how_do_you_consider_your_child_s_weight, 

CASE
            WHEN MCQ080E = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ080E = '2' THEN 'No' -- categorize string values 
WHEN MCQ080E = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ080E = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ080E IS NULL THEN NULL 
ELSE MCQ080E 
 END as your_child_was_overweight, 

CASE
            WHEN ECQ150 = '1' THEN 'Yes' -- categorize string values 
WHEN ECQ150 = '2' THEN 'No' -- categorize string values 
WHEN ECQ150 = '7' THEN 'Refused' -- categorize string values 
WHEN ECQ150 = '9' THEN 'Dont know' -- categorize string values 
WHEN ECQ150 IS NULL THEN NULL 
ELSE ECQ150 
 END as help_your_child_control_weight, 

 FROM {{ ref('stg_early_childhood_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ECQ.htm
        