SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN KIQ022 = 1 THEN 'Yes' 
WHEN KIQ022 = 2 THEN 'No' 
WHEN KIQ022 = 7 THEN 'Refused' 
WHEN KIQ022 = 9 THEN 'Don't know' 
WHEN KIQ022 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_weak_failing_kidneys,
CASE
    WHEN KIQ025 = 1 THEN 'Yes' 
WHEN KIQ025 = 2 THEN 'No' 
WHEN KIQ025 = 7 THEN 'Refused' 
WHEN KIQ025 = 9 THEN 'Don't know' 
WHEN KIQ025 IS NULL THEN NULL 
ELSE NULL 
 END as received_dialysis_in_past_12_months,
CASE
    WHEN KIQ026 = 1 THEN 'Yes' 
WHEN KIQ026 = 2 THEN 'No' 
WHEN KIQ026 = 7 THEN 'Refused' 
WHEN KIQ026 = 9 THEN 'Don't know' 
WHEN KIQ026 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_kidney_stones,
CASE
    WHEN KIQ029 = 1 THEN 'Yes' 
WHEN KIQ029 = 2 THEN 'No' 
WHEN KIQ029 = 7 THEN 'Refused' 
WHEN KIQ029 = 9 THEN 'Don't know' 
WHEN KIQ029 IS NULL THEN NULL 
ELSE NULL 
 END as pass_kidney_stone_in_past_12_months,
CASE
    WHEN KIQ005 = 1 THEN 'Never' 
WHEN KIQ005 = 2 THEN 'Less than once a month' 
WHEN KIQ005 = 3 THEN 'A few times a month' 
WHEN KIQ005 = 4 THEN 'A few times a week' 
WHEN KIQ005 = 5 THEN 'Every day and/or night' 
WHEN KIQ005 = 7 THEN 'Refused' 
WHEN KIQ005 = 9 THEN 'Don't know' 
WHEN KIQ005 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_have_urinary_leakage,
CASE
    WHEN KIQ010 = 1 THEN 'Drops' 
WHEN KIQ010 = 2 THEN 'Small splashes' 
WHEN KIQ010 = 3 THEN 'More' 
WHEN KIQ010 = 7 THEN 'Refused' 
WHEN KIQ010 = 9 THEN 'Don't know' 
WHEN KIQ010 IS NULL THEN NULL 
ELSE NULL 
 END as how_much_urine_lose_each_time,
CASE
    WHEN KIQ042 = 1 THEN 'Yes' 
WHEN KIQ042 = 2 THEN 'No' 
WHEN KIQ042 = 7 THEN 'Refused' 
WHEN KIQ042 = 9 THEN 'Don't know' 
WHEN KIQ042 IS NULL THEN NULL 
ELSE NULL 
 END as leak_urine_during_physical_activities,
CASE
    WHEN KIQ430 = 1 THEN 'Less than once a month' 
WHEN KIQ430 = 2 THEN 'A few times a month' 
WHEN KIQ430 = 3 THEN 'A few times a week' 
WHEN KIQ430 = 4 THEN 'Every day and/or night' 
WHEN KIQ430 = 7 THEN 'Refused' 
WHEN KIQ430 = 9 THEN 'Don't know' 
WHEN KIQ430 IS NULL THEN NULL 
ELSE NULL 
 END as how_frequently_does_this_occur,
CASE
    WHEN KIQ044 = 1 THEN 'Yes' 
WHEN KIQ044 = 2 THEN 'No' 
WHEN KIQ044 = 7 THEN 'Refused' 
WHEN KIQ044 = 9 THEN 'Don't know' 
WHEN KIQ044 IS NULL THEN NULL 
ELSE NULL 
 END as urinated_before_reaching_the_toilet,
CASE
    WHEN KIQ450 = 1 THEN 'Less than once a month' 
WHEN KIQ450 = 2 THEN 'A few times a month' 
WHEN KIQ450 = 3 THEN 'A few times a week' 
WHEN KIQ450 = 4 THEN 'Every day and/or night' 
WHEN KIQ450 = 7 THEN 'Refused' 
WHEN KIQ450 = 9 THEN 'Don't know' 
WHEN KIQ450 IS NULL THEN NULL 
ELSE NULL 
 END as how_frequently_does_this_occur,
CASE
    WHEN KIQ046 = 1 THEN 'Yes' 
WHEN KIQ046 = 2 THEN 'No' 
WHEN KIQ046 = 7 THEN 'Refused' 
WHEN KIQ046 = 9 THEN 'Don't know' 
WHEN KIQ046 IS NULL THEN NULL 
ELSE NULL 
 END as leak_urine_during_nonphysical_activities,
CASE
    WHEN KIQ470 = 1 THEN 'Less than once a month' 
WHEN KIQ470 = 2 THEN 'A few times a month' 
WHEN KIQ470 = 3 THEN 'A few times a week' 
WHEN KIQ470 = 4 THEN 'Every day and/or night' 
WHEN KIQ470 = 7 THEN 'Refused' 
WHEN KIQ470 = 9 THEN 'Don't know' 
WHEN KIQ470 IS NULL THEN NULL 
ELSE NULL 
 END as how_frequently_does_this_occur,
KIQ048A as KIQ048A, -- Could not automatically decode
CASE
    WHEN KIQ050 = 1 THEN 'Not at all' 
WHEN KIQ050 = 2 THEN 'Only a little' 
WHEN KIQ050 = 3 THEN 'Somewhat' 
WHEN KIQ050 = 4 THEN 'Very much' 
WHEN KIQ050 = 5 THEN 'Greatly' 
WHEN KIQ050 = 7 THEN 'Refused' 
WHEN KIQ050 = 9 THEN 'Don't know' 
WHEN KIQ050 IS NULL THEN NULL 
ELSE NULL 
 END as how_much_did_urine_leakage_bother_you,
CASE
    WHEN KIQ052 = 1 THEN 'Not at all' 
WHEN KIQ052 = 2 THEN 'Only a little' 
WHEN KIQ052 = 3 THEN 'Somewhat' 
WHEN KIQ052 = 4 THEN 'Very much' 
WHEN KIQ052 = 5 THEN 'Greatly' 
WHEN KIQ052 = 7 THEN 'Refused' 
WHEN KIQ052 = 9 THEN 'Don't know' 
WHEN KIQ052 IS NULL THEN NULL 
ELSE NULL 
 END as how_much_were_daily_activities_affected,
CASE
    WHEN KIQ480 = 0 THEN '0' 
WHEN KIQ480 = 1 THEN '1' 
WHEN KIQ480 = 2 THEN '2' 
WHEN KIQ480 = 3 THEN '3' 
WHEN KIQ480 = 4 THEN '4' 
WHEN KIQ480 = 5 THEN '5 or more' 
WHEN KIQ480 = 7 THEN 'Refused' 
WHEN KIQ480 = 9 THEN 'Don't know' 
WHEN KIQ480 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_times_urinate_in_night,
 FROM {ref('stg_kidney_conditions_urology_questionnaire'})