SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN MCQ010 = 1 THEN 'Yes' 
WHEN MCQ010 = 2 THEN 'No' 
WHEN MCQ010 = 7 THEN 'Refused' 
WHEN MCQ010 = 9 THEN 'Don\'t know' 
WHEN MCQ010 IS NULL THEN NULL 
ELSE NULL 
 END as ever_been_told_you_have_asthma,
WHEN MCQ025 IS NOT NULL THEN MCQ025WHEN MCQ025 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_first_had_asthma,
CASE
        WHEN MCQ035 = 1 THEN 'Yes' 
WHEN MCQ035 = 2 THEN 'No' 
WHEN MCQ035 = 7 THEN 'Refused' 
WHEN MCQ035 = 9 THEN 'Don\'t know' 
WHEN MCQ035 IS NULL THEN NULL 
ELSE NULL 
 END as still_have_asthma,
CASE
        WHEN MCQ040 = 1 THEN 'Yes' 
WHEN MCQ040 = 2 THEN 'No' 
WHEN MCQ040 = 7 THEN 'Refused' 
WHEN MCQ040 = 9 THEN 'Don\'t know' 
WHEN MCQ040 IS NULL THEN NULL 
ELSE NULL 
 END as had_asthma_attack_in_past_year,
CASE
        WHEN MCQ050 = 1 THEN 'Yes' 
WHEN MCQ050 = 2 THEN 'No' 
WHEN MCQ050 = 7 THEN 'Refused' 
WHEN MCQ050 = 9 THEN 'Don\'t know' 
WHEN MCQ050 IS NULL THEN NULL 
ELSE NULL 
 END as emergency_care_visit_for_asthma_past_yr,
CASE
        WHEN AGQ030 = '1' THEN 'Yes' 
WHEN AGQ030 = '2' THEN 'No' 
WHEN AGQ030 = '7' THEN 'Refused' 
WHEN AGQ030 = '9' THEN 'Don\'t know' 
WHEN AGQ030 IS NULL THEN NULL 
ELSE NULL 
 END as did_sp_have_episode_of_hay_fever_past_yr,
CASE
        WHEN MCQ053 = 1 THEN 'Yes' 
WHEN MCQ053 = 2 THEN 'No' 
WHEN MCQ053 = 7 THEN 'Refused' 
WHEN MCQ053 = 9 THEN 'Don\'t know' 
WHEN MCQ053 IS NULL THEN NULL 
ELSE NULL 
 END as taking_treatment_for_anemia_past_3_mos,
CASE
        WHEN MCQ080 = 1 THEN 'Yes' 
WHEN MCQ080 = 2 THEN 'No' 
WHEN MCQ080 = 7 THEN 'Refused' 
WHEN MCQ080 = 9 THEN 'Don\'t know' 
WHEN MCQ080 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_said_you_were_overweight,
CASE
        WHEN MCQ092 = 1 THEN 'Yes' 
WHEN MCQ092 = 2 THEN 'No' 
WHEN MCQ092 = 7 THEN 'Refused' 
WHEN MCQ092 = 9 THEN 'Don\'t know' 
WHEN MCQ092 IS NULL THEN NULL 
ELSE NULL 
 END as ever_receive_blood_transfusion,
CASE
        WHEN MCD093 = 1 THEN 'Before 1972' 
WHEN MCD093 = 2 THEN '1972 - 1991' 
WHEN MCD093 = 3 THEN '1992 to present' 
WHEN MCD093 = 7 THEN 'Refused' 
WHEN MCD093 = 9 THEN 'Don\'t know' 
WHEN MCD093 IS NULL THEN NULL 
ELSE NULL 
 END as year_receive_blood_transfusion,
CASE
        WHEN MCQ149 = '1' THEN 'Yes' 
WHEN MCQ149 = '2' THEN 'No' 
WHEN MCQ149 = '7' THEN 'Refused' 
WHEN MCQ149 = '9' THEN 'Don\'t know' 
WHEN MCQ149 IS NULL THEN NULL 
ELSE NULL 
 END as menstrual_periods_started_yet,
WHEN MCQ151 IS NOT NULL THEN SAFE_CAST(MCQ151 AS FLOAT64)WHEN MCQ151 IS NULL THEN NULL 
ELSE NULL 
 END as age_in_years_at_first_menstrual_period,
WHEN RHD018 IS NOT NULL THEN SAFE_CAST(RHD018 AS FLOAT64)WHEN RHD018 IS NULL THEN NULL 
ELSE NULL 
 END as estimated_age_in_months_at_menarche,
CASE
        WHEN MCQ195 = '1' THEN 'Osteoarthritis or degenerative arthritis' 
WHEN MCQ195 = '2' THEN 'Rheumatoid arthritis' 
WHEN MCQ195 = '3' THEN 'Psoriatic arthritis' 
WHEN MCQ195 = '4' THEN 'Other' 
WHEN MCQ195 = '7' THEN 'Refused' 
WHEN MCQ195 = '9' THEN 'Don\'t know' 
WHEN MCQ195 IS NULL THEN NULL 
ELSE NULL 
 END as which_type_of_arthritis_was_it,
CASE
        WHEN MCQ500 = '1' THEN 'Yes' 
WHEN MCQ500 = '2' THEN 'No' 
WHEN MCQ500 = '7' THEN 'Refused' 
WHEN MCQ500 = '9' THEN 'Don\'t know' 
WHEN MCQ500 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_any_liver_condition,
CASE
        WHEN MCQ520 = '1' THEN 'Yes' 
WHEN MCQ520 = '2' THEN 'No' 
WHEN MCQ520 = '7' THEN 'Refused' 
WHEN MCQ520 = '9' THEN 'Don\'t know' 
WHEN MCQ520 IS NULL THEN NULL 
ELSE NULL 
 END as abdominal_pain_during_past_12_months,
CASE
        WHEN MCQ530 = '1' THEN 'Right upper abdomen' 
WHEN MCQ530 = '2' THEN 'Mid upper abdomen' 
WHEN MCQ530 = '3' THEN 'Left upper abdomen' 
WHEN MCQ530 = '7' THEN 'Refused' 
WHEN MCQ530 = '9' THEN 'Don\'t know' 
WHEN MCQ530 IS NULL THEN NULL 
ELSE NULL 
 END as where_was_the_most_uncomfortable_pain,
CASE
        WHEN MCQ540 = '1' THEN 'Yes' 
WHEN MCQ540 = '2' THEN 'No' 
WHEN MCQ540 = '7' THEN 'Refused' 
WHEN MCQ540 = '9' THEN 'Don\'t know' 
WHEN MCQ540 IS NULL THEN NULL 
ELSE NULL 
 END as ever_seen_a_dr_about_this_pain,
CASE
        WHEN MCQ550 = '1' THEN 'Yes' 
WHEN MCQ550 = '2' THEN 'No' 
WHEN MCQ550 = '7' THEN 'Refused' 
WHEN MCQ550 = '9' THEN 'Don\'t know' 
WHEN MCQ550 IS NULL THEN NULL 
ELSE NULL 
 END as has_dr_ever_said_you_have_gallstones,
CASE
        WHEN MCQ560 = '1' THEN 'Yes' 
WHEN MCQ560 = '2' THEN 'No' 
WHEN MCQ560 = '7' THEN 'Refused' 
WHEN MCQ560 = '9' THEN 'Don\'t know' 
WHEN MCQ560 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_gallbladder_surgery,
WHEN MCQ570 IS NOT NULL THEN SAFE_CAST(MCQ570 AS FLOAT64)WHEN MCQ570 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_1st_had_gallbladder_surgery,
CASE
        WHEN MCQ203 = '1' THEN 'Yes' 
WHEN MCQ203 = '2' THEN 'No' 
WHEN MCQ203 = '7' THEN 'Refused' 
WHEN MCQ203 = '9' THEN 'Don\'t know' 
WHEN MCQ203 IS NULL THEN NULL 
ELSE NULL 
 END as ever_been_told_you_have_jaundice,
WHEN MCQ206 IS NOT NULL THEN SAFE_CAST(MCQ206 AS FLOAT64)WHEN MCQ206 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_have_jaundice,
CASE
        WHEN MCQ220 = 1 THEN 'Yes' 
WHEN MCQ220 = 2 THEN 'No' 
WHEN MCQ220 = 7 THEN 'Refused' 
WHEN MCQ220 = 9 THEN 'Don\'t know' 
WHEN MCQ220 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_cancer_or_malignancy,
CASE
        WHEN OSQ230 = '1' THEN 'Yes' 
WHEN OSQ230 = '2' THEN 'No' 
WHEN OSQ230 = '7' THEN 'Refused' 
WHEN OSQ230 = '9' THEN 'Don\'t Know' 
WHEN OSQ230 IS NULL THEN NULL 
ELSE NULL 
 END as any_metal_objects_inside_your_body,
 FROM {{ ref('stg_medical_conditions_questionnaire') }}