SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DUQ200 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ200 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ200 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ200 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ200 IS NULL THEN NULL 
ELSE DUQ200 
 END as ever_used_marijuana_or_hashish, 

CASE
            WHEN DUQ210 IS NULL THEN NULL 
ELSE DUQ210 
 END as age_when_first_tried_marijuana, 

CASE
            WHEN DUQ211 = '1' THEN 'Yes' -- categorize string values 
WHEN DUQ211 = '2' THEN 'No' -- categorize string values 
WHEN DUQ211 = '7' THEN 'Refused' -- categorize string values 
WHEN DUQ211 = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ211 IS NULL THEN NULL 
ELSE DUQ211 
 END as used_marijuana_every_month_for_a_year, 

CASE
            WHEN SAFE_CAST(DUQ213 AS FLOAT64) > 55.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ213 IS NULL THEN NULL 
ELSE DUQ213 
 END as age_started_regularly_using_marijuana, 

CASE
            WHEN SAFE_CAST(DUQ215Q AS FLOAT64) > 999.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ215Q IS NULL THEN NULL 
ELSE DUQ215Q 
 END as time_since_last_used_marijuana_regularly, 

CASE
            WHEN DUQ215U = '1' THEN 'Days' -- categorize string values 
WHEN DUQ215U = '2' THEN 'Weeks' -- categorize string values 
WHEN DUQ215U = '3' THEN 'Months' -- categorize string values 
WHEN DUQ215U = '4' THEN 'Years' -- categorize string values 
WHEN DUQ215U = '7' THEN 'Refused' -- categorize string values 
WHEN DUQ215U = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ215U IS NULL THEN NULL 
ELSE DUQ215U 
 END as time_since_used_marijuana_regularly_unit, 

CASE
            WHEN DUQ217 = '1' THEN 'Once per month' -- categorize string values 
WHEN DUQ217 = '2' THEN '2-3 times per month' -- categorize string values 
WHEN DUQ217 = '3' THEN '4-8 times per month (about 1-2 times per 
  week)' -- categorize string values 
WHEN DUQ217 = '4' THEN '9-24 times per month (about 3-6 times per 
  week)' -- categorize string values 
WHEN DUQ217 = '5' THEN '25-30 times per month (one or more times 
  per day)' -- categorize string values 
WHEN DUQ217 = '7' THEN 'Refused' -- categorize string values 
WHEN DUQ217 = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ217 IS NULL THEN NULL 
ELSE DUQ217 
 END as how_often_would_you_use_marijuana, 

CASE
            WHEN DUQ219 = '1' THEN '1 per day' -- categorize string values 
WHEN DUQ219 = '2' THEN '2 per day' -- categorize string values 
WHEN DUQ219 = '3' THEN '3-5 per day' -- categorize string values 
WHEN DUQ219 = '4' THEN 'Six or more per day' -- categorize string values 
WHEN DUQ219 = '7' THEN 'Refused' -- categorize string values 
WHEN DUQ219 = '9' THEN 'Dont know' -- categorize string values 
WHEN DUQ219 IS NULL THEN NULL 
ELSE DUQ219 
 END as how_many_joints_or_pipes_smoke_in_a_day, 

CASE
            WHEN DUQ220Q IS NULL THEN NULL 
ELSE DUQ220Q 
 END as last_time_used_marijuana_or_hashish, 

CASE
            WHEN DUQ220U = 1 THEN 'Days' -- categorize numeric values
WHEN DUQ220U = 2 THEN 'Weeks' -- categorize numeric values
WHEN DUQ220U = 3 THEN 'Months' -- categorize numeric values
WHEN DUQ220U = 4 THEN 'Years' -- categorize numeric values
WHEN DUQ220U = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ220U = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ220U IS NULL THEN NULL 
ELSE DUQ220U 
 END as last_time_used_marijuana_or_hashish_unit, 

CASE
            WHEN DUQ230 IS NULL THEN NULL 
ELSE DUQ230 
 END as days_used_marijuana_or_hashish_month, 

CASE
            WHEN DUQ240 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ240 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ240 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ240 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ240 IS NULL THEN NULL 
ELSE DUQ240 
 END as ever_used_cocaine_heroin_methamphetamine, 

CASE
            WHEN DUQ250 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ250 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ250 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ250 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ250 IS NULL THEN NULL 
ELSE DUQ250 
 END as ever_use_any_form_of_cocaine, 

CASE
            WHEN DUQ260 IS NULL THEN NULL 
ELSE DUQ260 
 END as age_first_used_cocaine, 

CASE
            WHEN DUQ270Q IS NULL THEN NULL 
ELSE DUQ270Q 
 END as last_time_you_used_cocaine_in_any_form, 

CASE
            WHEN DUQ270U = 1 THEN 'Days' -- categorize numeric values
WHEN DUQ270U = 2 THEN 'Weeks' -- categorize numeric values
WHEN DUQ270U = 3 THEN 'Months' -- categorize numeric values
WHEN DUQ270U = 4 THEN 'Years' -- categorize numeric values
WHEN DUQ270U = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ270U = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ270U IS NULL THEN NULL 
ELSE DUQ270U 
 END as last_time_you_used_cocaine_unit, 

CASE
            WHEN DUQ272 = 1 THEN 'Once' -- categorize numeric values
WHEN DUQ272 = 2 THEN '2-5 times' -- categorize numeric values
WHEN DUQ272 = 3 THEN '6-19 times' -- categorize numeric values
WHEN DUQ272 = 4 THEN '20-49 times' -- categorize numeric values
WHEN DUQ272 = 5 THEN '50-99 times' -- categorize numeric values
WHEN DUQ272 = 6 THEN '100 times or more' -- categorize numeric values
WHEN DUQ272 = 77 THEN 'Refused' -- categorize numeric values
WHEN DUQ272 = 99 THEN 'Dont know' -- categorize numeric values
WHEN DUQ272 IS NULL THEN NULL 
ELSE DUQ272 
 END as of_time_you_used_cocaine, 

CASE
            WHEN DUQ280 IS NULL THEN NULL 
ELSE DUQ280 
 END as of_days_used_cocaine_month, 

CASE
            WHEN DUQ290 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ290 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ290 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ290 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ290 IS NULL THEN NULL 
ELSE DUQ290 
 END as ever_used_heroin, 

CASE
            WHEN DUQ300 IS NULL THEN NULL 
ELSE DUQ300 
 END as age_first_used_heroin, 

CASE
            WHEN DUQ310Q IS NULL THEN NULL 
ELSE DUQ310Q 
 END as last_time_used_heroin, 

CASE
            WHEN DUQ310U = 1 THEN 'Days' -- categorize numeric values
WHEN DUQ310U = 2 THEN 'Weeks' -- categorize numeric values
WHEN DUQ310U = 3 THEN 'Months' -- categorize numeric values
WHEN DUQ310U = 4 THEN 'Years' -- categorize numeric values
WHEN DUQ310U = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ310U = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ310U IS NULL THEN NULL 
ELSE DUQ310U 
 END as last_time_used_heroin_unit, 

CASE
            WHEN SAFE_CAST(DUQ320 AS FLOAT64) > 30.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DUQ320 IS NULL THEN NULL 
ELSE DUQ320 
 END as of_days_used_heroin_month, 

CASE
            WHEN DUQ330 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ330 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ330 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ330 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ330 IS NULL THEN NULL 
ELSE DUQ330 
 END as ever_used_methamphetamine, 

CASE
            WHEN DUQ340 IS NULL THEN NULL 
ELSE DUQ340 
 END as age_first_used_methamphetamine, 

CASE
            WHEN DUQ350Q IS NULL THEN NULL 
ELSE DUQ350Q 
 END as last_time_used_methamphetamine, 

CASE
            WHEN DUQ350U = 1 THEN 'Days' -- categorize numeric values
WHEN DUQ350U = 2 THEN 'Weeks' -- categorize numeric values
WHEN DUQ350U = 3 THEN 'Months' -- categorize numeric values
WHEN DUQ350U = 4 THEN 'Years' -- categorize numeric values
WHEN DUQ350U = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ350U = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ350U IS NULL THEN NULL 
ELSE DUQ350U 
 END as last_time_used_methamphetamine_unit, 

CASE
            WHEN DUQ352 = 1 THEN 'Once' -- categorize numeric values
WHEN DUQ352 = 2 THEN '2-5 times' -- categorize numeric values
WHEN DUQ352 = 3 THEN '6-19 times' -- categorize numeric values
WHEN DUQ352 = 4 THEN '20-49 times' -- categorize numeric values
WHEN DUQ352 = 5 THEN '50-99 times' -- categorize numeric values
WHEN DUQ352 = 6 THEN '100 times or more' -- categorize numeric values
WHEN DUQ352 = 77 THEN 'Refused' -- categorize numeric values
WHEN DUQ352 = 99 THEN 'Dont know' -- categorize numeric values
WHEN DUQ352 IS NULL THEN NULL 
ELSE DUQ352 
 END as times_used_methamphetamine, 

CASE
            WHEN DUQ360 IS NULL THEN NULL 
ELSE DUQ360 
 END as days_used_methamphetamine_month, 

CASE
            WHEN DUQ370 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ370 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ370 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ370 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ370 IS NULL THEN NULL 
ELSE DUQ370 
 END as ever_use_a_needle_to_inject_illegal_drug, 

CASE
            WHEN DUQ380A = 1 THEN 'Cocaine' -- categorize numeric values
WHEN DUQ380A = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ380A = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ380A IS NULL THEN NULL 
ELSE DUQ380A 
 END as drugs_injected_cocaine, 

CASE
            WHEN DUQ380B = 2 THEN 'Heroin' -- categorize numeric values
WHEN DUQ380B IS NULL THEN NULL 
ELSE DUQ380B 
 END as drugs_injected_heroin, 

CASE
            WHEN DUQ380C = 3 THEN 'Methamphetamine' -- categorize numeric values
WHEN DUQ380C IS NULL THEN NULL 
ELSE DUQ380C 
 END as drugs_injected_methamphetamine, 

CASE
            WHEN DUD380F = '6' THEN 'Steroids or any other drugs' -- categorize string values 
WHEN DUD380F IS NULL THEN NULL 
ELSE DUD380F 
 END as drugs_injected_steroids_or_other_drugs, 

CASE
            WHEN DUQ390 IS NULL THEN NULL 
ELSE DUQ390 
 END as age_first_injected_drugs, 

CASE
            WHEN DUQ400Q IS NULL THEN NULL 
ELSE DUQ400Q 
 END as last_time_injected_drugs, 

CASE
            WHEN DUQ400U = 1 THEN 'Days' -- categorize numeric values
WHEN DUQ400U = 2 THEN 'Weeks' -- categorize numeric values
WHEN DUQ400U = 3 THEN 'Months' -- categorize numeric values
WHEN DUQ400U = 4 THEN 'Years' -- categorize numeric values
WHEN DUQ400U = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ400U = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ400U IS NULL THEN NULL 
ELSE DUQ400U 
 END as last_time_injected_drugs_unit, 

CASE
            WHEN DUQ410 = 1 THEN 'Once' -- categorize numeric values
WHEN DUQ410 = 2 THEN '2-5 times' -- categorize numeric values
WHEN DUQ410 = 3 THEN '6-19 times' -- categorize numeric values
WHEN DUQ410 = 4 THEN '20-49 times' -- categorize numeric values
WHEN DUQ410 = 5 THEN '50-99 times' -- categorize numeric values
WHEN DUQ410 = 6 THEN '100 times or more' -- categorize numeric values
WHEN DUQ410 = 77 THEN 'Refused' -- categorize numeric values
WHEN DUQ410 = 99 THEN 'Dont know' -- categorize numeric values
WHEN DUQ410 IS NULL THEN NULL 
ELSE DUQ410 
 END as times_injected_drugs_lifetime, 

CASE
            WHEN DUQ420 = 1 THEN 'More than once a day,' -- categorize numeric values
WHEN DUQ420 = 2 THEN 'About once a day,' -- categorize numeric values
WHEN DUQ420 = 3 THEN 'At least once a week but not every day,' -- categorize numeric values
WHEN DUQ420 = 4 THEN 'At least once a month but not every week,' -- categorize numeric values
WHEN DUQ420 = 5 THEN 'Less than once a month' -- categorize numeric values
WHEN DUQ420 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ420 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ420 IS NULL THEN NULL 
ELSE DUQ420 
 END as how_often_did_you_inject_drugs, 

DUQ426 as DUQ426, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN DUQ430 = 1 THEN 'Yes' -- categorize numeric values
WHEN DUQ430 = 2 THEN 'No' -- categorize numeric values
WHEN DUQ430 = 7 THEN 'Refused' -- categorize numeric values
WHEN DUQ430 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DUQ430 IS NULL THEN NULL 
ELSE DUQ430 
 END as ever_been_in_rehabilitation_program, 

 FROM {{ ref('stg_drug_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DUQ_J.htm
        