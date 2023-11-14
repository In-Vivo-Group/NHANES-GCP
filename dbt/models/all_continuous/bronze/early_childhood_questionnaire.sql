SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN ECD010 IS NULL THEN NULL 
ELSE SAFE_CAST(ECD010 AS STRING) 
 END as mother_s_age_when_born, 

CASE
            WHEN SAFE_CAST(ECQ020 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ECQ020 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ECQ020 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ECQ020 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ020 AS STRING) 
 END as mother_smoked_when_pregnant, 

CASE
            WHEN ECD070A IS NULL THEN NULL 
ELSE SAFE_CAST(ECD070A AS STRING) 
 END as weight_at_birth_pounds, 

CASE
            WHEN ECD070B IS NULL THEN NULL 
ELSE SAFE_CAST(ECD070B AS STRING) 
 END as weight_at_birth_ounces, 

-- ECQ075 as ECQ075, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(ECQ080 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'More than 5-1/2 lbs. (2500 g), or' -- categorize numeric values
WHEN SAFE_CAST(ECQ080 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Less than 5-1/2 lbs. (2500 g)?' -- categorize numeric values
WHEN SAFE_CAST(ECQ080 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ECQ080 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ080 AS STRING) 
 END as weight_more_less_than_5_5_lbs, 

CASE
            WHEN SAFE_CAST(ECQ090 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'More than 9 lbs. (4100 g), or' -- categorize numeric values
WHEN SAFE_CAST(ECQ090 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Less than 9 lbs. (4100 g)?' -- categorize numeric values
WHEN SAFE_CAST(ECQ090 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ECQ090 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ090 AS STRING) 
 END as weight_more_less_than_9_0_lbs, 

-- ECQ095 as ECQ095, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(WHQ030E,'.0','') AS INT64) AS STRING) = '1' THEN 'Overweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(WHQ030E,'.0','') AS INT64) AS STRING) = '2' THEN 'Underweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(WHQ030E,'.0','') AS INT64) AS STRING) = '3' THEN 'About the right weight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(WHQ030E,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(WHQ030E,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN WHQ030E IS NULL THEN NULL 
ELSE SAFE_CAST(WHQ030E AS STRING) 
 END as how_do_you_consider_your_child_s_weight, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(MCQ080E,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(MCQ080E,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(MCQ080E,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(MCQ080E,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ080E IS NULL THEN NULL 
ELSE SAFE_CAST(MCQ080E AS STRING) 
 END as your_child_was_overweight, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(ECQ150,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ECQ150,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ECQ150,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(ECQ150,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ECQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ150 AS STRING) 
 END as help_your_child_control_weight, 

 FROM {{ ref('stg_early_childhood_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ECQ.htm
        