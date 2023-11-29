SELECT
    SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ111 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ111 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ111 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ111 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ALQ111 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ111 AS STRING) 
 END as ever_had_a_drink_of_any_kind_of_alcohol, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'Never in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nearly every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '2 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ121 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ121 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ121 AS STRING) 
 END as past_12_mo_how_often_have_alcohol_drink, 

CASE
        WHEN ALQ130 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ130 AS STRING) 
 END as avg_alcohol_drinks_day_past_12_mos, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'Never in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nearly every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '2 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ142 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ142 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ142 AS STRING) 
 END as days_have_4_or_5_drinks_past_12_mos, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'Never in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nearly every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '2 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ270 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ270 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ270 AS STRING) 
 END as times_4_5_drinks_in_2_hrs_past_12_mos, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'Never in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nearly every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '2 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ280 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ280 AS STRING) 
 END as times_8_drinks_in_1_day_past_12_mos, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'Never in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nearly every day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '3 to 4 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '2 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN '2 to 3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN '7 to 11 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '3 to 6 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '1 to 2 times in the last year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ290 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN ALQ290 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ290 AS STRING) 
 END as times_12_drinks_in_1_day_past_12_mos, 

CASE
        WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ151 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ151 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ151 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ151 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ALQ151 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ151 AS STRING) 
 END as ever_have_4_5_or_more_drinks_every_day, 

CASE
        WHEN SAFE_CAST(ALQ170 AS FLOAT64) > 22.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ170 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ170 AS FLOAT64) 
 END as past_30_days_times_4_5_drinks_on_an_oc, 

 FROM {{ ref('stg_alcohol_use_questionnaire') }}

    -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALQ_J.htm
    