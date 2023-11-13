SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN OHQ030 = 1 THEN '6 months or less' -- categorize numeric values
WHEN OHQ030 = 2 THEN 'More than 6 months, but not more than 1 year ago' -- categorize numeric values
WHEN OHQ030 = 3 THEN 'More than 1 year, but not more than 2 years ago' -- categorize numeric values
WHEN OHQ030 = 4 THEN 'More than 2 years, but not more than 3 years ago' -- categorize numeric values
WHEN OHQ030 = 5 THEN 'More than 3 years, but not more than 5 years ago' -- categorize numeric values
WHEN OHQ030 = 6 THEN 'More than 5 years ago' -- categorize numeric values
WHEN OHQ030 = 7 THEN 'Never have been' -- categorize numeric values
WHEN OHQ030 = 77 THEN 'Refused' -- categorize numeric values
WHEN OHQ030 = 99 THEN 'Dont know' -- categorize numeric values
WHEN OHQ030 IS NULL THEN NULL 
ELSE OHQ030 
 END as when_did_you_last_visit_a_dentist, 

CASE
            WHEN OHQ033 = 1 THEN 'Went in on own for check-up, examination, or cleaning' -- categorize numeric values
WHEN OHQ033 = 2 THEN 'Was called in by the dentist for check-up, examination, or cleaning' -- categorize numeric values
WHEN OHQ033 = 3 THEN 'Something was wrong, bothering or hurting {me/SP}' -- categorize numeric values
WHEN OHQ033 = 4 THEN 'Went for treatment of a condition that dentist discovered at earlier checkup or examination' -- categorize numeric values
WHEN OHQ033 = 5 THEN 'Other' -- categorize numeric values
WHEN OHQ033 = 7 THEN 'Refused' -- categorize numeric values
WHEN OHQ033 = 9 THEN 'Dont know' -- categorize numeric values
WHEN OHQ033 IS NULL THEN NULL 
ELSE OHQ033 
 END as main_reason_for_last_dental_visit, 

CASE
            WHEN OHQ770 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ770 = '2' THEN 'No' -- categorize string values 
WHEN OHQ770 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ770 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ770 IS NULL THEN NULL 
ELSE OHQ770 
 END as past_yr_need_dental_but_couldn_t_get_it, 

CASE
            WHEN OHQ780A = '10' THEN 'Could not afford the cost' -- categorize string values 
WHEN OHQ780A = '77' THEN 'Refused' -- categorize string values 
WHEN OHQ780A = '99' THEN 'Dont know' -- categorize string values 
WHEN OHQ780A IS NULL THEN NULL 
ELSE OHQ780A 
 END as could_not_afford_the_cost, 

CASE
            WHEN OHQ780B = '11' THEN 'Did not want to spend the money' -- categorize string values 
WHEN OHQ780B IS NULL THEN NULL 
ELSE OHQ780B 
 END as did_not_want_to_spend_the_money, 

CASE
            WHEN OHQ780C = '12' THEN 'Insurance did not cover recommended procedure' -- categorize string values 
WHEN OHQ780C IS NULL THEN NULL 
ELSE OHQ780C 
 END as insurance_did_not_cover_procedures, 

CASE
            WHEN OHQ780D = '13' THEN 'Dental office is too far away' -- categorize string values 
WHEN OHQ780D IS NULL THEN NULL 
ELSE OHQ780D 
 END as dental_office_is_too_far_away, 

CASE
            WHEN OHQ780E = '14' THEN 'Dental office not open at convenient time' -- categorize string values 
WHEN OHQ780E IS NULL THEN NULL 
ELSE OHQ780E 
 END as office_not_open_at_convenient_time, 

CASE
            WHEN OHQ780F = '15' THEN 'Another dentist recommended not doing it' -- categorize string values 
WHEN OHQ780F IS NULL THEN NULL 
ELSE OHQ780F 
 END as another_dentist_recommended_not_doing_it, 

CASE
            WHEN OHQ780G = '16' THEN 'Afraid or do not like dentists' -- categorize string values 
WHEN OHQ780G IS NULL THEN NULL 
ELSE OHQ780G 
 END as afraid_or_do_not_like_dentists, 

CASE
            WHEN OHQ780H = '17' THEN 'Unable to take time off from work' -- categorize string values 
WHEN OHQ780H IS NULL THEN NULL 
ELSE OHQ780H 
 END as unable_to_take_time_off_from_work, 

CASE
            WHEN OHQ780I = '18' THEN 'Too busy' -- categorize string values 
WHEN OHQ780I IS NULL THEN NULL 
ELSE OHQ780I 
 END as too_busy, 

CASE
            WHEN OHQ780J = '19' THEN 'I did not think anything serious was wrong - expected dental problems to go away' -- categorize string values 
WHEN OHQ780J IS NULL THEN NULL 
ELSE OHQ780J 
 END as expected_dental_problems_to_go_away, 

CASE
            WHEN OHQ780K = '20' THEN 'Other' -- categorize string values 
WHEN OHQ780K IS NULL THEN NULL 
ELSE OHQ780K 
 END as other_reason_could_not_get_dental_care, 

OHQ550 as OHQ550, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OHQ555G = '1' THEN 'Enter age' -- categorize string values 
WHEN OHQ555G = '2' THEN 'Has not started brushing teeth' -- categorize string values 
WHEN OHQ555G = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ555G = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ555G IS NULL THEN NULL 
ELSE OHQ555G 
 END as age_started_brushing_teeth, 

CASE
            WHEN SAFE_CAST(OHQ555Q AS FLOAT64) > 54.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OHQ555Q IS NULL THEN NULL 
ELSE OHQ555Q 
 END as age_started_brushing_teeth_OHQ555Q, 

CASE
            WHEN OHQ555U = '1' THEN 'Months' -- categorize string values 
WHEN OHQ555U = '2' THEN 'Years' -- categorize string values 
WHEN OHQ555U IS NULL THEN NULL 
ELSE OHQ555U 
 END as age_started_brushing_teeth_OHQ555U, 

CASE
            WHEN OHQ560G = '1' THEN 'Enter age' -- categorize string values 
WHEN OHQ560G = '2' THEN 'Has not started brushing teeth' -- categorize string values 
WHEN OHQ560G = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ560G = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ560G IS NULL THEN NULL 
ELSE OHQ560G 
 END as age_started_using_toothpaste, 

CASE
            WHEN SAFE_CAST(OHQ560Q AS FLOAT64) > 66.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OHQ560Q IS NULL THEN NULL 
ELSE OHQ560Q 
 END as age_started_using_toothpaste_OHQ560Q, 

CASE
            WHEN OHQ560U = '1' THEN 'Months' -- categorize string values 
WHEN OHQ560U = '2' THEN 'Years' -- categorize string values 
WHEN OHQ560U IS NULL THEN NULL 
ELSE OHQ560U 
 END as age_started_using_toothpaste_OHQ560U, 

CASE
            WHEN OHQ566 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ566 = '2' THEN 'No' -- categorize string values 
WHEN OHQ566 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ566 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ566 IS NULL THEN NULL 
ELSE OHQ566 
 END as received_rx_fluoride_drops_or_tablets, 

CASE
            WHEN SAFE_CAST(OHQ571Q AS FLOAT64) > 36.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OHQ571Q IS NULL THEN NULL 
ELSE OHQ571Q 
 END as age_started_taking_prescription_fluoride, 

CASE
            WHEN OHQ571U = '1' THEN 'Month' -- categorize string values 
WHEN OHQ571U = '2' THEN 'Years' -- categorize string values 
WHEN OHQ571U IS NULL THEN NULL 
ELSE OHQ571U 
 END as age_started_taking_prescription_fluoride_OHQ571U, 

CASE
            WHEN OHQ576G = '1' THEN 'Age' -- categorize string values 
WHEN OHQ576G = '2' THEN 'Still taking fluoride drops or tablets' -- categorize string values 
WHEN OHQ576G = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ576G = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ576G IS NULL THEN NULL 
ELSE OHQ576G 
 END as age_stopped_taking_prescription_fluoride, 

CASE
            WHEN SAFE_CAST(OHQ576Q AS FLOAT64) > 78.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OHQ576Q IS NULL THEN NULL 
ELSE OHQ576Q 
 END as age_stopped_taking_prescription_fluoride_OHQ576Q, 

CASE
            WHEN OHQ576U = '1' THEN 'Months' -- categorize string values 
WHEN OHQ576U = '2' THEN 'Years' -- categorize string values 
WHEN OHQ576U IS NULL THEN NULL 
ELSE OHQ576U 
 END as age_stopped_taking_prescription_fluoride_OHQ576U, 

OHQ592 as OHQ592, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OHQ610 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ610 = '2' THEN 'No' -- categorize string values 
WHEN OHQ610 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ610 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ610 IS NULL THEN NULL 
ELSE OHQ610 
 END as told_benefits_of_giving_up_cigarettes, 

CASE
            WHEN OHQ612 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ612 = '2' THEN 'No' -- categorize string values 
WHEN OHQ612 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ612 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ612 IS NULL THEN NULL 
ELSE OHQ612 
 END as told_benefits_of_checking_blood_sugar, 

CASE
            WHEN OHQ614 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ614 = '2' THEN 'No' -- categorize string values 
WHEN OHQ614 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ614 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ614 IS NULL THEN NULL 
ELSE OHQ614 
 END as told_importance_of_checking_for_cancer, 

OHQ616 as OHQ616, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OHQ620 = '1' THEN 'Very often' -- categorize string values 
WHEN OHQ620 = '2' THEN 'Fairly often' -- categorize string values 
WHEN OHQ620 = '3' THEN 'Occasionally' -- categorize string values 
WHEN OHQ620 = '4' THEN 'Hardly ever, or' -- categorize string values 
WHEN OHQ620 = '5' THEN 'Never?' -- categorize string values 
WHEN OHQ620 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ620 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ620 IS NULL THEN NULL 
ELSE OHQ620 
 END as how_often_last_yr_had_aching_in_mouth, 

CASE
            WHEN OHQ640 = '1' THEN 'Very often' -- categorize string values 
WHEN OHQ640 = '2' THEN 'Fairly often' -- categorize string values 
WHEN OHQ640 = '3' THEN 'Occasionally' -- categorize string values 
WHEN OHQ640 = '4' THEN 'Hardly ever, or' -- categorize string values 
WHEN OHQ640 = '5' THEN 'Never?' -- categorize string values 
WHEN OHQ640 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ640 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ640 IS NULL THEN NULL 
ELSE OHQ640 
 END as last_yr_had_diff_w_job_because_of_mouth, 

CASE
            WHEN OHQ680 = '1' THEN 'Very often' -- categorize string values 
WHEN OHQ680 = '2' THEN 'Fairly often' -- categorize string values 
WHEN OHQ680 = '3' THEN 'Occasionally' -- categorize string values 
WHEN OHQ680 = '4' THEN 'Hardly ever, or' -- categorize string values 
WHEN OHQ680 = '5' THEN 'Never?' -- categorize string values 
WHEN OHQ680 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ680 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ680 IS NULL THEN NULL 
ELSE OHQ680 
 END as last_yr_embarrassed_because_of_mouth, 

CASE
            WHEN OHQ835 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ835 = '2' THEN 'No' -- categorize string values 
WHEN OHQ835 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ835 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ835 IS NULL THEN NULL 
ELSE OHQ835 
 END as do_you_think_you_might_have_gum_disease, 

CASE
            WHEN OHQ845 = '1' THEN 'Excellent' -- categorize string values 
WHEN OHQ845 = '2' THEN 'Very good' -- categorize string values 
WHEN OHQ845 = '3' THEN 'Good' -- categorize string values 
WHEN OHQ845 = '4' THEN 'Fair' -- categorize string values 
WHEN OHQ845 = '5' THEN 'Poor' -- categorize string values 
WHEN OHQ845 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ845 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ845 IS NULL THEN NULL 
ELSE OHQ845 
 END as rate_the_health_of_your_teeth_and_gums, 

OHQ846 as OHQ846, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OHQ848G = '1' THEN 'Enter number' -- categorize string values 
WHEN OHQ848G = '2' THEN 'Child does not brush yet' -- categorize string values 
WHEN OHQ848G = '3' THEN 'Does not brush every day' -- categorize string values 
WHEN OHQ848G = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ848G = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ848G IS NULL THEN NULL 
ELSE OHQ848G 
 END as times_you_brush_your_teeth_in_1_day, 

CASE
            WHEN OHQ848Q = '1' THEN '1 time' -- categorize string values 
WHEN OHQ848Q = '2' THEN '2 times' -- categorize string values 
WHEN OHQ848Q = '3' THEN '3 times' -- categorize string values 
WHEN OHQ848Q = '4' THEN '4 times' -- categorize string values 
WHEN OHQ848Q = '5' THEN '5 times' -- categorize string values 
WHEN OHQ848Q = '6' THEN '6 times' -- categorize string values 
WHEN OHQ848Q = '7' THEN '7 times' -- categorize string values 
WHEN OHQ848Q = '8' THEN '8 times' -- categorize string values 
WHEN OHQ848Q = '9' THEN '9 or more times' -- categorize string values 
WHEN OHQ848Q = '77' THEN 'Refused' -- categorize string values 
WHEN OHQ848Q = '99' THEN 'Dont know' -- categorize string values 
WHEN OHQ848Q IS NULL THEN NULL 
ELSE OHQ848Q 
 END as times_you_brush_your_teeth_in_1_day_OHQ848Q, 

CASE
            WHEN OHQ849 = '1' THEN 'Full load' -- categorize string values 
WHEN OHQ849 = '2' THEN 'Half load' -- categorize string values 
WHEN OHQ849 = '3' THEN 'Pea size' -- categorize string values 
WHEN OHQ849 = '4' THEN 'Smear' -- categorize string values 
WHEN OHQ849 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ849 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ849 IS NULL THEN NULL 
ELSE OHQ849 
 END as how_much_toothpaste_do_you_use, 

CASE
            WHEN OHQ850 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ850 = '2' THEN 'No' -- categorize string values 
WHEN OHQ850 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ850 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ850 IS NULL THEN NULL 
ELSE OHQ850 
 END as ever_had_treatment_for_gum_disease, 

CASE
            WHEN OHQ860 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ860 = '2' THEN 'No' -- categorize string values 
WHEN OHQ860 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ860 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ860 IS NULL THEN NULL 
ELSE OHQ860 
 END as ever_been_told_of_bone_loss_around_teeth, 

CASE
            WHEN SAFE_CAST(OHQ870 AS FLOAT64) > 9.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OHQ870 IS NULL THEN NULL 
ELSE OHQ870 
 END as how_many_days_use_dental_floss_device, 

CASE
            WHEN OHQ880 = '1' THEN 'Yes' -- categorize string values 
WHEN OHQ880 = '2' THEN 'No' -- categorize string values 
WHEN OHQ880 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ880 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ880 IS NULL THEN NULL 
ELSE OHQ880 
 END as oral_cancer_exam_where_dr_pulls_tonge, 

CASE
            WHEN OHQ895 = '1' THEN 'Within past year' -- categorize string values 
WHEN OHQ895 = '2' THEN 'Between 1 and 3 years ago' -- categorize string values 
WHEN OHQ895 = '3' THEN 'Over 3 years ago' -- categorize string values 
WHEN OHQ895 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ895 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ895 IS NULL THEN NULL 
ELSE OHQ895 
 END as when_did_you_have_oral_mouth_cancer_exam, 

CASE
            WHEN OHQ900 = '1' THEN 'Doctor/physician' -- categorize string values 
WHEN OHQ900 = '2' THEN 'Nurse/nurse practitioner' -- categorize string values 
WHEN OHQ900 = '3' THEN 'Dentist (include oral surgeons)' -- categorize string values 
WHEN OHQ900 = '4' THEN 'Dental Hygienist' -- categorize string values 
WHEN OHQ900 = '5' THEN 'Other' -- categorize string values 
WHEN OHQ900 = '7' THEN 'Refused' -- categorize string values 
WHEN OHQ900 = '9' THEN 'Dont know' -- categorize string values 
WHEN OHQ900 IS NULL THEN NULL 
ELSE OHQ900 
 END as what_type_of_prof_performed_oral_exam, 

 FROM {{ ref('stg_oral_health_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/OHQ_J.htm
        