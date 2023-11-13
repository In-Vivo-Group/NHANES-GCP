SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN DIQ010 = 1 THEN 'Yes' -- categorize numeric values
WHEN DIQ010 = 2 THEN 'No' -- categorize numeric values
WHEN DIQ010 = 3 THEN 'Borderline' -- categorize numeric values
WHEN DIQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN DIQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DIQ010 IS NULL THEN NULL 
ELSE DIQ010 
 END as doctor_told_you_have_diabetes, 

CASE
    WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID040 IS NULL THEN NULL 
ELSE DID040 
 END as age_when_first_told_you_had_diabetes, 

DIQ159 as DIQ159, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN DIQ160 = '1' THEN 'Yes' -- categorize string values 
WHEN DIQ160 = '2' THEN 'No' -- categorize string values 
WHEN DIQ160 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ160 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ160 IS NULL THEN NULL 
ELSE DIQ160 
 END as ever_told_you_have_prediabetes, 

CASE
    WHEN DIQ180 = '1' THEN 'Yes' -- categorize string values 
WHEN DIQ180 = '2' THEN 'No' -- categorize string values 
WHEN DIQ180 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ180 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ180 IS NULL THEN NULL 
ELSE DIQ180 
 END as had_blood_tested_past_three_years, 

CASE
    WHEN DIQ050 = 1 THEN 'Yes' -- categorize numeric values
WHEN DIQ050 = 2 THEN 'No' -- categorize numeric values
WHEN DIQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN DIQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DIQ050 IS NULL THEN NULL 
ELSE DIQ050 
 END as taking_insulin_now, 

CASE
    WHEN DID060 IS NOT NULL THEN SAFE_CAST(DID060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID060 IS NOT NULL THEN SAFE_CAST(DID060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID060 IS NOT NULL THEN SAFE_CAST(DID060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID060 IS NOT NULL THEN SAFE_CAST(DID060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID060 IS NULL THEN NULL 
ELSE DID060 
 END as how_long_taking_insulin, 

CASE
    WHEN DIQ060U = 1 THEN 'Months' -- categorize numeric values
WHEN DIQ060U = 2 THEN 'Years' -- categorize numeric values
WHEN DIQ060U IS NULL THEN NULL 
ELSE DIQ060U 
 END as unit_of_measure_month_year, 

DIQ065 as DIQ065, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN DIQ070 = 1 THEN 'Yes' -- categorize numeric values
WHEN DIQ070 = 2 THEN 'No' -- categorize numeric values
WHEN DIQ070 = 7 THEN 'Refused' -- categorize numeric values
WHEN DIQ070 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DIQ070 IS NULL THEN NULL 
ELSE DIQ070 
 END as take_diabetic_pills_to_lower_blood_sugar, 

DIQ229 as DIQ229, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN DIQ230 = '1' THEN '1 year ago or less' -- categorize string values 
WHEN DIQ230 = '2' THEN 'More than 1 year ago but no more than 2 years ago' -- categorize string values 
WHEN DIQ230 = '3' THEN 'More than 2 years ago but no more than 5 years ago' -- categorize string values 
WHEN DIQ230 = '4' THEN 'More than 5 years ago' -- categorize string values 
WHEN DIQ230 = '5' THEN 'Never' -- categorize string values 
WHEN DIQ230 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ230 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ230 IS NULL THEN NULL 
ELSE DIQ230 
 END as how_long_ago_saw_a_diabetes_specialist, 

CASE
    WHEN DIQ240 = '1' THEN 'Yes' -- categorize string values 
WHEN DIQ240 = '2' THEN 'No' -- categorize string values 
WHEN DIQ240 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ240 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ240 IS NULL THEN NULL 
ELSE DIQ240 
 END as is_there_one_dr_you_see_for_diabetes, 

CASE
    WHEN DID250 IS NOT NULL THEN SAFE_CAST(DID250 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID250 IS NOT NULL THEN SAFE_CAST(DID250 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID250 IS NOT NULL THEN SAFE_CAST(DID250 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID250 IS NOT NULL THEN SAFE_CAST(DID250 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID250 IS NULL THEN NULL 
ELSE DID250 
 END as past_year_how_many_times_seen_doctor, 

CASE
    WHEN DID260 IS NOT NULL THEN SAFE_CAST(DID260 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID260 IS NOT NULL THEN SAFE_CAST(DID260 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID260 IS NOT NULL THEN SAFE_CAST(DID260 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID260 IS NOT NULL THEN SAFE_CAST(DID260 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID260 IS NULL THEN NULL 
ELSE DID260 
 END as how_often_check_blood_for_glucose_sugar, 

CASE
    WHEN DIQ260U = '1' THEN 'Per day' -- categorize string values 
WHEN DIQ260U = '2' THEN 'Per week' -- categorize string values 
WHEN DIQ260U = '3' THEN 'Per month' -- categorize string values 
WHEN DIQ260U = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ260U IS NULL THEN NULL 
ELSE DIQ260U 
 END as unit_of_measure_day_week_month_year, 

CASE
    WHEN DIQ275 = '1' THEN 'Yes' -- categorize string values 
WHEN DIQ275 = '2' THEN 'No' -- categorize string values 
WHEN DIQ275 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ275 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ275 IS NULL THEN NULL 
ELSE DIQ275 
 END as past_year_dr_checked_for_a1c, 

CASE
    WHEN DIQ280 IS NOT NULL THEN SAFE_CAST(DIQ280 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ280 IS NOT NULL THEN SAFE_CAST(DIQ280 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ280 IS NOT NULL THEN SAFE_CAST(DIQ280 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ280 IS NULL THEN NULL 
ELSE DIQ280 
 END as what_was_your_last_a1c_level, 

CASE
    WHEN DIQ291 = '1' THEN 'Less than 6' -- categorize string values 
WHEN DIQ291 = '2' THEN 'Less than 7' -- categorize string values 
WHEN DIQ291 = '3' THEN 'Less than 8' -- categorize string values 
WHEN DIQ291 = '4' THEN 'Less than 9' -- categorize string values 
WHEN DIQ291 = '5' THEN 'Less than 10' -- categorize string values 
WHEN DIQ291 = '6' THEN 'Provider did not specify goal' -- categorize string values 
WHEN DIQ291 = '77' THEN 'Refused' -- categorize string values 
WHEN DIQ291 = '99' THEN 'Dont know' -- categorize string values 
WHEN DIQ291 IS NULL THEN NULL 
ELSE DIQ291 
 END as what_does_dr_say_a1c_should_be, 

DIQ295 as DIQ295, -- could not automatically decode name of variable or transformation logic 

CASE
    WHEN DIQ300S IS NOT NULL THEN SAFE_CAST(DIQ300S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300S IS NOT NULL THEN SAFE_CAST(DIQ300S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300S IS NOT NULL THEN SAFE_CAST(DIQ300S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300S IS NULL THEN NULL 
ELSE DIQ300S 
 END as what_was_your_recent_sbp, 

CASE
    WHEN DIQ300D IS NOT NULL THEN SAFE_CAST(DIQ300D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300D IS NOT NULL THEN SAFE_CAST(DIQ300D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300D IS NOT NULL THEN SAFE_CAST(DIQ300D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DIQ300D IS NULL THEN NULL 
ELSE DIQ300D 
 END as what_was_your_recent_dbp, 

CASE
    WHEN DID310S IS NOT NULL THEN SAFE_CAST(DID310S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310S IS NOT NULL THEN SAFE_CAST(DID310S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310S IS NOT NULL THEN SAFE_CAST(DID310S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310S IS NOT NULL THEN SAFE_CAST(DID310S AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310S IS NULL THEN NULL 
ELSE DID310S 
 END as what_does_dr_say_sbp_should_be, 

CASE
    WHEN DID310D IS NOT NULL THEN SAFE_CAST(DID310D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310D IS NOT NULL THEN SAFE_CAST(DID310D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310D IS NOT NULL THEN SAFE_CAST(DID310D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310D IS NOT NULL THEN SAFE_CAST(DID310D AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID310D IS NULL THEN NULL 
ELSE DID310D 
 END as what_does_dr_say_dbp_should_be, 

CASE
    WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID320 IS NULL THEN NULL 
ELSE DID320 
 END as what_was_most_recent_ldl_number, 

CASE
    WHEN DID330 IS NOT NULL THEN SAFE_CAST(DID330 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID330 IS NOT NULL THEN SAFE_CAST(DID330 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID330 IS NOT NULL THEN SAFE_CAST(DID330 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID330 IS NOT NULL THEN SAFE_CAST(DID330 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID330 IS NULL THEN NULL 
ELSE DID330 
 END as what_does_dr_say_ldl_should_be, 

CASE
    WHEN DID341 IS NOT NULL THEN SAFE_CAST(DID341 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID341 IS NOT NULL THEN SAFE_CAST(DID341 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID341 IS NOT NULL THEN SAFE_CAST(DID341 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID341 IS NOT NULL THEN SAFE_CAST(DID341 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID341 IS NULL THEN NULL 
ELSE DID341 
 END as past_year_times_dr_check_feet_for_sores, 

CASE
    WHEN DID350 IS NOT NULL THEN SAFE_CAST(DID350 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID350 IS NOT NULL THEN SAFE_CAST(DID350 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID350 IS NOT NULL THEN SAFE_CAST(DID350 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID350 IS NOT NULL THEN SAFE_CAST(DID350 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DID350 IS NULL THEN NULL 
ELSE DID350 
 END as how_often_do_you_check_your_feet, 

CASE
    WHEN DIQ350U = '1' THEN 'Per day' -- categorize string values 
WHEN DIQ350U = '2' THEN 'Per week' -- categorize string values 
WHEN DIQ350U = '3' THEN 'Per month' -- categorize string values 
WHEN DIQ350U = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ350U IS NULL THEN NULL 
ELSE DIQ350U 
 END as unit_of_measure_day_week_month_year_DIQ350U, 

CASE
    WHEN DIQ360 = '1' THEN 'Less than 1 month' -- categorize string values 
WHEN DIQ360 = '2' THEN '1-12 months' -- categorize string values 
WHEN DIQ360 = '3' THEN '13-24 months' -- categorize string values 
WHEN DIQ360 = '4' THEN 'Greater than 2 years' -- categorize string values 
WHEN DIQ360 = '5' THEN 'Never' -- categorize string values 
WHEN DIQ360 = '7' THEN 'Refused' -- categorize string values 
WHEN DIQ360 = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ360 IS NULL THEN NULL 
ELSE DIQ360 
 END as last_time_had_pupils_dilated_for_exam, 

CASE
    WHEN DIQ080 = 1 THEN 'Yes' -- categorize numeric values
WHEN DIQ080 = 2 THEN 'No' -- categorize numeric values
WHEN DIQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN DIQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DIQ080 IS NULL THEN NULL 
ELSE DIQ080 
 END as diabetes_affected_eyes_had_retinopathy, 

 FROM {{ ref('stg_diabetes_questionnaire') }}

-- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DIQ.htm
