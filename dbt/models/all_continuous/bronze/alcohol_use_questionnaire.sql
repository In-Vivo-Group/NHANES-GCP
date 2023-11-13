SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN ALQ111 = '1' THEN 'Yes' -- categorize string values 
WHEN ALQ111 = '2' THEN 'No' -- categorize string values 
WHEN ALQ111 = '7' THEN 'Refused' -- categorize string values 
WHEN ALQ111 = '9' THEN 'Dont know' -- categorize string values 
WHEN ALQ111 IS NULL THEN NULL 
ELSE ALQ111 
 END as ever_had_a_drink_of_any_kind_of_alcohol, 

CASE
            WHEN ALQ121 = '0' THEN 'Never in the last year' -- categorize string values 
WHEN ALQ121 = '1' THEN 'Every day' -- categorize string values 
WHEN ALQ121 = '2' THEN 'Nearly every day' -- categorize string values 
WHEN ALQ121 = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN ALQ121 = '4' THEN '2 times a week' -- categorize string values 
WHEN ALQ121 = '5' THEN 'Once a week' -- categorize string values 
WHEN ALQ121 = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN ALQ121 = '7' THEN 'Once a month' -- categorize string values 
WHEN ALQ121 = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN ALQ121 = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN ALQ121 = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN ALQ121 = '77' THEN 'Refused' -- categorize string values 
WHEN ALQ121 = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ121 IS NULL THEN NULL 
ELSE ALQ121 
 END as past_12_mo_how_often_have_alcohol_drink, 

CASE
            WHEN ALQ130 IS NULL THEN NULL 
ELSE ALQ130 
 END as avg_alcohol_drinks_day_past_12_mos, 

CASE
            WHEN ALQ142 = '0' THEN 'Never in the last year' -- categorize string values 
WHEN ALQ142 = '1' THEN 'Every day' -- categorize string values 
WHEN ALQ142 = '2' THEN 'Nearly every day' -- categorize string values 
WHEN ALQ142 = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN ALQ142 = '4' THEN '2 times a week' -- categorize string values 
WHEN ALQ142 = '5' THEN 'Once a week' -- categorize string values 
WHEN ALQ142 = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN ALQ142 = '7' THEN 'Once a month' -- categorize string values 
WHEN ALQ142 = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN ALQ142 = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN ALQ142 = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN ALQ142 = '77' THEN 'Refused' -- categorize string values 
WHEN ALQ142 = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ142 IS NULL THEN NULL 
ELSE ALQ142 
 END as days_have_4_or_5_drinks_past_12_mos, 

CASE
            WHEN ALQ270 = '0' THEN 'Never in the last year' -- categorize string values 
WHEN ALQ270 = '1' THEN 'Every day' -- categorize string values 
WHEN ALQ270 = '2' THEN 'Nearly every day' -- categorize string values 
WHEN ALQ270 = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN ALQ270 = '4' THEN '2 times a week' -- categorize string values 
WHEN ALQ270 = '5' THEN 'Once a week' -- categorize string values 
WHEN ALQ270 = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN ALQ270 = '7' THEN 'Once a month' -- categorize string values 
WHEN ALQ270 = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN ALQ270 = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN ALQ270 = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN ALQ270 = '77' THEN 'Refused' -- categorize string values 
WHEN ALQ270 = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ270 IS NULL THEN NULL 
ELSE ALQ270 
 END as times_4_5_drinks_in_2_hrs_past_12_mos, 

CASE
            WHEN ALQ280 = '0' THEN 'Never in the last year' -- categorize string values 
WHEN ALQ280 = '1' THEN 'Every day' -- categorize string values 
WHEN ALQ280 = '2' THEN 'Nearly every day' -- categorize string values 
WHEN ALQ280 = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN ALQ280 = '4' THEN '2 times a week' -- categorize string values 
WHEN ALQ280 = '5' THEN 'Once a week' -- categorize string values 
WHEN ALQ280 = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN ALQ280 = '7' THEN 'Once a month' -- categorize string values 
WHEN ALQ280 = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN ALQ280 = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN ALQ280 = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN ALQ280 = '77' THEN 'Refused' -- categorize string values 
WHEN ALQ280 = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ280 IS NULL THEN NULL 
ELSE ALQ280 
 END as times_8_drinks_in_1_day_past_12_mos, 

CASE
            WHEN ALQ290 = '0' THEN 'Never in the last year' -- categorize string values 
WHEN ALQ290 = '1' THEN 'Every day' -- categorize string values 
WHEN ALQ290 = '2' THEN 'Nearly every day' -- categorize string values 
WHEN ALQ290 = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN ALQ290 = '4' THEN '2 times a week' -- categorize string values 
WHEN ALQ290 = '5' THEN 'Once a week' -- categorize string values 
WHEN ALQ290 = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN ALQ290 = '7' THEN 'Once a month' -- categorize string values 
WHEN ALQ290 = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN ALQ290 = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN ALQ290 = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN ALQ290 = '77' THEN 'Refused' -- categorize string values 
WHEN ALQ290 = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ290 IS NULL THEN NULL 
ELSE ALQ290 
 END as times_12_drinks_in_1_day_past_12_mos, 

CASE
            WHEN ALQ151 = '1' THEN 'Yes' -- categorize string values 
WHEN ALQ151 = '2' THEN 'No' -- categorize string values 
WHEN ALQ151 = '7' THEN 'Refused' -- categorize string values 
WHEN ALQ151 = '9' THEN 'Dont know' -- categorize string values 
WHEN ALQ151 IS NULL THEN NULL 
ELSE ALQ151 
 END as ever_have_4_5_or_more_drinks_every_day, 

CASE
            WHEN SAFE_CAST(ALQ170 AS FLOAT64) > 20.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ170 IS NULL THEN NULL 
ELSE ALQ170 
 END as past_30_days_times_4_5_drinks_on_an_oc, 

 FROM {{ ref('stg_alcohol_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALQ_J.htm
        