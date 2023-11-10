SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN DIQ010 = 1 THEN 'Yes' 
WHEN DIQ010 = 2 THEN 'No' 
WHEN DIQ010 = 3 THEN 'Borderline' 
WHEN DIQ010 = 7 THEN 'Refused' 
WHEN DIQ010 = 9 THEN 'Don't know' 
WHEN DIQ010 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_have_diabetes,
WHEN DID040 IS NOT NULL THEN SAFE_CAST(DID040 AS FLOAT64)WHEN DID040 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_first_told_you_had_diabetes,
DIQ159 as DIQ159, -- Could not automatically decode
CASE
    WHEN DIQ160 = 1 THEN 'Yes' 
WHEN DIQ160 = 2 THEN 'No' 
WHEN DIQ160 = 7 THEN 'Refused' 
WHEN DIQ160 = 9 THEN 'Don't know' 
WHEN DIQ160 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_have_prediabetes,
CASE
    WHEN DIQ170 = 1 THEN 'Yes' 
WHEN DIQ170 = 2 THEN 'No' 
WHEN DIQ170 = 7 THEN 'Refused' 
WHEN DIQ170 = 9 THEN 'Don't know' 
WHEN DIQ170 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_have_health_risk_for_diabetes,
CASE
    WHEN DIQ172 = 1 THEN 'Yes' 
WHEN DIQ172 = 2 THEN 'No' 
WHEN DIQ172 = 7 THEN 'Refused' 
WHEN DIQ172 = 9 THEN 'Don't know' 
WHEN DIQ172 IS NULL THEN NULL 
ELSE NULL 
 END as feel_could_be_at_risk_for_diabetes,
CASE
    WHEN DIQ175A = 10 THEN 'Family history' 
WHEN DIQ175A = 77 THEN 'Refused' 
WHEN DIQ175A = 99 THEN 'Don't know' 
WHEN DIQ175A IS NULL THEN NULL 
ELSE NULL 
 END as family_history,
CASE
    WHEN DIQ175B = 11 THEN 'Overweight' 
WHEN DIQ175B IS NULL THEN NULL 
ELSE NULL 
 END as overweight,
CASE
    WHEN DIQ175C = 12 THEN 'Age' 
WHEN DIQ175C IS NULL THEN NULL 
ELSE NULL 
 END as age,
CASE
    WHEN DIQ175D = 13 THEN 'Poor diet' 
WHEN DIQ175D IS NULL THEN NULL 
ELSE NULL 
 END as poor_diet,
CASE
    WHEN DIQ175E = 14 THEN 'Race' 
WHEN DIQ175E IS NULL THEN NULL 
ELSE NULL 
 END as race,
CASE
    WHEN DIQ175F = 15 THEN 'Had a baby weighed over 9 lbs. at birth' 
WHEN DIQ175F IS NULL THEN NULL 
ELSE NULL 
 END as had_a_baby_weighed_over_9_lbs_at_birth,
CASE
    WHEN DIQ175G = 16 THEN 'Lack of physical activity' 
WHEN DIQ175G IS NULL THEN NULL 
ELSE NULL 
 END as lack_of_physical_activity,
CASE
    WHEN DIQ175H = 17 THEN 'High blood pressure' 
WHEN DIQ175H IS NULL THEN NULL 
ELSE NULL 
 END as high_blood_pressure,
CASE
    WHEN DIQ175I = 18 THEN 'High blood sugar' 
WHEN DIQ175I IS NULL THEN NULL 
ELSE NULL 
 END as high_blood_sugar,
CASE
    WHEN DIQ175J = 19 THEN 'High cholesterol' 
WHEN DIQ175J IS NULL THEN NULL 
ELSE NULL 
 END as high_cholesterol,
CASE
    WHEN DIQ175K = 20 THEN 'Hypoglycemic' 
WHEN DIQ175K IS NULL THEN NULL 
ELSE NULL 
 END as hypoglycemic,
CASE
    WHEN DIQ175L = 21 THEN 'Extreme hunger' 
WHEN DIQ175L IS NULL THEN NULL 
ELSE NULL 
 END as extreme_hunger,
CASE
    WHEN DIQ175M = 22 THEN 'Tingling/numbness in hands or feet' 
WHEN DIQ175M IS NULL THEN NULL 
ELSE NULL 
 END as tingling_numbness_in_hands_or_feet,
CASE
    WHEN DIQ175N = 23 THEN 'Blurred vision' 
WHEN DIQ175N IS NULL THEN NULL 
ELSE NULL 
 END as blurred_vision,
CASE
    WHEN DIQ175O = 24 THEN 'Increased fatigue' 
WHEN DIQ175O IS NULL THEN NULL 
ELSE NULL 
 END as increased_fatigue,
CASE
    WHEN DIQ175P = 25 THEN 'Anyone could be at risk' 
WHEN DIQ175P IS NULL THEN NULL 
ELSE NULL 
 END as anyone_could_be_at_risk,
CASE
    WHEN DIQ175Q = 26 THEN 'Doctor warning' 
WHEN DIQ175Q IS NULL THEN NULL 
ELSE NULL 
 END as doctor_warning,
CASE
    WHEN DIQ175R = 27 THEN 'Other, specify' 
WHEN DIQ175R IS NULL THEN NULL 
ELSE NULL 
 END as other_specify,
CASE
    WHEN DIQ175S = 28 THEN 'Gestational diabetes' 
WHEN DIQ175S IS NULL THEN NULL 
ELSE NULL 
 END as gestational_diabetes,
CASE
    WHEN DIQ175T = 29 THEN 'Frequent urination' 
WHEN DIQ175T IS NULL THEN NULL 
ELSE NULL 
 END as frequent_urination,
CASE
    WHEN DIQ175U = 30 THEN 'Thirst' 
WHEN DIQ175U IS NULL THEN NULL 
ELSE NULL 
 END as thirst,
CASE
    WHEN DIQ175V = 31 THEN 'Craving for sweet/eating a lot of sugar' 
WHEN DIQ175V IS NULL THEN NULL 
ELSE NULL 
 END as craving_for_sweet_eating_a_lot_of_sugar,
CASE
    WHEN DIQ175W = 32 THEN 'Medication' 
WHEN DIQ175W IS NULL THEN NULL 
ELSE NULL 
 END as medication,
CASE
    WHEN DIQ175X = 33 THEN 'Polycystic ovarian syndrome' 
WHEN DIQ175X IS NULL THEN NULL 
ELSE NULL 
 END as polycystic_ovarian_syndrome,
CASE
    WHEN DIQ180 = 1 THEN 'Yes' 
WHEN DIQ180 = 2 THEN 'No' 
WHEN DIQ180 = 7 THEN 'Refused' 
WHEN DIQ180 = 9 THEN 'Don't know' 
WHEN DIQ180 IS NULL THEN NULL 
ELSE NULL 
 END as had_blood_tested_past_three_years,
CASE
    WHEN DIQ050 = 1 THEN 'Yes' 
WHEN DIQ050 = 2 THEN 'No' 
WHEN DIQ050 = 7 THEN 'Refused' 
WHEN DIQ050 = 9 THEN 'Don't know' 
WHEN DIQ050 IS NULL THEN NULL 
ELSE NULL 
 END as taking_insulin_now,
WHEN DID060 IS NOT NULL THEN SAFE_CAST(DID060 AS FLOAT64)WHEN DID060 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_taking_insulin,
CASE
    WHEN DIQ060U = 1 THEN 'Months' 
WHEN DIQ060U = 2 THEN 'Years' 
WHEN DIQ060U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_month_year,
DIQ065 as DIQ065, -- Could not automatically decode
CASE
    WHEN DIQ070 = 1 THEN 'Yes' 
WHEN DIQ070 = 2 THEN 'No' 
WHEN DIQ070 = 7 THEN 'Refused' 
WHEN DIQ070 = 9 THEN 'Don't know' 
WHEN DIQ070 IS NULL THEN NULL 
ELSE NULL 
 END as take_diabetic_pills_to_lower_blood_sugar,
DIQ229 as DIQ229, -- Could not automatically decode
CASE
    WHEN DIQ230 = 1 THEN '1 year ago or less' 
WHEN DIQ230 = 2 THEN 'More than 1 year ago but no more than 2 years ago' 
WHEN DIQ230 = 3 THEN 'More than 2 years ago but no more than 5 years ago' 
WHEN DIQ230 = 4 THEN 'More than 5 years ago' 
WHEN DIQ230 = 5 THEN 'Never' 
WHEN DIQ230 = 7 THEN 'Refused' 
WHEN DIQ230 = 9 THEN 'Don't know' 
WHEN DIQ230 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_ago_saw_a_diabetes_specialist,
CASE
    WHEN DIQ240 = 1 THEN 'Yes' 
WHEN DIQ240 = 2 THEN 'No' 
WHEN DIQ240 = 7 THEN 'Refused' 
WHEN DIQ240 = 9 THEN 'Don't know' 
WHEN DIQ240 IS NULL THEN NULL 
ELSE NULL 
 END as is_there_one_dr_you_see_for_diabetes,
WHEN DID250 IS NOT NULL THEN SAFE_CAST(DID250 AS FLOAT64)WHEN DID250 IS NULL THEN NULL 
ELSE NULL 
 END as past_year_how_many_times_seen_doctor,
WHEN DID260 IS NOT NULL THEN SAFE_CAST(DID260 AS FLOAT64)WHEN DID260 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_check_blood_for_glucose_sugar,
CASE
    WHEN DIQ260U = 1 THEN 'Per day' 
WHEN DIQ260U = 2 THEN 'Per week' 
WHEN DIQ260U = 3 THEN 'Per month' 
WHEN DIQ260U = 4 THEN 'Per year' 
WHEN DIQ260U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_day_week_month_year,
CASE
    WHEN DIQ275 = 1 THEN 'Yes' 
WHEN DIQ275 = 2 THEN 'No' 
WHEN DIQ275 = 7 THEN 'Refused' 
WHEN DIQ275 = 9 THEN 'Don't know' 
WHEN DIQ275 IS NULL THEN NULL 
ELSE NULL 
 END as past_year_dr_checked_for_a1c,
WHEN DIQ280 IS NOT NULL THEN SAFE_CAST(DIQ280 AS FLOAT64)WHEN DIQ280 IS NULL THEN NULL 
ELSE NULL 
 END as what_was_your_last_a1c_level,
CASE
    WHEN DIQ291 = 1 THEN 'Less than 6' 
WHEN DIQ291 = 2 THEN 'Less than 7' 
WHEN DIQ291 = 3 THEN 'Less than 8' 
WHEN DIQ291 = 4 THEN 'Less than 9' 
WHEN DIQ291 = 5 THEN 'Less than 10' 
WHEN DIQ291 = 6 THEN 'Provider did not specify goal' 
WHEN DIQ291 = 77 THEN 'Refused' 
WHEN DIQ291 = 99 THEN 'Don't know' 
WHEN DIQ291 IS NULL THEN NULL 
ELSE NULL 
 END as what_does_dr_say_a1c_should_be,
DIQ295 as DIQ295, -- Could not automatically decode
WHEN DIQ300S IS NOT NULL THEN SAFE_CAST(DIQ300S AS FLOAT64)WHEN DIQ300S IS NULL THEN NULL 
ELSE NULL 
 END as what_was_your_recent_sbp,
WHEN DIQ300D IS NOT NULL THEN SAFE_CAST(DIQ300D AS FLOAT64)WHEN DIQ300D IS NULL THEN NULL 
ELSE NULL 
 END as what_was_your_recent_dbp,
WHEN DID310S IS NOT NULL THEN SAFE_CAST(DID310S AS FLOAT64)WHEN DID310S IS NULL THEN NULL 
ELSE NULL 
 END as what_does_dr_say_sbp_should_be,
WHEN DID310D IS NOT NULL THEN SAFE_CAST(DID310D AS FLOAT64)WHEN DID310D IS NULL THEN NULL 
ELSE NULL 
 END as what_does_dr_say_dbp_should_be,
WHEN DID320 IS NOT NULL THEN SAFE_CAST(DID320 AS FLOAT64)WHEN DID320 IS NULL THEN NULL 
ELSE NULL 
 END as what_was_most_recent_ldl_number,
WHEN DID330 IS NOT NULL THEN SAFE_CAST(DID330 AS FLOAT64)WHEN DID330 IS NULL THEN NULL 
ELSE NULL 
 END as what_does_dr_say_ldl_should_be,
WHEN DID341 IS NOT NULL THEN SAFE_CAST(DID341 AS FLOAT64)WHEN DID341 IS NULL THEN NULL 
ELSE NULL 
 END as past_year_times_dr_check_feet_for_sores,
WHEN DID350 IS NOT NULL THEN SAFE_CAST(DID350 AS FLOAT64)WHEN DID350 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_do_you_check_your_feet,
CASE
    WHEN DIQ350U = 1 THEN 'Per day' 
WHEN DIQ350U = 2 THEN 'Per week' 
WHEN DIQ350U = 3 THEN 'Per month' 
WHEN DIQ350U = 4 THEN 'Per year' 
WHEN DIQ350U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_day_week_month_year,
CASE
    WHEN DIQ360 = 1 THEN 'Less than 1 month' 
WHEN DIQ360 = 2 THEN '1-12 months' 
WHEN DIQ360 = 3 THEN '13-24 months' 
WHEN DIQ360 = 4 THEN 'Greater than 2 years' 
WHEN DIQ360 = 5 THEN 'Never' 
WHEN DIQ360 = 7 THEN 'Refused' 
WHEN DIQ360 = 9 THEN 'Don't know' 
WHEN DIQ360 IS NULL THEN NULL 
ELSE NULL 
 END as last_time_had_pupils_dilated_for_exam,
CASE
    WHEN DIQ080 = 1 THEN 'Yes' 
WHEN DIQ080 = 2 THEN 'No' 
WHEN DIQ080 = 7 THEN 'Refused' 
WHEN DIQ080 = 9 THEN 'Don't know' 
WHEN DIQ080 IS NULL THEN NULL 
ELSE NULL 
 END as diabetes_affected_eyes_had_retinopathy,
 FROM {ref('stg_diabetes_questionnaire'})