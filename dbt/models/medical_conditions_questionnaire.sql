SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN MCQ010 = 1 THEN 'Yes' 
WHEN MCQ010 = 2 THEN 'No' 
WHEN MCQ010 = 7 THEN 'Refused' 
WHEN MCQ010 = 9 THEN 'Don't know' 
WHEN MCQ010 IS NULL THEN NULL 
ELSE NULL 
 END as ever_been_told_you_have_asthma,
WHEN MCQ025 IS NOT NULL THEN SAFE_CAST(MCQ025 AS FLOAT64)WHEN MCQ025 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_first_had_asthma,
CASE
    WHEN MCQ035 = 1 THEN 'Yes' 
WHEN MCQ035 = 2 THEN 'No' 
WHEN MCQ035 = 7 THEN 'Refused' 
WHEN MCQ035 = 9 THEN 'Don't know' 
WHEN MCQ035 IS NULL THEN NULL 
ELSE NULL 
 END as still_have_asthma,
CASE
    WHEN MCQ040 = 1 THEN 'Yes' 
WHEN MCQ040 = 2 THEN 'No' 
WHEN MCQ040 = 7 THEN 'Refused' 
WHEN MCQ040 = 9 THEN 'Don't know' 
WHEN MCQ040 IS NULL THEN NULL 
ELSE NULL 
 END as had_asthma_attack_in_past_year,
CASE
    WHEN MCQ050 = 1 THEN 'Yes' 
WHEN MCQ050 = 2 THEN 'No' 
WHEN MCQ050 = 7 THEN 'Refused' 
WHEN MCQ050 = 9 THEN 'Don't know' 
WHEN MCQ050 IS NULL THEN NULL 
ELSE NULL 
 END as emergency_care_visit_for_asthma_past_yr,
CASE
    WHEN AGQ030 = 1 THEN 'Yes' 
WHEN AGQ030 = 2 THEN 'No' 
WHEN AGQ030 = 7 THEN 'Refused' 
WHEN AGQ030 = 9 THEN 'Don't know' 
WHEN AGQ030 IS NULL THEN NULL 
ELSE NULL 
 END as did_sp_have_episode_of_hay_fever_past_yr,
CASE
    WHEN MCQ053 = 1 THEN 'Yes' 
WHEN MCQ053 = 2 THEN 'No' 
WHEN MCQ053 = 7 THEN 'Refused' 
WHEN MCQ053 = 9 THEN 'Don't know' 
WHEN MCQ053 IS NULL THEN NULL 
ELSE NULL 
 END as taking_treatment_for_anemia_past_3_mos,
CASE
    WHEN MCQ080 = 1 THEN 'Yes' 
WHEN MCQ080 = 2 THEN 'No' 
WHEN MCQ080 = 7 THEN 'Refused' 
WHEN MCQ080 = 9 THEN 'Don't know' 
WHEN MCQ080 IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_said_you_were_overweight,
CASE
    WHEN MCQ092 = 1 THEN 'Yes' 
WHEN MCQ092 = 2 THEN 'No' 
WHEN MCQ092 = 7 THEN 'Refused' 
WHEN MCQ092 = 9 THEN 'Don't know' 
WHEN MCQ092 IS NULL THEN NULL 
ELSE NULL 
 END as ever_receive_blood_transfusion,
CASE
    WHEN MCD093 = 1 THEN 'Before 1972' 
WHEN MCD093 = 2 THEN '1972 - 1991' 
WHEN MCD093 = 3 THEN '1992 to present' 
WHEN MCD093 = 7 THEN 'Refused' 
WHEN MCD093 = 9 THEN 'Don't know' 
WHEN MCD093 IS NULL THEN NULL 
ELSE NULL 
 END as year_receive_blood_transfusion,
CASE
    WHEN MCQ149 = 1 THEN 'Yes' 
WHEN MCQ149 = 2 THEN 'No' 
WHEN MCQ149 = 7 THEN 'Refused' 
WHEN MCQ149 = 9 THEN 'Don't know' 
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
    WHEN MCQ160a = 1 THEN 'Yes' 
WHEN MCQ160a = 2 THEN 'No' 
WHEN MCQ160a = 7 THEN 'Refused' 
WHEN MCQ160a = 9 THEN 'Don't know' 
WHEN MCQ160a IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_said_you_had_arthritis,
WHEN MCD180a IS NOT NULL THEN SAFE_CAST(MCD180a AS FLOAT64)WHEN MCD180a IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_arthritis,
CASE
    WHEN MCQ195 = 1 THEN 'Osteoarthritis or degenerative arthritis' 
WHEN MCQ195 = 2 THEN 'Rheumatoid arthritis' 
WHEN MCQ195 = 3 THEN 'Psoriatic arthritis' 
WHEN MCQ195 = 4 THEN 'Other' 
WHEN MCQ195 = 7 THEN 'Refused' 
WHEN MCQ195 = 9 THEN 'Don't know' 
WHEN MCQ195 IS NULL THEN NULL 
ELSE NULL 
 END as which_type_of_arthritis_was_it,
CASE
    WHEN MCQ160n = 1 THEN 'Yes' 
WHEN MCQ160n = 2 THEN 'No' 
WHEN MCQ160n = 7 THEN 'Refused' 
WHEN MCQ160n = 9 THEN 'Don't know' 
WHEN MCQ160n IS NULL THEN NULL 
ELSE NULL 
 END as doctor_ever_told_you_that_you_had_gout,
WHEN MCD180n IS NOT NULL THEN SAFE_CAST(MCD180n AS FLOAT64)WHEN MCD180n IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_gout,
CASE
    WHEN MCQ160b = 1 THEN 'Yes' 
WHEN MCQ160b = 2 THEN 'No' 
WHEN MCQ160b = 7 THEN 'Refused' 
WHEN MCQ160b = 9 THEN 'Don't know' 
WHEN MCQ160b IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_had_congestive_heart_failure,
WHEN MCD180b IS NOT NULL THEN SAFE_CAST(MCD180b AS FLOAT64)WHEN MCD180b IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_heart_failure,
CASE
    WHEN MCQ160c = 1 THEN 'Yes' 
WHEN MCQ160c = 2 THEN 'No' 
WHEN MCQ160c = 7 THEN 'Refused' 
WHEN MCQ160c = 9 THEN 'Don't know' 
WHEN MCQ160c IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_coronary_heart_disease,
WHEN MCD180c IS NOT NULL THEN SAFE_CAST(MCD180c AS FLOAT64)WHEN MCD180c IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_had_coronary_heart_disease,
CASE
    WHEN MCQ160d = 1 THEN 'Yes' 
WHEN MCQ160d = 2 THEN 'No' 
WHEN MCQ160d = 7 THEN 'Refused' 
WHEN MCQ160d = 9 THEN 'Don't know' 
WHEN MCQ160d IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_angina_angina_pectoris,
WHEN MCD180d IS NOT NULL THEN SAFE_CAST(MCD180d AS FLOAT64)WHEN MCD180d IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_angina_pectoris,
CASE
    WHEN MCQ160e = 1 THEN 'Yes' 
WHEN MCQ160e = 2 THEN 'No' 
WHEN MCQ160e = 7 THEN 'Refused' 
WHEN MCQ160e = 9 THEN 'Don't know' 
WHEN MCQ160e IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_heart_attack,
WHEN MCD180e IS NOT NULL THEN SAFE_CAST(MCD180e AS FLOAT64)WHEN MCD180e IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_heart_attack,
CASE
    WHEN MCQ160f = 1 THEN 'Yes' 
WHEN MCQ160f = 2 THEN 'No' 
WHEN MCQ160f = 7 THEN 'Refused' 
WHEN MCQ160f = 9 THEN 'Don't know' 
WHEN MCQ160f IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_a_stroke,
WHEN MCD180f IS NOT NULL THEN SAFE_CAST(MCD180f AS FLOAT64)WHEN MCD180f IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_a_stroke,
CASE
    WHEN MCQ160m = 1 THEN 'Yes' 
WHEN MCQ160m = 2 THEN 'No' 
WHEN MCQ160m = 7 THEN 'Refused' 
WHEN MCQ160m = 9 THEN 'Don't know' 
WHEN MCQ160m IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_thyroid_problem,
CASE
    WHEN MCQ170m = 1 THEN 'Yes' 
WHEN MCQ170m = 2 THEN 'No' 
WHEN MCQ170m = 7 THEN 'Refused' 
WHEN MCQ170m = 9 THEN 'Don't know' 
WHEN MCQ170m IS NULL THEN NULL 
ELSE NULL 
 END as do_you_still_have_thyroid_problem,
WHEN MCD180m IS NOT NULL THEN SAFE_CAST(MCD180m AS FLOAT64)WHEN MCD180m IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_thyroid_problem,
CASE
    WHEN MCQ160g = 1 THEN 'Yes' 
WHEN MCQ160g = 2 THEN 'No' 
WHEN MCQ160g = 7 THEN 'Refused' 
WHEN MCQ160g = 9 THEN 'Don't know' 
WHEN MCQ160g IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_emphysema,
WHEN MCD180g IS NOT NULL THEN SAFE_CAST(MCD180g AS FLOAT64)WHEN MCD180g IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_emphysema,
CASE
    WHEN MCQ160k = 1 THEN 'Yes' 
WHEN MCQ160k = 2 THEN 'No' 
WHEN MCQ160k = 7 THEN 'Refused' 
WHEN MCQ160k = 9 THEN 'Don't know' 
WHEN MCQ160k IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_chronic_bronchitis,
CASE
    WHEN MCQ170k = 1 THEN 'Yes' 
WHEN MCQ170k = 2 THEN 'No' 
WHEN MCQ170k = 7 THEN 'Refused' 
WHEN MCQ170k = 9 THEN 'Don't know' 
WHEN MCQ170k IS NULL THEN NULL 
ELSE NULL 
 END as do_you_still_have_chronic_bronchitis,
WHEN MCD180k IS NOT NULL THEN SAFE_CAST(MCD180k AS FLOAT64)WHEN MCD180k IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_chronic_bronchitis,
CASE
    WHEN MCQ160o = 1 THEN 'Yes' 
WHEN MCQ160o = 2 THEN 'No' 
WHEN MCQ160o = 7 THEN 'Refused' 
WHEN MCQ160o = 9 THEN 'Don't know' 
WHEN MCQ160o IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_copd,
CASE
    WHEN MCQ160l = 1 THEN 'Yes' 
WHEN MCQ160l = 2 THEN 'No' 
WHEN MCQ160l = 7 THEN 'Refused' 
WHEN MCQ160l = 9 THEN 'Don't know' 
WHEN MCQ160l IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_any_liver_condition,
CASE
    WHEN MCQ170l = 1 THEN 'Yes' 
WHEN MCQ170l = 2 THEN 'No' 
WHEN MCQ170l = 7 THEN 'Refused' 
WHEN MCQ170l = 9 THEN 'Don't know' 
WHEN MCQ170l IS NULL THEN NULL 
ELSE NULL 
 END as do_you_still_have_a_liver_condition,
WHEN MCD180l IS NOT NULL THEN SAFE_CAST(MCD180l AS FLOAT64)WHEN MCD180l IS NULL THEN NULL 
ELSE NULL 
 END as age_when_told_you_had_a_liver_condition,
CASE
    WHEN MCQ500 = 1 THEN 'Yes' 
WHEN MCQ500 = 2 THEN 'No' 
WHEN MCQ500 = 7 THEN 'Refused' 
WHEN MCQ500 = 9 THEN 'Don't know' 
WHEN MCQ500 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_any_liver_condition,
CASE
    WHEN MCQ510a = 1 THEN 'Fatty liver' 
WHEN MCQ510a = 77 THEN 'Refused' 
WHEN MCQ510a = 99 THEN 'Don't know' 
WHEN MCQ510a IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_fatty_liver,
CASE
    WHEN MCQ510b = 2 THEN 'Liver fibrosis' 
WHEN MCQ510b IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_liver_fibrosis,
CASE
    WHEN MCQ510c = 3 THEN 'Liver cirrhosis' 
WHEN MCQ510c IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_liver_cirrhosis,
CASE
    WHEN MCQ510d = 4 THEN 'Viral hepatitis' 
WHEN MCQ510d IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_viral_hepatitis,
CASE
    WHEN MCQ510e = 5 THEN 'Autoimmune hepatitis' 
WHEN MCQ510e IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_autoimmune_hepatitis,
CASE
    WHEN MCQ510f = 6 THEN 'Other liver disease' 
WHEN MCQ510f IS NULL THEN NULL 
ELSE NULL 
 END as liver_condition_other_liver_disease,
MCQ515 as MCQ515, -- Could not automatically decode
CASE
    WHEN MCQ520 = 1 THEN 'Yes' 
WHEN MCQ520 = 2 THEN 'No' 
WHEN MCQ520 = 7 THEN 'Refused' 
WHEN MCQ520 = 9 THEN 'Don't know' 
WHEN MCQ520 IS NULL THEN NULL 
ELSE NULL 
 END as abdominal_pain_during_past_12_months,
CASE
    WHEN MCQ530 = 1 THEN 'Right upper abdomen' 
WHEN MCQ530 = 2 THEN 'Mid upper abdomen' 
WHEN MCQ530 = 3 THEN 'Left upper abdomen' 
WHEN MCQ530 = 7 THEN 'Refused' 
WHEN MCQ530 = 9 THEN 'Don't know' 
WHEN MCQ530 IS NULL THEN NULL 
ELSE NULL 
 END as where_was_the_most_uncomfortable_pain,
CASE
    WHEN MCQ540 = 1 THEN 'Yes' 
WHEN MCQ540 = 2 THEN 'No' 
WHEN MCQ540 = 7 THEN 'Refused' 
WHEN MCQ540 = 9 THEN 'Don't know' 
WHEN MCQ540 IS NULL THEN NULL 
ELSE NULL 
 END as ever_seen_a_dr_about_this_pain,
CASE
    WHEN MCQ550 = 1 THEN 'Yes' 
WHEN MCQ550 = 2 THEN 'No' 
WHEN MCQ550 = 7 THEN 'Refused' 
WHEN MCQ550 = 9 THEN 'Don't know' 
WHEN MCQ550 IS NULL THEN NULL 
ELSE NULL 
 END as has_dr_ever_said_you_have_gallstones,
CASE
    WHEN MCQ560 = 1 THEN 'Yes' 
WHEN MCQ560 = 2 THEN 'No' 
WHEN MCQ560 = 7 THEN 'Refused' 
WHEN MCQ560 = 9 THEN 'Don't know' 
WHEN MCQ560 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_gallbladder_surgery,
WHEN MCQ570 IS NOT NULL THEN SAFE_CAST(MCQ570 AS FLOAT64)WHEN MCQ570 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_1st_had_gallbladder_surgery,
CASE
    WHEN MCQ203 = 1 THEN 'Yes' 
WHEN MCQ203 = 2 THEN 'No' 
WHEN MCQ203 = 7 THEN 'Refused' 
WHEN MCQ203 = 9 THEN 'Don't know' 
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
WHEN MCQ220 = 9 THEN 'Don't know' 
WHEN MCQ220 IS NULL THEN NULL 
ELSE NULL 
 END as ever_told_you_had_cancer_or_malignancy,
CASE
    WHEN MCQ230a = 10 THEN 'Bladder' 
WHEN MCQ230a = 11 THEN 'Blood' 
WHEN MCQ230a = 12 THEN 'Bone' 
WHEN MCQ230a = 13 THEN 'Brain' 
WHEN MCQ230a = 14 THEN 'Breast' 
WHEN MCQ230a = 15 THEN 'Cervix (cervical)' 
WHEN MCQ230a = 16 THEN 'Colon' 
WHEN MCQ230a = 17 THEN 'Esophagus (esophageal)' 
WHEN MCQ230a = 18 THEN 'Gallbladder' 
WHEN MCQ230a = 19 THEN 'Kidney' 
WHEN MCQ230a = 20 THEN 'Larynx/ windpipe' 
WHEN MCQ230a = 21 THEN 'Leukemia' 
WHEN MCQ230a = 22 THEN 'Liver' 
WHEN MCQ230a = 23 THEN 'Lung' 
WHEN MCQ230a = 24 THEN 'Lymphoma/ Hodgkin's disease' 
WHEN MCQ230a = 25 THEN 'Melanoma' 
WHEN MCQ230a = 26 THEN 'Mouth/tongue/lip' 
WHEN MCQ230a = 27 THEN 'Nervous system' 
WHEN MCQ230a = 28 THEN 'Ovary (ovarian)' 
WHEN MCQ230a = 29 THEN 'Pancreas (pancreatic)' 
WHEN MCQ230a = 30 THEN 'Prostate' 
WHEN MCQ230a = 31 THEN 'Rectum (rectal)' 
WHEN MCQ230a = 32 THEN 'Skin (non-melanoma)' 
WHEN MCQ230a = 33 THEN 'Skin (don't know what kind)' 
WHEN MCQ230a = 34 THEN 'Soft tissue (muscle or fat)' 
WHEN MCQ230a = 35 THEN 'Stomach' 
WHEN MCQ230a = 36 THEN 'Testis (testicular)' 
WHEN MCQ230a = 37 THEN 'Thyroid' 
WHEN MCQ230a = 38 THEN 'Uterus (uterine)' 
WHEN MCQ230a = 39 THEN 'Other' 
WHEN MCQ230a = 66 THEN 'More than 3 kinds' 
WHEN MCQ230a = 77 THEN 'Refused' 
WHEN MCQ230a = 99 THEN 'Don't know' 
WHEN MCQ230a IS NULL THEN NULL 
ELSE NULL 
 END as 1st_cancer_what_kind_was_it,
WHEN MCD240a IS NOT NULL THEN SAFE_CAST(MCD240a AS FLOAT64)WHEN MCD240a IS NULL THEN NULL 
ELSE NULL 
 END as age_1st_cancer_mcq230a_diagnosed,
CASE
    WHEN MCQ230b = 10 THEN 'Bladder' 
WHEN MCQ230b = 11 THEN 'Blood' 
WHEN MCQ230b = 12 THEN 'Bone' 
WHEN MCQ230b = 13 THEN 'Brain' 
WHEN MCQ230b = 14 THEN 'Breast' 
WHEN MCQ230b = 15 THEN 'Cervix (cervical)' 
WHEN MCQ230b = 16 THEN 'Colon' 
WHEN MCQ230b = 17 THEN 'Esophagus (esophageal)' 
WHEN MCQ230b = 18 THEN 'Gallbladder' 
WHEN MCQ230b = 19 THEN 'Kidney' 
WHEN MCQ230b = 20 THEN 'Larynx/ windpipe' 
WHEN MCQ230b = 21 THEN 'Leukemia' 
WHEN MCQ230b = 22 THEN 'Liver' 
WHEN MCQ230b = 23 THEN 'Lung' 
WHEN MCQ230b = 24 THEN 'Lymphoma/ Hodgkins disease' 
WHEN MCQ230b = 25 THEN 'Melanoma' 
WHEN MCQ230b = 26 THEN 'Mouth/tongue/lip' 
WHEN MCQ230b = 27 THEN 'Nervous system' 
WHEN MCQ230b = 28 THEN 'Ovary (ovarian)' 
WHEN MCQ230b = 29 THEN 'Pancreas (pancreatic)' 
WHEN MCQ230b = 30 THEN 'Prostate' 
WHEN MCQ230b = 31 THEN 'Rectum (rectal)' 
WHEN MCQ230b = 32 THEN 'Skin (non-melanoma)' 
WHEN MCQ230b = 33 THEN 'Skin (don't know what kind)' 
WHEN MCQ230b = 34 THEN 'Soft tissue (muscle or fat)' 
WHEN MCQ230b = 35 THEN 'Stomach' 
WHEN MCQ230b = 36 THEN 'Testis (testicular)' 
WHEN MCQ230b = 37 THEN 'Thyroid' 
WHEN MCQ230b = 38 THEN 'Uterus (uterine)' 
WHEN MCQ230b = 39 THEN 'Other' 
WHEN MCQ230b = 66 THEN 'More than 3 kinds' 
WHEN MCQ230b = 77 THEN 'Refused' 
WHEN MCQ230b = 99 THEN 'Don't know' 
WHEN MCQ230b IS NULL THEN NULL 
ELSE NULL 
 END as 2nd_cancer_what_kind_was_it,
WHEN MCD240b IS NOT NULL THEN SAFE_CAST(MCD240b AS FLOAT64)WHEN MCD240b IS NULL THEN NULL 
ELSE NULL 
 END as age_2nd_cancer_mcq230b_diagnosed,
CASE
    WHEN MCQ230c = 10 THEN 'Bladder' 
WHEN MCQ230c = 11 THEN 'Blood' 
WHEN MCQ230c = 12 THEN 'Bone' 
WHEN MCQ230c = 13 THEN 'Brain' 
WHEN MCQ230c = 14 THEN 'Breast' 
WHEN MCQ230c = 15 THEN 'Cervix (cervical)' 
WHEN MCQ230c = 16 THEN 'Colon' 
WHEN MCQ230c = 17 THEN 'Esophagus (esophageal)' 
WHEN MCQ230c = 18 THEN 'Gallbladder' 
WHEN MCQ230c = 19 THEN 'Kidney' 
WHEN MCQ230c = 20 THEN 'Larynx/ windpipe' 
WHEN MCQ230c = 21 THEN 'Leukemia' 
WHEN MCQ230c = 22 THEN 'Liver' 
WHEN MCQ230c = 23 THEN 'Lung' 
WHEN MCQ230c = 24 THEN 'Lymphoma/ Hodgkins disease' 
WHEN MCQ230c = 25 THEN 'Melanoma' 
WHEN MCQ230c = 26 THEN 'Mouth/tongue/lip' 
WHEN MCQ230c = 27 THEN 'Nervous system' 
WHEN MCQ230c = 28 THEN 'Ovary (ovarian)' 
WHEN MCQ230c = 29 THEN 'Pancreas (pancreatic)' 
WHEN MCQ230c = 30 THEN 'Prostate' 
WHEN MCQ230c = 31 THEN 'Rectum (rectal)' 
WHEN MCQ230c = 32 THEN 'Skin (non-melanoma)' 
WHEN MCQ230c = 33 THEN 'Skin (don't know what kind)' 
WHEN MCQ230c = 34 THEN 'Soft tissue (muscle or fat)' 
WHEN MCQ230c = 35 THEN 'Stomach' 
WHEN MCQ230c = 36 THEN 'Testis (testicular)' 
WHEN MCQ230c = 37 THEN 'Thyroid' 
WHEN MCQ230c = 38 THEN 'Uterus (uterine)' 
WHEN MCQ230c = 39 THEN 'Other' 
WHEN MCQ230c = 66 THEN 'More than 3 kinds' 
WHEN MCQ230c = 77 THEN 'Refused' 
WHEN MCQ230c = 99 THEN 'Don't know' 
WHEN MCQ230c IS NULL THEN NULL 
ELSE NULL 
 END as 3rd_cancer_what_kind_was_it,
WHEN MCD240c IS NOT NULL THEN SAFE_CAST(MCD240c AS FLOAT64)WHEN MCD240c IS NULL THEN NULL 
ELSE NULL 
 END as age_3rd_cancer_mcq230c_diagnosed,
CASE
    WHEN MCQ230d = 66 THEN 'More than 3 kinds' 
WHEN MCQ230d = 77 THEN 'Refused' 
WHEN MCQ230d = 99 THEN 'Don't know' 
WHEN MCQ230d IS NULL THEN NULL 
ELSE NULL 
 END as more_than_3_kinds_of_cancer,
CASE
    WHEN MCQ300b = 1 THEN 'Yes' 
WHEN MCQ300b = 2 THEN 'No' 
WHEN MCQ300b = 7 THEN 'Refused' 
WHEN MCQ300b = 9 THEN 'Don't know' 
WHEN MCQ300b IS NULL THEN NULL 
ELSE NULL 
 END as close_relative_had_asthma,
CASE
    WHEN MCQ300c = 1 THEN 'Yes' 
WHEN MCQ300c = 2 THEN 'No' 
WHEN MCQ300c = 7 THEN 'Refused' 
WHEN MCQ300c = 9 THEN 'Don't know' 
WHEN MCQ300c IS NULL THEN NULL 
ELSE NULL 
 END as close_relative_had_diabetes,
CASE
    WHEN MCQ300a = 1 THEN 'Yes' 
WHEN MCQ300a = 2 THEN 'No' 
WHEN MCQ300a = 7 THEN 'Refused' 
WHEN MCQ300a = 9 THEN 'Don't know' 
WHEN MCQ300a IS NULL THEN NULL 
ELSE NULL 
 END as close_relative_had_heart_attack,
CASE
    WHEN MCQ366a = 1 THEN 'Yes' 
WHEN MCQ366a = 2 THEN 'No' 
WHEN MCQ366a = 7 THEN 'Refused' 
WHEN MCQ366a = 9 THEN 'Don't know' 
WHEN MCQ366a IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_to_control_lose_weight,
CASE
    WHEN MCQ366b = 1 THEN 'Yes' 
WHEN MCQ366b = 2 THEN 'No' 
WHEN MCQ366b = 7 THEN 'Refused' 
WHEN MCQ366b = 9 THEN 'Don't know' 
WHEN MCQ366b IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_to_exercise,
CASE
    WHEN MCQ366c = 1 THEN 'Yes' 
WHEN MCQ366c = 2 THEN 'No' 
WHEN MCQ366c = 7 THEN 'Refused' 
WHEN MCQ366c = 9 THEN 'Don't know' 
WHEN MCQ366c IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_to_reduce_salt_in_diet,
CASE
    WHEN MCQ366d = 1 THEN 'Yes' 
WHEN MCQ366d = 2 THEN 'No' 
WHEN MCQ366d = 7 THEN 'Refused' 
WHEN MCQ366d = 9 THEN 'Don't know' 
WHEN MCQ366d IS NULL THEN NULL 
ELSE NULL 
 END as doctor_told_you_to_reduce_fat_calories,
CASE
    WHEN MCQ371a = 1 THEN 'Yes' 
WHEN MCQ371a = 2 THEN 'No' 
WHEN MCQ371a = 7 THEN 'Refused' 
WHEN MCQ371a = 9 THEN 'Don't know' 
WHEN MCQ371a IS NULL THEN NULL 
ELSE NULL 
 END as are_you_now_controlling_or_losing_weight,
CASE
    WHEN MCQ371b = 1 THEN 'Yes' 
WHEN MCQ371b = 2 THEN 'No' 
WHEN MCQ371b = 7 THEN 'Refused' 
WHEN MCQ371b = 9 THEN 'Don't know' 
WHEN MCQ371b IS NULL THEN NULL 
ELSE NULL 
 END as are_you_now_increasing_exercise,
CASE
    WHEN MCQ371c = 1 THEN 'Yes' 
WHEN MCQ371c = 2 THEN 'No' 
WHEN MCQ371c = 7 THEN 'Refused' 
WHEN MCQ371c = 9 THEN 'Don't know' 
WHEN MCQ371c IS NULL THEN NULL 
ELSE NULL 
 END as are_you_now_reducing_salt_in_diet,
CASE
    WHEN MCQ371d = 1 THEN 'Yes' 
WHEN MCQ371d = 2 THEN 'No' 
WHEN MCQ371d = 7 THEN 'Refused' 
WHEN MCQ371d = 9 THEN 'Don't know' 
WHEN MCQ371d IS NULL THEN NULL 
ELSE NULL 
 END as are_you_now_reducing_fat_in_diet,
CASE
    WHEN OSQ230 = 1 THEN 'Yes' 
WHEN OSQ230 = 2 THEN 'No' 
WHEN OSQ230 = 7 THEN 'Refused' 
WHEN OSQ230 = 9 THEN 'Don't Know' 
WHEN OSQ230 IS NULL THEN NULL 
ELSE NULL 
 END as any_metal_objects_inside_your_body,
 FROM {ref('stg_medical_conditions_questionnaire'})