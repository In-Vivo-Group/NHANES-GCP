SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN KIQ022 = 1 THEN 'Yes' -- categorize numeric values
WHEN KIQ022 = 2 THEN 'No' -- categorize numeric values
WHEN KIQ022 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ022 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ022 IS NULL THEN NULL 
ELSE KIQ022 
 END as ever_told_you_had_weak_failing_kidneys, 

CASE
            WHEN KIQ025 = 1 THEN 'Yes' -- categorize numeric values
WHEN KIQ025 = 2 THEN 'No' -- categorize numeric values
WHEN KIQ025 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ025 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ025 IS NULL THEN NULL 
ELSE KIQ025 
 END as received_dialysis_in_past_12_months, 

CASE
            WHEN KIQ026 = '1' THEN 'Yes' -- categorize string values 
WHEN KIQ026 = '2' THEN 'No' -- categorize string values 
WHEN KIQ026 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ026 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ026 IS NULL THEN NULL 
ELSE KIQ026 
 END as ever_had_kidney_stones, 

CASE
            WHEN KIQ029 = '1' THEN 'Yes' -- categorize string values 
WHEN KIQ029 = '2' THEN 'No' -- categorize string values 
WHEN KIQ029 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ029 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ029 IS NULL THEN NULL 
ELSE KIQ029 
 END as pass_kidney_stone_in_past_12_months, 

CASE
            WHEN KIQ005 = '1' THEN 'Never' -- categorize string values 
WHEN KIQ005 = '2' THEN 'Less than once a month' -- categorize string values 
WHEN KIQ005 = '3' THEN 'A few times a month' -- categorize string values 
WHEN KIQ005 = '4' THEN 'A few times a week' -- categorize string values 
WHEN KIQ005 = '5' THEN 'Every day and/or night' -- categorize string values 
WHEN KIQ005 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ005 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ005 IS NULL THEN NULL 
ELSE KIQ005 
 END as how_often_have_urinary_leakage, 

CASE
            WHEN KIQ010 = '1' THEN 'Drops' -- categorize string values 
WHEN KIQ010 = '2' THEN 'Small splashes' -- categorize string values 
WHEN KIQ010 = '3' THEN 'More' -- categorize string values 
WHEN KIQ010 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ010 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ010 IS NULL THEN NULL 
ELSE KIQ010 
 END as how_much_urine_lose_each_time, 

CASE
            WHEN KIQ042 = 1 THEN 'Yes' -- categorize numeric values
WHEN KIQ042 = 2 THEN 'No' -- categorize numeric values
WHEN KIQ042 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ042 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ042 IS NULL THEN NULL 
ELSE KIQ042 
 END as leak_urine_during_physical_activities, 

CASE
            WHEN KIQ430 = '1' THEN 'Less than once a month' -- categorize string values 
WHEN KIQ430 = '2' THEN 'A few times a month' -- categorize string values 
WHEN KIQ430 = '3' THEN 'A few times a week' -- categorize string values 
WHEN KIQ430 = '4' THEN 'Every day and/or night' -- categorize string values 
WHEN KIQ430 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ430 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ430 IS NULL THEN NULL 
ELSE KIQ430 
 END as how_frequently_does_this_occur, 

CASE
            WHEN KIQ044 = 1 THEN 'Yes' -- categorize numeric values
WHEN KIQ044 = 2 THEN 'No' -- categorize numeric values
WHEN KIQ044 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ044 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ044 IS NULL THEN NULL 
ELSE KIQ044 
 END as urinated_before_reaching_the_toilet, 

CASE
            WHEN KIQ450 = '1' THEN 'Less than once a month' -- categorize string values 
WHEN KIQ450 = '2' THEN 'A few times a month' -- categorize string values 
WHEN KIQ450 = '3' THEN 'A few times a week' -- categorize string values 
WHEN KIQ450 = '4' THEN 'Every day and/or night' -- categorize string values 
WHEN KIQ450 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ450 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ450 IS NULL THEN NULL 
ELSE KIQ450 
 END as how_frequently_does_this_occur_KIQ450, 

CASE
            WHEN KIQ046 = 1 THEN 'Yes' -- categorize numeric values
WHEN KIQ046 = 2 THEN 'No' -- categorize numeric values
WHEN KIQ046 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ046 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ046 IS NULL THEN NULL 
ELSE KIQ046 
 END as leak_urine_during_nonphysical_activities, 

CASE
            WHEN KIQ470 = '1' THEN 'Less than once a month' -- categorize string values 
WHEN KIQ470 = '2' THEN 'A few times a month' -- categorize string values 
WHEN KIQ470 = '3' THEN 'A few times a week' -- categorize string values 
WHEN KIQ470 = '4' THEN 'Every day and/or night' -- categorize string values 
WHEN KIQ470 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ470 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ470 IS NULL THEN NULL 
ELSE KIQ470 
 END as how_frequently_does_this_occur_KIQ470, 

-- KIQ048A as KIQ048A, -- not included in table but included in docs without transformation logic 

CASE
            WHEN KIQ050 = 1 THEN 'Not at all' -- categorize numeric values
WHEN KIQ050 = 2 THEN 'Only a little' -- categorize numeric values
WHEN KIQ050 = 3 THEN 'Somewhat' -- categorize numeric values
WHEN KIQ050 = 4 THEN 'Very much' -- categorize numeric values
WHEN KIQ050 = 5 THEN 'Greatly' -- categorize numeric values
WHEN KIQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ050 IS NULL THEN NULL 
ELSE KIQ050 
 END as how_much_did_urine_leakage_bother_you, 

CASE
            WHEN KIQ052 = 1 THEN 'Not at all' -- categorize numeric values
WHEN KIQ052 = 2 THEN 'Only a little' -- categorize numeric values
WHEN KIQ052 = 3 THEN 'Somewhat' -- categorize numeric values
WHEN KIQ052 = 4 THEN 'Very much' -- categorize numeric values
WHEN KIQ052 = 5 THEN 'Greatly' -- categorize numeric values
WHEN KIQ052 = 7 THEN 'Refused' -- categorize numeric values
WHEN KIQ052 = 9 THEN 'Dont know' -- categorize numeric values
WHEN KIQ052 IS NULL THEN NULL 
ELSE KIQ052 
 END as how_much_were_daily_activities_affected, 

CASE
            WHEN KIQ480 = '0' THEN '0' -- categorize string values 
WHEN KIQ480 = '1' THEN '1' -- categorize string values 
WHEN KIQ480 = '2' THEN '2' -- categorize string values 
WHEN KIQ480 = '3' THEN '3' -- categorize string values 
WHEN KIQ480 = '4' THEN '4' -- categorize string values 
WHEN KIQ480 = '5' THEN '5 or more' -- categorize string values 
WHEN KIQ480 = '7' THEN 'Refused' -- categorize string values 
WHEN KIQ480 = '9' THEN 'Dont know' -- categorize string values 
WHEN KIQ480 IS NULL THEN NULL 
ELSE KIQ480 
 END as how_many_times_urinate_in_night, 

 FROM {{ ref('stg_kidney_conditions_urology_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/KIQ_U_J.htm
        