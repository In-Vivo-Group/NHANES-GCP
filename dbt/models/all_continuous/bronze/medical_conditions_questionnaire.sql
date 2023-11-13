SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN MCQ010 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ010 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ010 IS NULL THEN NULL 
ELSE MCQ010 
 END as ever_been_told_you_have_asthma, 

CASE
            WHEN MCQ025 IS NULL THEN NULL 
ELSE MCQ025 
 END as age_when_first_had_asthma, 

CASE
            WHEN MCQ035 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ035 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ035 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ035 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ035 IS NULL THEN NULL 
ELSE MCQ035 
 END as still_have_asthma, 

CASE
            WHEN MCQ040 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ040 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ040 IS NULL THEN NULL 
ELSE MCQ040 
 END as had_asthma_attack_in_past_year, 

CASE
            WHEN MCQ050 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ050 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ050 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ050 IS NULL THEN NULL 
ELSE MCQ050 
 END as emergency_care_visit_for_asthma_past_yr, 

CASE
            WHEN AGQ030 = '1' THEN 'Yes' -- categorize string values 
WHEN AGQ030 = '2' THEN 'No' -- categorize string values 
WHEN AGQ030 = '7' THEN 'Refused' -- categorize string values 
WHEN AGQ030 = '9' THEN 'Dont know' -- categorize string values 
WHEN AGQ030 IS NULL THEN NULL 
ELSE AGQ030 
 END as did_sp_have_episode_of_hay_fever_past_yr, 

CASE
            WHEN MCQ053 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ053 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ053 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ053 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ053 IS NULL THEN NULL 
ELSE MCQ053 
 END as taking_treatment_for_anemia_past_3_mos, 

CASE
            WHEN MCQ080 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ080 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ080 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ080 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ080 IS NULL THEN NULL 
ELSE MCQ080 
 END as doctor_ever_said_you_were_overweight, 

CASE
            WHEN MCQ092 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ092 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ092 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ092 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ092 IS NULL THEN NULL 
ELSE MCQ092 
 END as ever_receive_blood_transfusion, 

CASE
            WHEN MCD093 = 1 THEN 'Before 1972' -- categorize numeric values
WHEN MCD093 = 2 THEN '1972 - 1991' -- categorize numeric values
WHEN MCD093 = 3 THEN '1992 to present' -- categorize numeric values
WHEN MCD093 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCD093 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCD093 IS NULL THEN NULL 
ELSE MCD093 
 END as year_receive_blood_transfusion, 

CASE
            WHEN MCQ149 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ149 = '2' THEN 'No' -- categorize string values 
WHEN MCQ149 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ149 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ149 IS NULL THEN NULL 
ELSE MCQ149 
 END as menstrual_periods_started_yet, 

CASE
            WHEN SAFE_CAST(MCQ151 AS FLOAT64) > 11.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCQ151 IS NULL THEN NULL 
ELSE MCQ151 
 END as age_in_years_at_first_menstrual_period, 

CASE
            WHEN SAFE_CAST(RHD018 AS FLOAT64) > 142.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RHD018 IS NULL THEN NULL 
ELSE RHD018 
 END as estimated_age_in_months_at_menarche, 

CASE
            WHEN MCQ160A = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160A = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160A = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160A = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160A IS NULL THEN NULL 
ELSE MCQ160A 
 END as doctor_ever_said_you_had_arthritis, 

CASE
            WHEN SAFE_CAST(MCD180A AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180A IS NULL THEN NULL 
ELSE MCD180A 
 END as age_when_told_you_had_arthritis, 

CASE
            WHEN MCQ195 = '1' THEN 'Osteoarthritis or degenerative arthritis' -- categorize string values 
WHEN MCQ195 = '2' THEN 'Rheumatoid arthritis' -- categorize string values 
WHEN MCQ195 = '3' THEN 'Psoriatic arthritis' -- categorize string values 
WHEN MCQ195 = '4' THEN 'Other' -- categorize string values 
WHEN MCQ195 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ195 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ195 IS NULL THEN NULL 
ELSE MCQ195 
 END as which_type_of_arthritis_was_it, 

CASE
            WHEN MCQ160N = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ160N = '2' THEN 'No' -- categorize string values 
WHEN MCQ160N = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ160N = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ160N IS NULL THEN NULL 
ELSE MCQ160N 
 END as doctor_ever_told_you_that_you_had_gout, 

CASE
            WHEN SAFE_CAST(MCD180N AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180N IS NULL THEN NULL 
ELSE MCD180N 
 END as age_when_told_you_had_gout, 

CASE
            WHEN MCQ160B = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160B = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160B = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160B = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160B IS NULL THEN NULL 
ELSE MCQ160B 
 END as ever_told_had_congestive_heart_failure, 

CASE
            WHEN SAFE_CAST(MCD180B AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180B IS NULL THEN NULL 
ELSE MCD180B 
 END as age_when_told_you_had_heart_failure, 

CASE
            WHEN MCQ160C = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160C = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160C = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160C = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160C IS NULL THEN NULL 
ELSE MCQ160C 
 END as ever_told_you_had_coronary_heart_disease, 

CASE
            WHEN SAFE_CAST(MCD180C AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180C IS NULL THEN NULL 
ELSE MCD180C 
 END as age_when_told_had_coronary_heart_disease, 

CASE
            WHEN MCQ160D = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160D = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160D = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160D = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160D IS NULL THEN NULL 
ELSE MCQ160D 
 END as ever_told_you_had_angina_angina_pectoris, 

CASE
            WHEN SAFE_CAST(MCD180D AS FLOAT64) > 78.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180D IS NULL THEN NULL 
ELSE MCD180D 
 END as age_when_told_you_had_angina_pectoris, 

CASE
            WHEN MCQ160E = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160E = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160E = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160E = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160E IS NULL THEN NULL 
ELSE MCQ160E 
 END as ever_told_you_had_heart_attack, 

CASE
            WHEN SAFE_CAST(MCD180E AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180E IS NULL THEN NULL 
ELSE MCD180E 
 END as age_when_told_you_had_heart_attack, 

CASE
            WHEN MCQ160F = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160F = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160F = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160F = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160F IS NULL THEN NULL 
ELSE MCQ160F 
 END as ever_told_you_had_a_stroke, 

CASE
            WHEN SAFE_CAST(MCD180F AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180F IS NULL THEN NULL 
ELSE MCD180F 
 END as age_when_told_you_had_a_stroke, 

CASE
            WHEN MCQ160M = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ160M = '2' THEN 'No' -- categorize string values 
WHEN MCQ160M = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ160M = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ160M IS NULL THEN NULL 
ELSE MCQ160M 
 END as ever_told_you_had_thyroid_problem, 

CASE
            WHEN MCQ170M = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ170M = '2' THEN 'No' -- categorize string values 
WHEN MCQ170M = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ170M = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ170M IS NULL THEN NULL 
ELSE MCQ170M 
 END as do_you_still_have_thyroid_problem, 

CASE
            WHEN MCD180M IS NULL THEN NULL 
ELSE MCD180M 
 END as age_when_told_you_had_thyroid_problem, 

CASE
            WHEN MCQ160G = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160G = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160G = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160G = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160G IS NULL THEN NULL 
ELSE MCQ160G 
 END as ever_told_you_had_emphysema, 

CASE
            WHEN SAFE_CAST(MCD180G AS FLOAT64) > 76.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180G IS NULL THEN NULL 
ELSE MCD180G 
 END as age_when_told_you_had_emphysema, 

CASE
            WHEN MCQ160K = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160K = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160K = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160K = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160K IS NULL THEN NULL 
ELSE MCQ160K 
 END as ever_told_you_had_chronic_bronchitis, 

CASE
            WHEN MCQ170K = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ170K = 2 THEN 'No' -- categorize numeric values
WHEN MCQ170K = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ170K = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ170K IS NULL THEN NULL 
ELSE MCQ170K 
 END as do_you_still_have_chronic_bronchitis, 

CASE
            WHEN SAFE_CAST(MCD180K AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180K IS NULL THEN NULL 
ELSE MCD180K 
 END as age_when_told_you_had_chronic_bronchitis, 

CASE
            WHEN MCQ160O = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ160O = '2' THEN 'No' -- categorize string values 
WHEN MCQ160O = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ160O = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ160O IS NULL THEN NULL 
ELSE MCQ160O 
 END as ever_told_you_had_copd, 

CASE
            WHEN MCQ160L = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ160L = 2 THEN 'No' -- categorize numeric values
WHEN MCQ160L = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ160L = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ160L IS NULL THEN NULL 
ELSE MCQ160L 
 END as ever_told_you_had_any_liver_condition, 

CASE
            WHEN MCQ170L = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ170L = 2 THEN 'No' -- categorize numeric values
WHEN MCQ170L = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ170L = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ170L IS NULL THEN NULL 
ELSE MCQ170L 
 END as do_you_still_have_a_liver_condition, 

CASE
            WHEN SAFE_CAST(MCD180L AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD180L IS NULL THEN NULL 
ELSE MCD180L 
 END as age_when_told_you_had_a_liver_condition, 

CASE
            WHEN MCQ500 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ500 = '2' THEN 'No' -- categorize string values 
WHEN MCQ500 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ500 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ500 IS NULL THEN NULL 
ELSE MCQ500 
 END as ever_told_you_had_any_liver_condition_MCQ500, 

CASE
            WHEN MCQ510A = '1' THEN 'Fatty liver' -- categorize string values 
WHEN MCQ510A = '77' THEN 'Refused' -- categorize string values 
WHEN MCQ510A = '99' THEN 'Dont know' -- categorize string values 
WHEN MCQ510A IS NULL THEN NULL 
ELSE MCQ510A 
 END as liver_condition_fatty_liver, 

CASE
            WHEN MCQ510B = '2' THEN 'Liver fibrosis' -- categorize string values 
WHEN MCQ510B IS NULL THEN NULL 
ELSE MCQ510B 
 END as liver_condition_liver_fibrosis, 

CASE
            WHEN MCQ510C = '3' THEN 'Liver cirrhosis' -- categorize string values 
WHEN MCQ510C IS NULL THEN NULL 
ELSE MCQ510C 
 END as liver_condition_liver_cirrhosis, 

CASE
            WHEN MCQ510D = '4' THEN 'Viral hepatitis' -- categorize string values 
WHEN MCQ510D IS NULL THEN NULL 
ELSE MCQ510D 
 END as liver_condition_viral_hepatitis, 

CASE
            WHEN MCQ510E = '5' THEN 'Autoimmune hepatitis' -- categorize string values 
WHEN MCQ510E IS NULL THEN NULL 
ELSE MCQ510E 
 END as liver_condition_autoimmune_hepatitis, 

CASE
            WHEN MCQ510F = '6' THEN 'Other liver disease' -- categorize string values 
WHEN MCQ510F IS NULL THEN NULL 
ELSE MCQ510F 
 END as liver_condition_other_liver_disease, 

MCQ515 as MCQ515, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN MCQ520 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ520 = '2' THEN 'No' -- categorize string values 
WHEN MCQ520 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ520 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ520 IS NULL THEN NULL 
ELSE MCQ520 
 END as abdominal_pain_during_past_12_months, 

CASE
            WHEN MCQ530 = '1' THEN 'Right upper abdomen' -- categorize string values 
WHEN MCQ530 = '2' THEN 'Mid upper abdomen' -- categorize string values 
WHEN MCQ530 = '3' THEN 'Left upper abdomen' -- categorize string values 
WHEN MCQ530 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ530 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ530 IS NULL THEN NULL 
ELSE MCQ530 
 END as where_was_the_most_uncomfortable_pain, 

CASE
            WHEN MCQ540 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ540 = '2' THEN 'No' -- categorize string values 
WHEN MCQ540 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ540 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ540 IS NULL THEN NULL 
ELSE MCQ540 
 END as ever_seen_a_dr_about_this_pain, 

CASE
            WHEN MCQ550 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ550 = '2' THEN 'No' -- categorize string values 
WHEN MCQ550 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ550 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ550 IS NULL THEN NULL 
ELSE MCQ550 
 END as has_dr_ever_said_you_have_gallstones, 

CASE
            WHEN MCQ560 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ560 = '2' THEN 'No' -- categorize string values 
WHEN MCQ560 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ560 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ560 IS NULL THEN NULL 
ELSE MCQ560 
 END as ever_had_gallbladder_surgery, 

CASE
            WHEN SAFE_CAST(MCQ570 AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCQ570 IS NULL THEN NULL 
ELSE MCQ570 
 END as age_when_1st_had_gallbladder_surgery, 

CASE
            WHEN MCQ203 = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ203 = '2' THEN 'No' -- categorize string values 
WHEN MCQ203 = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ203 = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ203 IS NULL THEN NULL 
ELSE MCQ203 
 END as ever_been_told_you_have_jaundice, 

CASE
            WHEN SAFE_CAST(MCQ206 AS FLOAT64) > 76.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCQ206 IS NULL THEN NULL 
ELSE MCQ206 
 END as age_when_told_you_have_jaundice, 

CASE
            WHEN MCQ220 = 1 THEN 'Yes' -- categorize numeric values
WHEN MCQ220 = 2 THEN 'No' -- categorize numeric values
WHEN MCQ220 = 7 THEN 'Refused' -- categorize numeric values
WHEN MCQ220 = 9 THEN 'Dont know' -- categorize numeric values
WHEN MCQ220 IS NULL THEN NULL 
ELSE MCQ220 
 END as ever_told_you_had_cancer_or_malignancy, 

CASE
            WHEN MCQ230A = 10 THEN 'Bladder' -- categorize numeric values
WHEN MCQ230A = 11 THEN 'Blood' -- categorize numeric values
WHEN MCQ230A = 12 THEN 'Bone' -- categorize numeric values
WHEN MCQ230A = 13 THEN 'Brain' -- categorize numeric values
WHEN MCQ230A = 14 THEN 'Breast' -- categorize numeric values
WHEN MCQ230A = 15 THEN 'Cervix (cervical)' -- categorize numeric values
WHEN MCQ230A = 16 THEN 'Colon' -- categorize numeric values
WHEN MCQ230A = 17 THEN 'Esophagus (esophageal)' -- categorize numeric values
WHEN MCQ230A = 18 THEN 'Gallbladder' -- categorize numeric values
WHEN MCQ230A = 19 THEN 'Kidney' -- categorize numeric values
WHEN MCQ230A = 20 THEN 'Larynx/ windpipe' -- categorize numeric values
WHEN MCQ230A = 21 THEN 'Leukemia' -- categorize numeric values
WHEN MCQ230A = 22 THEN 'Liver' -- categorize numeric values
WHEN MCQ230A = 23 THEN 'Lung' -- categorize numeric values
WHEN MCQ230A = 24 THEN 'Lymphoma/ Hodgkins disease' -- categorize numeric values
WHEN MCQ230A = 25 THEN 'Melanoma' -- categorize numeric values
WHEN MCQ230A = 26 THEN 'Mouth/tongue/lip' -- categorize numeric values
WHEN MCQ230A = 27 THEN 'Nervous system' -- categorize numeric values
WHEN MCQ230A = 28 THEN 'Ovary (ovarian)' -- categorize numeric values
WHEN MCQ230A = 29 THEN 'Pancreas (pancreatic)' -- categorize numeric values
WHEN MCQ230A = 30 THEN 'Prostate' -- categorize numeric values
WHEN MCQ230A = 31 THEN 'Rectum (rectal)' -- categorize numeric values
WHEN MCQ230A = 32 THEN 'Skin (non-melanoma)' -- categorize numeric values
WHEN MCQ230A = 33 THEN 'Skin (dont know what kind)' -- categorize numeric values
WHEN MCQ230A = 34 THEN 'Soft tissue (muscle or fat)' -- categorize numeric values
WHEN MCQ230A = 35 THEN 'Stomach' -- categorize numeric values
WHEN MCQ230A = 36 THEN 'Testis (testicular)' -- categorize numeric values
WHEN MCQ230A = 37 THEN 'Thyroid' -- categorize numeric values
WHEN MCQ230A = 38 THEN 'Uterus (uterine)' -- categorize numeric values
WHEN MCQ230A = 39 THEN 'Other' -- categorize numeric values
WHEN MCQ230A = 66 THEN 'More than 3 kinds' -- categorize numeric values
WHEN MCQ230A = 77 THEN 'Refused' -- categorize numeric values
WHEN MCQ230A = 99 THEN 'Dont know' -- categorize numeric values
WHEN MCQ230A IS NULL THEN NULL 
ELSE MCQ230A 
 END as que_1st_cancer_what_kind_was_it, 

CASE
            WHEN SAFE_CAST(MCD240A AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD240A IS NULL THEN NULL 
ELSE MCD240A 
 END as age_1st_cancer_mcq230a_diagnosed, 

CASE
            WHEN MCQ230B = 10 THEN 'Bladder' -- categorize numeric values
WHEN MCQ230B = 11 THEN 'Blood' -- categorize numeric values
WHEN MCQ230B = 12 THEN 'Bone' -- categorize numeric values
WHEN MCQ230B = 13 THEN 'Brain' -- categorize numeric values
WHEN MCQ230B = 14 THEN 'Breast' -- categorize numeric values
WHEN MCQ230B = 15 THEN 'Cervix (cervical)' -- categorize numeric values
WHEN MCQ230B = 16 THEN 'Colon' -- categorize numeric values
WHEN MCQ230B = 17 THEN 'Esophagus (esophageal)' -- categorize numeric values
WHEN MCQ230B = 18 THEN 'Gallbladder' -- categorize numeric values
WHEN MCQ230B = 19 THEN 'Kidney' -- categorize numeric values
WHEN MCQ230B = 20 THEN 'Larynx/ windpipe' -- categorize numeric values
WHEN MCQ230B = 21 THEN 'Leukemia' -- categorize numeric values
WHEN MCQ230B = 22 THEN 'Liver' -- categorize numeric values
WHEN MCQ230B = 23 THEN 'Lung' -- categorize numeric values
WHEN MCQ230B = 24 THEN 'Lymphoma/ Hodgkins disease' -- categorize numeric values
WHEN MCQ230B = 25 THEN 'Melanoma' -- categorize numeric values
WHEN MCQ230B = 26 THEN 'Mouth/tongue/lip' -- categorize numeric values
WHEN MCQ230B = 27 THEN 'Nervous system' -- categorize numeric values
WHEN MCQ230B = 28 THEN 'Ovary (ovarian)' -- categorize numeric values
WHEN MCQ230B = 29 THEN 'Pancreas (pancreatic)' -- categorize numeric values
WHEN MCQ230B = 30 THEN 'Prostate' -- categorize numeric values
WHEN MCQ230B = 31 THEN 'Rectum (rectal)' -- categorize numeric values
WHEN MCQ230B = 32 THEN 'Skin (non-melanoma)' -- categorize numeric values
WHEN MCQ230B = 33 THEN 'Skin (dont know what kind)' -- categorize numeric values
WHEN MCQ230B = 34 THEN 'Soft tissue (muscle or fat)' -- categorize numeric values
WHEN MCQ230B = 35 THEN 'Stomach' -- categorize numeric values
WHEN MCQ230B = 36 THEN 'Testis (testicular)' -- categorize numeric values
WHEN MCQ230B = 37 THEN 'Thyroid' -- categorize numeric values
WHEN MCQ230B = 38 THEN 'Uterus (uterine)' -- categorize numeric values
WHEN MCQ230B = 39 THEN 'Other' -- categorize numeric values
WHEN MCQ230B = 66 THEN 'More than 3 kinds' -- categorize numeric values
WHEN MCQ230B = 77 THEN 'Refused' -- categorize numeric values
WHEN MCQ230B = 99 THEN 'Dont know' -- categorize numeric values
WHEN MCQ230B IS NULL THEN NULL 
ELSE MCQ230B 
 END as que_2nd_cancer_what_kind_was_it, 

CASE
            WHEN SAFE_CAST(MCD240B AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD240B IS NULL THEN NULL 
ELSE MCD240B 
 END as age_2nd_cancer_mcq230b_diagnosed, 

CASE
            WHEN MCQ230C = 10 THEN 'Bladder' -- categorize numeric values
WHEN MCQ230C = 11 THEN 'Blood' -- categorize numeric values
WHEN MCQ230C = 12 THEN 'Bone' -- categorize numeric values
WHEN MCQ230C = 13 THEN 'Brain' -- categorize numeric values
WHEN MCQ230C = 14 THEN 'Breast' -- categorize numeric values
WHEN MCQ230C = 15 THEN 'Cervix (cervical)' -- categorize numeric values
WHEN MCQ230C = 16 THEN 'Colon' -- categorize numeric values
WHEN MCQ230C = 17 THEN 'Esophagus (esophageal)' -- categorize numeric values
WHEN MCQ230C = 18 THEN 'Gallbladder' -- categorize numeric values
WHEN MCQ230C = 19 THEN 'Kidney' -- categorize numeric values
WHEN MCQ230C = 20 THEN 'Larynx/ windpipe' -- categorize numeric values
WHEN MCQ230C = 21 THEN 'Leukemia' -- categorize numeric values
WHEN MCQ230C = 22 THEN 'Liver' -- categorize numeric values
WHEN MCQ230C = 23 THEN 'Lung' -- categorize numeric values
WHEN MCQ230C = 24 THEN 'Lymphoma/ Hodgkins disease' -- categorize numeric values
WHEN MCQ230C = 25 THEN 'Melanoma' -- categorize numeric values
WHEN MCQ230C = 26 THEN 'Mouth/tongue/lip' -- categorize numeric values
WHEN MCQ230C = 27 THEN 'Nervous system' -- categorize numeric values
WHEN MCQ230C = 28 THEN 'Ovary (ovarian)' -- categorize numeric values
WHEN MCQ230C = 29 THEN 'Pancreas (pancreatic)' -- categorize numeric values
WHEN MCQ230C = 30 THEN 'Prostate' -- categorize numeric values
WHEN MCQ230C = 31 THEN 'Rectum (rectal)' -- categorize numeric values
WHEN MCQ230C = 32 THEN 'Skin (non-melanoma)' -- categorize numeric values
WHEN MCQ230C = 33 THEN 'Skin (dont know what kind)' -- categorize numeric values
WHEN MCQ230C = 34 THEN 'Soft tissue (muscle or fat)' -- categorize numeric values
WHEN MCQ230C = 35 THEN 'Stomach' -- categorize numeric values
WHEN MCQ230C = 36 THEN 'Testis (testicular)' -- categorize numeric values
WHEN MCQ230C = 37 THEN 'Thyroid' -- categorize numeric values
WHEN MCQ230C = 38 THEN 'Uterus (uterine)' -- categorize numeric values
WHEN MCQ230C = 39 THEN 'Other' -- categorize numeric values
WHEN MCQ230C = 66 THEN 'More than 3 kinds' -- categorize numeric values
WHEN MCQ230C = 77 THEN 'Refused' -- categorize numeric values
WHEN MCQ230C = 99 THEN 'Dont know' -- categorize numeric values
WHEN MCQ230C IS NULL THEN NULL 
ELSE MCQ230C 
 END as que_3rd_cancer_what_kind_was_it, 

CASE
            WHEN SAFE_CAST(MCD240C AS FLOAT64) > 76.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN MCD240C IS NULL THEN NULL 
ELSE MCD240C 
 END as age_3rd_cancer_mcq230c_diagnosed, 

CASE
            WHEN MCQ230D = 66 THEN 'More than 3 kinds' -- categorize numeric values
WHEN MCQ230D = 77 THEN 'Refused' -- categorize numeric values
WHEN MCQ230D = 99 THEN 'Dont know' -- categorize numeric values
WHEN MCQ230D IS NULL THEN NULL 
ELSE MCQ230D 
 END as more_than_3_kinds_of_cancer, 

CASE
            WHEN MCQ300B = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ300B = '2' THEN 'No' -- categorize string values 
WHEN MCQ300B = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ300B = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ300B IS NULL THEN NULL 
ELSE MCQ300B 
 END as close_relative_had_asthma, 

CASE
            WHEN MCQ300C = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ300C = '2' THEN 'No' -- categorize string values 
WHEN MCQ300C = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ300C = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ300C IS NULL THEN NULL 
ELSE MCQ300C 
 END as close_relative_had_diabetes, 

CASE
            WHEN MCQ300A = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ300A = '2' THEN 'No' -- categorize string values 
WHEN MCQ300A = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ300A = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ300A IS NULL THEN NULL 
ELSE MCQ300A 
 END as close_relative_had_heart_attack, 

CASE
            WHEN MCQ366A = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ366A = '2' THEN 'No' -- categorize string values 
WHEN MCQ366A = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ366A = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ366A IS NULL THEN NULL 
ELSE MCQ366A 
 END as doctor_told_you_to_control_lose_weight, 

CASE
            WHEN MCQ366B = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ366B = '2' THEN 'No' -- categorize string values 
WHEN MCQ366B = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ366B = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ366B IS NULL THEN NULL 
ELSE MCQ366B 
 END as doctor_told_you_to_exercise, 

CASE
            WHEN MCQ366C = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ366C = '2' THEN 'No' -- categorize string values 
WHEN MCQ366C = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ366C = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ366C IS NULL THEN NULL 
ELSE MCQ366C 
 END as doctor_told_you_to_reduce_salt_in_diet, 

CASE
            WHEN MCQ366D = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ366D = '2' THEN 'No' -- categorize string values 
WHEN MCQ366D = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ366D = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ366D IS NULL THEN NULL 
ELSE MCQ366D 
 END as doctor_told_you_to_reduce_fat_calories, 

CASE
            WHEN MCQ371A = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ371A = '2' THEN 'No' -- categorize string values 
WHEN MCQ371A = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ371A = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ371A IS NULL THEN NULL 
ELSE MCQ371A 
 END as are_you_now_controlling_or_losing_weight, 

CASE
            WHEN MCQ371B = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ371B = '2' THEN 'No' -- categorize string values 
WHEN MCQ371B = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ371B = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ371B IS NULL THEN NULL 
ELSE MCQ371B 
 END as are_you_now_increasing_exercise, 

CASE
            WHEN MCQ371C = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ371C = '2' THEN 'No' -- categorize string values 
WHEN MCQ371C = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ371C = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ371C IS NULL THEN NULL 
ELSE MCQ371C 
 END as are_you_now_reducing_salt_in_diet, 

CASE
            WHEN MCQ371D = '1' THEN 'Yes' -- categorize string values 
WHEN MCQ371D = '2' THEN 'No' -- categorize string values 
WHEN MCQ371D = '7' THEN 'Refused' -- categorize string values 
WHEN MCQ371D = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ371D IS NULL THEN NULL 
ELSE MCQ371D 
 END as are_you_now_reducing_fat_in_diet, 

CASE
            WHEN OSQ230 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ230 = '2' THEN 'No' -- categorize string values 
WHEN OSQ230 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ230 = '9' THEN 'Dont Know' -- categorize string values 
WHEN OSQ230 IS NULL THEN NULL 
ELSE OSQ230 
 END as any_metal_objects_inside_your_body, 

 FROM {{ ref('stg_medical_conditions_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/MCQ_J.htm
        