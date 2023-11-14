SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN AUQ054 = '1' THEN 'Excellent' -- categorize string values 
WHEN AUQ054 = '2' THEN 'Good' -- categorize string values 
WHEN AUQ054 = '3' THEN 'A little trouble' -- categorize string values 
WHEN AUQ054 = '4' THEN 'Moderate hearing trouble' -- categorize string values 
WHEN AUQ054 = '5' THEN 'A lot of trouble' -- categorize string values 
WHEN AUQ054 = '6' THEN 'Deaf' -- categorize string values 
WHEN AUQ054 = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ054 = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ054 IS NULL THEN NULL 
ELSE AUQ054 
 END as general_condition_of_hearing, 

-- AUQ055 as AUQ055, -- not included in table but included in docs without transformation logic 

CASE
            WHEN AUQ060 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ060 = '2' THEN 'No' -- categorize string values 
WHEN AUQ060 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ060 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ060 IS NULL THEN NULL 
ELSE AUQ060 
 END as hear_a_whisper_from_across_a_quiet_room, 

CASE
            WHEN AUQ070 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ070 = '2' THEN 'No' -- categorize string values 
WHEN AUQ070 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ070 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ070 IS NULL THEN NULL 
ELSE AUQ070 
 END as hear_normal_voice_across_a_quiet_room, 

CASE
            WHEN AUQ080 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ080 = '2' THEN 'No' -- categorize string values 
WHEN AUQ080 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ080 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ080 IS NULL THEN NULL 
ELSE AUQ080 
 END as hear_a_shout_from_across_a_quiet_room, 

CASE
            WHEN AUQ090 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ090 = '2' THEN 'No' -- categorize string values 
WHEN AUQ090 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ090 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ090 IS NULL THEN NULL 
ELSE AUQ090 
 END as hear_if_spoken_loudly_to_in_better_ear, 

-- AUQ395 as AUQ395, -- not included in table but included in docs without transformation logic 

CASE
            WHEN AUQ400 = '1' THEN 'Before age 1 year old' -- categorize string values 
WHEN AUQ400 = '2' THEN 'Between 2 and 5 years old' -- categorize string values 
WHEN AUQ400 = '3' THEN 'Between 6 and 19 years old' -- categorize string values 
WHEN AUQ400 = '4' THEN 'Between 20 and 39 years old' -- categorize string values 
WHEN AUQ400 = '5' THEN 'Between 40 and 59 years old' -- categorize string values 
WHEN AUQ400 = '6' THEN 'Between 60 and 69 years old' -- categorize string values 
WHEN AUQ400 = '7' THEN '70 years and older' -- categorize string values 
WHEN AUQ400 = '8' THEN 'No hearing loss' -- categorize string values 
WHEN AUQ400 = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ400 = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ400 IS NULL THEN NULL 
ELSE AUQ400 
 END as when_began_to_have_hearing_loss, 

CASE
            WHEN AUQ410A = '1' THEN 'Genetic/Hereditary causes' -- categorize string values 
WHEN AUQ410A = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ410A = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ410A IS NULL THEN NULL 
ELSE AUQ410A 
 END as cause_of_hearing_loss_genetic_hereditary, 

CASE
            WHEN AUQ410B = '2' THEN 'Ear infections (including fluid in ears)' -- categorize string values 
WHEN AUQ410B IS NULL THEN NULL 
ELSE AUQ410B 
 END as cause_of_hearing_loss_ear_infections, 

CASE
            WHEN AUQ410C = '3' THEN 'Ear diseases (Otosclerosis, Menieres, Tumor)' -- categorize string values 
WHEN AUQ410C IS NULL THEN NULL 
ELSE AUQ410C 
 END as cause_of_hearing_loss_ear_diseases, 

CASE
            WHEN AUQ410D = '4' THEN 'Illness/Infections (Measles, Meningitis, Mumps)' -- categorize string values 
WHEN AUQ410D IS NULL THEN NULL 
ELSE AUQ410D 
 END as cause_of_hearing_loss_illness_infections, 

CASE
            WHEN AUQ410E = '5' THEN 'Drugs/Medications' -- categorize string values 
WHEN AUQ410E IS NULL THEN NULL 
ELSE AUQ410E 
 END as cause_of_hearing_loss_drugs_medications, 

CASE
            WHEN AUQ410F = '6' THEN 'Head or neck injury/trauma' -- categorize string values 
WHEN AUQ410F IS NULL THEN NULL 
ELSE AUQ410F 
 END as cause_of_hearing_loss_head_neck_injury, 

CASE
            WHEN AUQ410G = '7' THEN 'Loud brief explosive noise/sounds' -- categorize string values 
WHEN AUQ410G IS NULL THEN NULL 
ELSE AUQ410G 
 END as cause_of_hearing_loss_loud_brief_noise, 

CASE
            WHEN AUQ410H = '8' THEN 'Noise exposure, long-term (machinery, etc.)' -- categorize string values 
WHEN AUQ410H IS NULL THEN NULL 
ELSE AUQ410H 
 END as cause_of_hearing_loss_long_term_noise, 

CASE
            WHEN AUQ410I = '9' THEN 'Aging, getting older' -- categorize string values 
WHEN AUQ410I IS NULL THEN NULL 
ELSE AUQ410I 
 END as cause_of_hearing_loss_aging, 

CASE
            WHEN AUQ410J = '10' THEN 'Other causes' -- categorize string values 
WHEN AUQ410J IS NULL THEN NULL 
ELSE AUQ410J 
 END as cause_of_hearing_loss_others, 

CASE
            WHEN AUQ156 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ156 = '2' THEN 'No' -- categorize string values 
WHEN AUQ156 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ156 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ156 IS NULL THEN NULL 
ELSE AUQ156 
 END as ever_used_assistive_listening_devices, 

CASE
            WHEN AUQ420 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ420 = '2' THEN 'No' -- categorize string values 
WHEN AUQ420 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ420 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ420 IS NULL THEN NULL 
ELSE AUQ420 
 END as ever_had_ear_infections_or_earaches, 

CASE
            WHEN AUQ430 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ430 = '2' THEN 'No' -- categorize string values 
WHEN AUQ430 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ430 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ430 IS NULL THEN NULL 
ELSE AUQ430 
 END as ever_had_3_or_more_ear_infections, 

CASE
            WHEN AUQ139 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ139 = '2' THEN 'No' -- categorize string values 
WHEN AUQ139 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ139 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ139 IS NULL THEN NULL 
ELSE AUQ139 
 END as ever_had_tube_placed_in_ear, 

CASE
            WHEN AUQ144 = '1' THEN 'Less than a year ago' -- categorize string values 
WHEN AUQ144 = '2' THEN '1 year to 4 years ago' -- categorize string values 
WHEN AUQ144 = '3' THEN '5 to 9 years ago' -- categorize string values 
WHEN AUQ144 = '4' THEN 'Ten or more years ago' -- categorize string values 
WHEN AUQ144 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ144 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ144 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ144 IS NULL THEN NULL 
ELSE AUQ144 
 END as last_time_hearing_tested_by_specialist, 

CASE
            WHEN AUQ147 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ147 = '2' THEN 'No' -- categorize string values 
WHEN AUQ147 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ147 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ147 IS NULL THEN NULL 
ELSE AUQ147 
 END as now_use_hearing_aid_amplifier_implant, 

CASE
            WHEN AUQ149A = '1' THEN 'A hearing aid' -- categorize string values 
WHEN AUQ149A = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ149A = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ149A IS NULL THEN NULL 
ELSE AUQ149A 
 END as now_use_a_hearing_aid, 

CASE
            WHEN AUQ149B = '2' THEN 'A personal sound amplifier' -- categorize string values 
WHEN AUQ149B IS NULL THEN NULL 
ELSE AUQ149B 
 END as now_use_a_personal_sound_amplifier, 

CASE
            WHEN AUQ149C = '3' THEN 'A Cochlear implant' -- categorize string values 
WHEN AUQ149C IS NULL THEN NULL 
ELSE AUQ149C 
 END as now_have_a_cochlear_implant, 

CASE
            WHEN AUQ153 = '1' THEN 'Less than 1 hour a day' -- categorize string values 
WHEN AUQ153 = '2' THEN '1 to 3 hours a day' -- categorize string values 
WHEN AUQ153 = '3' THEN '4 to 7 hours a day' -- categorize string values 
WHEN AUQ153 = '4' THEN '8 or more hours per day' -- categorize string values 
WHEN AUQ153 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ153 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ153 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ153 IS NULL THEN NULL 
ELSE AUQ153 
 END as past_2_weeks_how_often_worn_hearing_aid, 

CASE
            WHEN AUQ630 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ630 = '2' THEN 'No' -- categorize string values 
WHEN AUQ630 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ630 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ630 IS NULL THEN NULL 
ELSE AUQ630 
 END as ever_worn_hearing_aid_amplifier_implant, 

-- AUQ435 as AUQ435, -- not included in table but included in docs without transformation logic 

CASE
            WHEN AUQ440 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ440 = '2' THEN 'No' -- categorize string values 
WHEN AUQ440 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ440 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ440 IS NULL THEN NULL 
ELSE AUQ440 
 END as ever_had_special_ed_early_intervention, 

CASE
            WHEN AUQ450A = '1' THEN 'Speech-language' -- categorize string values 
WHEN AUQ450A = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ450A = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ450A IS NULL THEN NULL 
ELSE AUQ450A 
 END as had_service_for_speech_language, 

CASE
            WHEN AUQ450B = '2' THEN 'Reading' -- categorize string values 
WHEN AUQ450B IS NULL THEN NULL 
ELSE AUQ450B 
 END as had_service_for_reading, 

CASE
            WHEN AUQ450C = '3' THEN 'Hearing or listening skills' -- categorize string values 
WHEN AUQ450C IS NULL THEN NULL 
ELSE AUQ450C 
 END as had_service_for_hearing_listening_skills, 

CASE
            WHEN AUQ450D = '4' THEN 'Intellectual disability' -- categorize string values 
WHEN AUQ450D IS NULL THEN NULL 
ELSE AUQ450D 
 END as had_service_for_intellectual_disability, 

CASE
            WHEN AUQ450E = '5' THEN 'Movement or mobility difficulties' -- categorize string values 
WHEN AUQ450E IS NULL THEN NULL 
ELSE AUQ450E 
 END as had_service_for_movement_mobility_issues, 

CASE
            WHEN AUQ450F = '6' THEN 'Other developmental or disability problems' -- categorize string values 
WHEN AUQ450F IS NULL THEN NULL 
ELSE AUQ450F 
 END as had_service_for_other_disabilities, 

CASE
            WHEN AUQ460 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ460 = '2' THEN 'No' -- categorize string values 
WHEN AUQ460 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ460 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ460 IS NULL THEN NULL 
ELSE AUQ460 
 END as exposed_to_very_loud_noise_10_hrs_wk, 

CASE
            WHEN AUQ470 = '1' THEN 'Less than 1 year' -- categorize string values 
WHEN AUQ470 = '2' THEN '1 to 2 years' -- categorize string values 
WHEN AUQ470 = '3' THEN '3 to 4 years' -- categorize string values 
WHEN AUQ470 = '4' THEN '5 or more years' -- categorize string values 
WHEN AUQ470 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ470 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ470 IS NULL THEN NULL 
ELSE AUQ470 
 END as how_long_exposed_to_loud_noise_10_hrs_wk, 

CASE
            WHEN AUQ101 = '1' THEN 'Always' -- categorize string values 
WHEN AUQ101 = '2' THEN 'Usually' -- categorize string values 
WHEN AUQ101 = '3' THEN 'About half the time' -- categorize string values 
WHEN AUQ101 = '4' THEN 'Seldom' -- categorize string values 
WHEN AUQ101 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ101 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ101 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ101 IS NULL THEN NULL 
ELSE AUQ101 
 END as difficult_to_follow_conversation_w_noise, 

CASE
            WHEN AUQ110 = '1' THEN 'Always' -- categorize string values 
WHEN AUQ110 = '2' THEN 'Usually' -- categorize string values 
WHEN AUQ110 = '3' THEN 'About half the time' -- categorize string values 
WHEN AUQ110 = '4' THEN 'Seldom' -- categorize string values 
WHEN AUQ110 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ110 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ110 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ110 IS NULL THEN NULL 
ELSE AUQ110 
 END as hearing_causes_frustration_when_talking, 

CASE
            WHEN AUQ480 = '1' THEN 'Always' -- categorize string values 
WHEN AUQ480 = '2' THEN 'Usually' -- categorize string values 
WHEN AUQ480 = '3' THEN 'About half the time' -- categorize string values 
WHEN AUQ480 = '4' THEN 'Seldom' -- categorize string values 
WHEN AUQ480 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ480 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ480 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ480 IS NULL THEN NULL 
ELSE AUQ480 
 END as avoid_groups_limit_social_life, 

CASE
            WHEN AUQ490 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ490 = '2' THEN 'No' -- categorize string values 
WHEN AUQ490 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ490 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ490 IS NULL THEN NULL 
ELSE AUQ490 
 END as problem_with_dizziness_lightheadedness, 

CASE
            WHEN AUQ191 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ191 = '2' THEN 'No' -- categorize string values 
WHEN AUQ191 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ191 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ191 IS NULL THEN NULL 
ELSE AUQ191 
 END as ears_ringing_buzzing_past_year, 

CASE
            WHEN AUQ250 = '1' THEN 'Less than three months' -- categorize string values 
WHEN AUQ250 = '2' THEN 'Three months to a year' -- categorize string values 
WHEN AUQ250 = '3' THEN '1 to 4 years' -- categorize string values 
WHEN AUQ250 = '4' THEN '5 to 9 years' -- categorize string values 
WHEN AUQ250 = '5' THEN 'Ten or more years' -- categorize string values 
WHEN AUQ250 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ250 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ250 IS NULL THEN NULL 
ELSE AUQ250 
 END as how_long_bothered_by_ringing_buzzing, 

CASE
            WHEN AUQ255 = '1' THEN 'Almost always' -- categorize string values 
WHEN AUQ255 = '2' THEN 'At least once a day' -- categorize string values 
WHEN AUQ255 = '3' THEN 'At least once a week' -- categorize string values 
WHEN AUQ255 = '4' THEN 'At least once a month' -- categorize string values 
WHEN AUQ255 = '5' THEN 'Less frequently than once a month' -- categorize string values 
WHEN AUQ255 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ255 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ255 IS NULL THEN NULL 
ELSE AUQ255 
 END as in_past_yr_how_often_had_ringing_roaring, 

CASE
            WHEN AUQ260 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ260 = '2' THEN 'No' -- categorize string values 
WHEN AUQ260 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ260 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ260 IS NULL THEN NULL 
ELSE AUQ260 
 END as bothered_by_ringing_after_loud_sounds, 

CASE
            WHEN AUQ270 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ270 = '2' THEN 'No' -- categorize string values 
WHEN AUQ270 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ270 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ270 IS NULL THEN NULL 
ELSE AUQ270 
 END as bothered_by_ringing_when_going_to_sleep, 

CASE
            WHEN AUQ280 = '1' THEN 'No problem' -- categorize string values 
WHEN AUQ280 = '2' THEN 'A small problem' -- categorize string values 
WHEN AUQ280 = '3' THEN 'A moderate problem' -- categorize string values 
WHEN AUQ280 = '4' THEN 'A big problem' -- categorize string values 
WHEN AUQ280 = '5' THEN 'A very big problem' -- categorize string values 
WHEN AUQ280 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ280 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ280 IS NULL THEN NULL 
ELSE AUQ280 
 END as how_much_of_a_problem_is_ringing, 

CASE
            WHEN AUQ500 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ500 = '2' THEN 'No' -- categorize string values 
WHEN AUQ500 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ500 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ500 IS NULL THEN NULL 
ELSE AUQ500 
 END as discussed_ringing_with_doctor, 

CASE
            WHEN AUQ300 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ300 = '2' THEN 'No' -- categorize string values 
WHEN AUQ300 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ300 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ300 IS NULL THEN NULL 
ELSE AUQ300 
 END as ever_used_firearms_for_any_reason, 

CASE
            WHEN AUQ310 = '1' THEN '1 to less than 100 rounds' -- categorize string values 
WHEN AUQ310 = '2' THEN '100 to less than 1000 rounds' -- categorize string values 
WHEN AUQ310 = '3' THEN '1000 to less than 10,000 rounds' -- categorize string values 
WHEN AUQ310 = '4' THEN '10,000 to less than 50,000 rounds' -- categorize string values 
WHEN AUQ310 = '5' THEN '50,000 rounds or more' -- categorize string values 
WHEN AUQ310 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ310 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ310 IS NULL THEN NULL 
ELSE AUQ310 
 END as how_many_total_rounds_ever_fired, 

CASE
            WHEN AUQ320 = '1' THEN 'Always' -- categorize string values 
WHEN AUQ320 = '2' THEN 'Usually' -- categorize string values 
WHEN AUQ320 = '3' THEN 'About half the time' -- categorize string values 
WHEN AUQ320 = '4' THEN 'Seldom' -- categorize string values 
WHEN AUQ320 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ320 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ320 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ320 IS NULL THEN NULL 
ELSE AUQ320 
 END as wear_hearing_protection_when_shooting, 

CASE
            WHEN AUQ330 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ330 = '2' THEN 'No' -- categorize string values 
WHEN AUQ330 = '3' THEN 'Never worked' -- categorize string values 
WHEN AUQ330 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ330 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ330 IS NULL THEN NULL 
ELSE AUQ330 
 END as ever_had_job_exposure_to_loud_noise, 

CASE
            WHEN AUQ340 = '1' THEN 'Less than 3 months' -- categorize string values 
WHEN AUQ340 = '2' THEN '3 to 11 months' -- categorize string values 
WHEN AUQ340 = '3' THEN '1 to 2 years' -- categorize string values 
WHEN AUQ340 = '4' THEN '3 to 4 years' -- categorize string values 
WHEN AUQ340 = '5' THEN '5 to 9 years' -- categorize string values 
WHEN AUQ340 = '6' THEN '10 to 14 years' -- categorize string values 
WHEN AUQ340 = '7' THEN '15 or more years' -- categorize string values 
WHEN AUQ340 = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ340 = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ340 IS NULL THEN NULL 
ELSE AUQ340 
 END as how_long_exposed_to_loud_noise_at_work, 

CASE
            WHEN AUQ350 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ350 = '2' THEN 'No' -- categorize string values 
WHEN AUQ350 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ350 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ350 IS NULL THEN NULL 
ELSE AUQ350 
 END as ever_exposed_to_very_loud_noise_at_work, 

CASE
            WHEN AUQ360 = '1' THEN 'Less than 3 months' -- categorize string values 
WHEN AUQ360 = '2' THEN '3 to 11 months' -- categorize string values 
WHEN AUQ360 = '3' THEN '1 to 2 years' -- categorize string values 
WHEN AUQ360 = '4' THEN '3 to 4 years' -- categorize string values 
WHEN AUQ360 = '5' THEN '5 to 9 years' -- categorize string values 
WHEN AUQ360 = '6' THEN '10 to 14 years' -- categorize string values 
WHEN AUQ360 = '7' THEN '15 or more years' -- categorize string values 
WHEN AUQ360 = '8' THEN 'Not exposed' -- categorize string values 
WHEN AUQ360 = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ360 = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ360 IS NULL THEN NULL 
ELSE AUQ360 
 END as how_long_exposed_to_very_loud_noise, 

CASE
            WHEN AUQ370 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ370 = '2' THEN 'No' -- categorize string values 
WHEN AUQ370 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ370 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ370 IS NULL THEN NULL 
ELSE AUQ370 
 END as had_off_work_exposure_to_loud_noise, 

CASE
            WHEN AUQ510 = '1' THEN 'Less than 1 year' -- categorize string values 
WHEN AUQ510 = '2' THEN '1 to 2 years' -- categorize string values 
WHEN AUQ510 = '3' THEN '3 to 4 years' -- categorize string values 
WHEN AUQ510 = '4' THEN '5 or more years' -- categorize string values 
WHEN AUQ510 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ510 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ510 IS NULL THEN NULL 
ELSE AUQ510 
 END as how_long_exposed_to_loud_noise_10_hrs_wk_AUQ510, 

CASE
            WHEN AUQ380 = '1' THEN 'Always' -- categorize string values 
WHEN AUQ380 = '2' THEN 'Usually' -- categorize string values 
WHEN AUQ380 = '3' THEN 'About half the time' -- categorize string values 
WHEN AUQ380 = '4' THEN 'Seldom' -- categorize string values 
WHEN AUQ380 = '5' THEN 'Never' -- categorize string values 
WHEN AUQ380 = '6' THEN 'No noise exposure past 12 months' -- categorize string values 
WHEN AUQ380 = '77' THEN 'Refused' -- categorize string values 
WHEN AUQ380 = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ380 IS NULL THEN NULL 
ELSE AUQ380 
 END as past_year_worn_hearing_protection, 

 FROM {{ ref('stg_audiometry_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUQ_J.htm
        