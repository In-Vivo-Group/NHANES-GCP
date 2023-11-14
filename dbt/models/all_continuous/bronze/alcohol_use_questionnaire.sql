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
WHEN SAFE_CAST(ALQ170 AS FLOAT64) > 31.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ170 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ170 AS FLOAT64) 
 END as past_30_days_times_4_5_drinks_on_an_oc, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ101 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ101 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ101 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ101 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ101 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ101 AS STRING) 
 END as had_at_least_12_alcohol_drinks_1_yr, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ110 AS STRING) 
 END as had_at_least_12_alcohol_drinks_lifetime, 

CASE
WHEN ALQ120Q IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ120Q AS STRING) 
 END as how_often_drink_alcohol_over_past_12_mos, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ120U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ120U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ120U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Year' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ120U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ120U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ120U IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ120U AS STRING) 
 END as days_drink_alcohol_per_wk_mo_yr, 

CASE
WHEN SAFE_CAST(ALQ141Q AS FLOAT64) > 376.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ141Q IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ141Q AS FLOAT64) 
 END as days_have_4_5_drinks_past_12_mos, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ141U AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ141U AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ141U AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ141U AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ALQ141U AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ALQ141U IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ141U AS STRING) 
 END as days_per_week_month_year, 

CASE
WHEN SAFE_CAST(ALQ160 AS FLOAT64) > 29.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ160 AS FLOAT64) 
 END as days_have_4_5_or_more_drinks_in_2_hrs, 

CASE
WHEN SAFE_CAST(ALQ155 AS FLOAT64) > 71.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN ALQ155 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ155 AS FLOAT64) 
 END as how_many_years_did_you_drink_every_day, 

CASE
WHEN ALQ140Q IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ140Q AS FLOAT64) 
 END as days_have_5_or_more_drinks_past_12_mos, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ140U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ140U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ140U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Year' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ140U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ140U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ140U IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ140U AS STRING) 
 END as days_per_week_month_year_ALQ140U, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ150 AS STRING) 
 END as ever_have_5_or_more_drinks_every_day, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALD100 IS NULL THEN NULL 
ELSE SAFE_CAST(ALD100 AS STRING) 
 END as had_at_least_12_alcohol_drinks_1_yr_ALD100, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ALQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ALQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(ALQ100 AS STRING) 
 END as had_at_least_12_alcohol_drinks_1_yr_ALQ100, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_alcohol_use_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ALQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/ALQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ALQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ALQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/ALQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/ALQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/ALQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/ALQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/ALQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/ALQ.htm
*/
