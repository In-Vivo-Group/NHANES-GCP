SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN ALQ111 = 1 THEN 'Yes' 
WHEN ALQ111 = 2 THEN 'No' 
WHEN ALQ111 = 7 THEN 'Refused' 
WHEN ALQ111 = 9 THEN 'Don't know' 
WHEN ALQ111 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_a_drink_of_any_kind_of_alcohol,
CASE
    WHEN ALQ121 = 0 THEN 'Never in the last year' 
WHEN ALQ121 = 1 THEN 'Every day' 
WHEN ALQ121 = 2 THEN 'Nearly every day' 
WHEN ALQ121 = 3 THEN '3 to 4 times a week' 
WHEN ALQ121 = 4 THEN '2 times a week' 
WHEN ALQ121 = 5 THEN 'Once a week' 
WHEN ALQ121 = 6 THEN '2 to 3 times a month' 
WHEN ALQ121 = 7 THEN 'Once a month' 
WHEN ALQ121 = 8 THEN '7 to 11 times in the last year' 
WHEN ALQ121 = 9 THEN '3 to 6 times in the last year' 
WHEN ALQ121 = 10 THEN '1 to 2 times in the last year' 
WHEN ALQ121 = 77 THEN 'Refused' 
WHEN ALQ121 = 99 THEN 'Don't know' 
WHEN ALQ121 IS NULL THEN NULL 
ELSE NULL 
 END as past_12_mo_how_often_have_alcohol_drink,
WHEN ALQ130 IS NOT NULL THEN SAFE_CAST(ALQ130 AS FLOAT64)WHEN ALQ130 IS NULL THEN NULL 
ELSE NULL 
 END as avg_alcohol_drinks_day_past_12_mos,
CASE
    WHEN ALQ142 = 0 THEN 'Never in the last year' 
WHEN ALQ142 = 1 THEN 'Every day' 
WHEN ALQ142 = 2 THEN 'Nearly every day' 
WHEN ALQ142 = 3 THEN '3 to 4 times a week' 
WHEN ALQ142 = 4 THEN '2 times a week' 
WHEN ALQ142 = 5 THEN 'Once a week' 
WHEN ALQ142 = 6 THEN '2 to 3 times a month' 
WHEN ALQ142 = 7 THEN 'Once a month' 
WHEN ALQ142 = 8 THEN '7 to 11 times in the last year' 
WHEN ALQ142 = 9 THEN '3 to 6 times in the last year' 
WHEN ALQ142 = 10 THEN '1 to 2 times in the last year' 
WHEN ALQ142 = 77 THEN 'Refused' 
WHEN ALQ142 = 99 THEN 'Don't know' 
WHEN ALQ142 IS NULL THEN NULL 
ELSE NULL 
 END as days_have_4_or_5_drinks_past_12_mos,
CASE
    WHEN ALQ270 = 0 THEN 'Never in the last year' 
WHEN ALQ270 = 1 THEN 'Every day' 
WHEN ALQ270 = 2 THEN 'Nearly every day' 
WHEN ALQ270 = 3 THEN '3 to 4 times a week' 
WHEN ALQ270 = 4 THEN '2 times a week' 
WHEN ALQ270 = 5 THEN 'Once a week' 
WHEN ALQ270 = 6 THEN '2 to 3 times a month' 
WHEN ALQ270 = 7 THEN 'Once a month' 
WHEN ALQ270 = 8 THEN '7 to 11 times in the last year' 
WHEN ALQ270 = 9 THEN '3 to 6 times in the last year' 
WHEN ALQ270 = 10 THEN '1 to 2 times in the last year' 
WHEN ALQ270 = 77 THEN 'Refused' 
WHEN ALQ270 = 99 THEN 'Don't know' 
WHEN ALQ270 IS NULL THEN NULL 
ELSE NULL 
 END as times_4_5_drinks_in_2_hrs_past_12_mos,
CASE
    WHEN ALQ280 = 0 THEN 'Never in the last year' 
WHEN ALQ280 = 1 THEN 'Every day' 
WHEN ALQ280 = 2 THEN 'Nearly every day' 
WHEN ALQ280 = 3 THEN '3 to 4 times a week' 
WHEN ALQ280 = 4 THEN '2 times a week' 
WHEN ALQ280 = 5 THEN 'Once a week' 
WHEN ALQ280 = 6 THEN '2 to 3 times a month' 
WHEN ALQ280 = 7 THEN 'Once a month' 
WHEN ALQ280 = 8 THEN '7 to 11 times in the last year' 
WHEN ALQ280 = 9 THEN '3 to 6 times in the last year' 
WHEN ALQ280 = 10 THEN '1 to 2 times in the last year' 
WHEN ALQ280 = 77 THEN 'Refused' 
WHEN ALQ280 = 99 THEN 'Don't know' 
WHEN ALQ280 IS NULL THEN NULL 
ELSE NULL 
 END as times_8_drinks_in_1_day_past_12_mos,
CASE
    WHEN ALQ290 = 0 THEN 'Never in the last year' 
WHEN ALQ290 = 1 THEN 'Every day' 
WHEN ALQ290 = 2 THEN 'Nearly every day' 
WHEN ALQ290 = 3 THEN '3 to 4 times a week' 
WHEN ALQ290 = 4 THEN '2 times a week' 
WHEN ALQ290 = 5 THEN 'Once a week' 
WHEN ALQ290 = 6 THEN '2 to 3 times a month' 
WHEN ALQ290 = 7 THEN 'Once a month' 
WHEN ALQ290 = 8 THEN '7 to 11 times in the last year' 
WHEN ALQ290 = 9 THEN '3 to 6 times in the last year' 
WHEN ALQ290 = 10 THEN '1 to 2 times in the last year' 
WHEN ALQ290 = 77 THEN 'Refused' 
WHEN ALQ290 = 99 THEN 'Don't know' 
WHEN ALQ290 IS NULL THEN NULL 
ELSE NULL 
 END as times_12_drinks_in_1_day_past_12_mos,
CASE
    WHEN ALQ151 = 1 THEN 'Yes' 
WHEN ALQ151 = 2 THEN 'No' 
WHEN ALQ151 = 7 THEN 'Refused' 
WHEN ALQ151 = 9 THEN 'Don't know' 
WHEN ALQ151 IS NULL THEN NULL 
ELSE NULL 
 END as ever_have_4_5_or_more_drinks_every_day,
WHEN ALQ170 IS NOT NULL THEN SAFE_CAST(ALQ170 AS FLOAT64)WHEN ALQ170 IS NULL THEN NULL 
ELSE NULL 
 END as past_30_days_times_4_5_drinks_on_an_oc,
 FROM {ref('stg_alcohol_use_questionnaire'})