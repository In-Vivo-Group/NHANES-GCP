SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(DLQ010 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ010 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ010 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ010 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ010 AS STRING) 
 END as have_serious_difficulty_hearing, 

CASE
            WHEN SAFE_CAST(DLQ020 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ020 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ020 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ020 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ020 AS STRING) 
 END as have_serious_difficulty_seeing, 

CASE
            WHEN SAFE_CAST(DLQ040 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ040 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ040 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ040 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ040 AS STRING) 
 END as have_serious_difficulty_concentrating, 

CASE
            WHEN SAFE_CAST(DLQ050 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ050 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ050 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ050 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ050 AS STRING) 
 END as have_serious_difficulty_walking, 

CASE
            WHEN SAFE_CAST(DLQ060 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ060 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ060 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ060 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ060 AS STRING) 
 END as have_difficulty_dressing_or_bathing, 

CASE
            WHEN SAFE_CAST(DLQ080 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ080 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ080 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ080 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ080 AS STRING) 
 END as have_difficulty_doing_errands_alone, 

-- DLQ090 as DLQ090, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Daily' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weekly' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Monthly' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'A few times a year' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ100 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ100 AS STRING) 
 END as how_often_do_you_feel_worried_or_anxious, 

CASE
            WHEN SAFE_CAST(DLQ110 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ110 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ110 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ110 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ110 AS STRING) 
 END as take_medication_for_these_feelings, 

-- DLQ120 as DLQ120, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DLQ130 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'A little' -- categorize numeric values
WHEN SAFE_CAST(DLQ130 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'A lot' -- categorize numeric values
WHEN SAFE_CAST(DLQ130 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Somewhere in between a little and a lot' -- categorize numeric values
WHEN SAFE_CAST(DLQ130 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ130 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ130 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ130 AS STRING) 
 END as how_worried_or_anxious_were_you, 

CASE
            WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Daily' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Weekly' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Monthly' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'A few times a year' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ140 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ140 AS STRING) 
 END as how_often_do_you_feel_depressed, 

CASE
            WHEN SAFE_CAST(DLQ150 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DLQ150 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DLQ150 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ150 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ150 AS STRING) 
 END as take_medication_for_depression, 

-- DLQ160 as DLQ160, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DLQ170 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'A little' -- categorize numeric values
WHEN SAFE_CAST(DLQ170 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'A lot' -- categorize numeric values
WHEN SAFE_CAST(DLQ170 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Somewhere in between a little and a lot' -- categorize numeric values
WHEN SAFE_CAST(DLQ170 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DLQ170 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DLQ170 IS NULL THEN NULL 
ELSE SAFE_CAST(DLQ170 AS STRING) 
 END as how_depressed_did_you_feel, 

 FROM {{ ref('stg_disability_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DLQ_J.htm
        