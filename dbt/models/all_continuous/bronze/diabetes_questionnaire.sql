SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(DIQ010 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DIQ010 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DIQ010 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Borderline' -- categorize numeric values
WHEN SAFE_CAST(DIQ010 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DIQ010 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ010 AS STRING) 
 END as doctor_told_you_have_diabetes, 

CASE
            WHEN SAFE_CAST(DID040 AS FLOAT64) > 81.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID040 IS NULL THEN NULL 
ELSE SAFE_CAST(DID040 AS FLOAT64) 
 END as age_when_first_told_you_had_diabetes, 

-- DIQ159 as DIQ159, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ160,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ160,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ160,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ160,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ160 AS STRING) 
 END as ever_told_you_have_prediabetes, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ180,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ180,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ180,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ180,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ180 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ180 AS STRING) 
 END as had_blood_tested_past_three_years, 

CASE
            WHEN SAFE_CAST(DIQ050 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DIQ050 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DIQ050 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DIQ050 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ050 AS STRING) 
 END as taking_insulin_now, 

CASE
            WHEN SAFE_CAST(DID060 AS FLOAT64) > 61.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID060 IS NULL THEN NULL 
ELSE SAFE_CAST(DID060 AS FLOAT64) 
 END as how_long_taking_insulin, 

CASE
            WHEN SAFE_CAST(DIQ060U AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(DIQ060U AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Years' -- categorize numeric values
WHEN DIQ060U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ060U AS STRING) 
 END as unit_of_measure_month_year, 

-- DIQ065 as DIQ065, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DIQ070 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DIQ070 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DIQ070 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DIQ070 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ070 AS STRING) 
 END as take_diabetic_pills_to_lower_blood_sugar, 

-- DIQ229 as DIQ229, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '1' THEN '1 year ago or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '2' THEN 'More than 1 year ago but no more than 2 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '3' THEN 'More than 2 years ago but no more than 5 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '4' THEN 'More than 5 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ230,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ230 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ230 AS STRING) 
 END as how_long_ago_saw_a_diabetes_specialist, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ240,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ240,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ240,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ240,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ240 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ240 AS STRING) 
 END as is_there_one_dr_you_see_for_diabetes, 

CASE
            WHEN SAFE_CAST(DID250 AS FLOAT64) > 42.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID250 IS NULL THEN NULL 
ELSE SAFE_CAST(DID250 AS FLOAT64) 
 END as past_year_how_many_times_seen_doctor, 

CASE
            WHEN SAFE_CAST(DID260 AS FLOAT64) > 52.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID260 IS NULL THEN NULL 
ELSE SAFE_CAST(DID260 AS FLOAT64) 
 END as how_often_check_blood_for_glucose_sugar, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ260U,'.0','') AS INT64) AS STRING) = '1' THEN 'Per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ260U,'.0','') AS INT64) AS STRING) = '2' THEN 'Per week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ260U,'.0','') AS INT64) AS STRING) = '3' THEN 'Per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ260U,'.0','') AS INT64) AS STRING) = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ260U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ260U AS STRING) 
 END as unit_of_measure_day_week_month_year, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ275,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ275,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ275,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ275,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ275 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ275 AS STRING) 
 END as past_year_dr_checked_for_a1c, 

CASE
            WHEN SAFE_CAST(DIQ280 AS FLOAT64) > 18.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ280 AS FLOAT64) 
 END as what_was_your_last_a1c_level, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 6' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '2' THEN 'Less than 7' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '3' THEN 'Less than 8' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '4' THEN 'Less than 9' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '5' THEN 'Less than 10' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '6' THEN 'Provider did not specify goal' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ291,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DIQ291 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ291 AS STRING) 
 END as what_does_dr_say_a1c_should_be, 

-- DIQ295 as DIQ295, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(DIQ300S AS FLOAT64) > 214.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ300S IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ300S AS FLOAT64) 
 END as what_was_your_recent_sbp, 

CASE
            WHEN SAFE_CAST(DIQ300D AS FLOAT64) > 192.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ300D IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ300D AS FLOAT64) 
 END as what_was_your_recent_dbp, 

CASE
            WHEN SAFE_CAST(DID310S AS FLOAT64) > 182.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID310S IS NULL THEN NULL 
ELSE SAFE_CAST(DID310S AS FLOAT64) 
 END as what_does_dr_say_sbp_should_be, 

CASE
            WHEN SAFE_CAST(DID310D AS FLOAT64) > 142.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID310D IS NULL THEN NULL 
ELSE SAFE_CAST(DID310D AS FLOAT64) 
 END as what_does_dr_say_dbp_should_be, 

CASE
            WHEN SAFE_CAST(DID320 AS FLOAT64) > 342.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID320 IS NULL THEN NULL 
ELSE SAFE_CAST(DID320 AS FLOAT64) 
 END as what_was_most_recent_ldl_number, 

CASE
            WHEN SAFE_CAST(DID330 AS FLOAT64) > 252.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID330 IS NULL THEN NULL 
ELSE SAFE_CAST(DID330 AS FLOAT64) 
 END as what_does_dr_say_ldl_should_be, 

CASE
            WHEN SAFE_CAST(DID341 AS FLOAT64) > 108.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID341 IS NULL THEN NULL 
ELSE SAFE_CAST(DID341 AS FLOAT64) 
 END as past_year_times_dr_check_feet_for_sores, 

CASE
            WHEN SAFE_CAST(DID350 AS FLOAT64) > 32.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID350 IS NULL THEN NULL 
ELSE SAFE_CAST(DID350 AS FLOAT64) 
 END as how_often_do_you_check_your_feet, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ350U,'.0','') AS INT64) AS STRING) = '1' THEN 'Per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ350U,'.0','') AS INT64) AS STRING) = '2' THEN 'Per week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ350U,'.0','') AS INT64) AS STRING) = '3' THEN 'Per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ350U,'.0','') AS INT64) AS STRING) = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ350U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ350U AS STRING) 
 END as unit_of_measure_day_week_month_year_DIQ350U, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 1 month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '2' THEN '1-12 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '3' THEN '13-24 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '4' THEN 'Greater than 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DIQ360,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ360 AS STRING) 
 END as last_time_had_pupils_dilated_for_exam, 

CASE
            WHEN SAFE_CAST(DIQ080 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DIQ080 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DIQ080 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DIQ080 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ080 AS STRING) 
 END as diabetes_affected_eyes_had_retinopathy, 

 FROM {{ ref('stg_diabetes_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DIQ.htm
        