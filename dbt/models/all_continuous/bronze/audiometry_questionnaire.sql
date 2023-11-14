SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '1' THEN 'Excellent' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '2' THEN 'Good' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '3' THEN 'A little trouble' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '4' THEN 'Moderate hearing trouble' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '5' THEN 'A lot of trouble' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '6' THEN 'Deaf' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ054,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ054 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ054 AS STRING) 
 END as general_condition_of_hearing, 

-- AUQ055 as AUQ055, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ060,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ060,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ060,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ060,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ060 AS STRING) 
 END as hear_a_whisper_from_across_a_quiet_room, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ070,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ070,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ070,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ070,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ070 AS STRING) 
 END as hear_normal_voice_across_a_quiet_room, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ080,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ080,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ080,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ080,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ080 AS STRING) 
 END as hear_a_shout_from_across_a_quiet_room, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ090,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ090,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ090,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ090,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ090 AS STRING) 
 END as hear_if_spoken_loudly_to_in_better_ear, 

-- AUQ395 as AUQ395, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '1' THEN 'Before age 1 year old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '2' THEN 'Between 2 and 5 years old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '3' THEN 'Between 6 and 19 years old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '4' THEN 'Between 20 and 39 years old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '5' THEN 'Between 40 and 59 years old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '6' THEN 'Between 60 and 69 years old' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '7' THEN '70 years and older' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '8' THEN 'No hearing loss' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ400,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ400 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ400 AS STRING) 
 END as when_began_to_have_hearing_loss, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410A,'.0','') AS INT64) AS STRING) = '1' THEN 'Genetic/Hereditary causes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ410A IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410A AS STRING) 
 END as cause_of_hearing_loss_genetic_hereditary, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410B,'.0','') AS INT64) AS STRING) = '2' THEN 'Ear infections (including fluid in ears)' -- categorize string values 
WHEN AUQ410B IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410B AS STRING) 
 END as cause_of_hearing_loss_ear_infections, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410C,'.0','') AS INT64) AS STRING) = '3' THEN 'Ear diseases (Otosclerosis, Menieres, Tumor)' -- categorize string values 
WHEN AUQ410C IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410C AS STRING) 
 END as cause_of_hearing_loss_ear_diseases, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410D,'.0','') AS INT64) AS STRING) = '4' THEN 'Illness/Infections (Measles, Meningitis, Mumps)' -- categorize string values 
WHEN AUQ410D IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410D AS STRING) 
 END as cause_of_hearing_loss_illness_infections, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410E,'.0','') AS INT64) AS STRING) = '5' THEN 'Drugs/Medications' -- categorize string values 
WHEN AUQ410E IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410E AS STRING) 
 END as cause_of_hearing_loss_drugs_medications, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410F,'.0','') AS INT64) AS STRING) = '6' THEN 'Head or neck injury/trauma' -- categorize string values 
WHEN AUQ410F IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410F AS STRING) 
 END as cause_of_hearing_loss_head_neck_injury, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410G,'.0','') AS INT64) AS STRING) = '7' THEN 'Loud brief explosive noise/sounds' -- categorize string values 
WHEN AUQ410G IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410G AS STRING) 
 END as cause_of_hearing_loss_loud_brief_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410H,'.0','') AS INT64) AS STRING) = '8' THEN 'Noise exposure, long-term (machinery, etc.)' -- categorize string values 
WHEN AUQ410H IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410H AS STRING) 
 END as cause_of_hearing_loss_long_term_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410I,'.0','') AS INT64) AS STRING) = '9' THEN 'Aging, getting older' -- categorize string values 
WHEN AUQ410I IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410I AS STRING) 
 END as cause_of_hearing_loss_aging, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ410J,'.0','') AS INT64) AS STRING) = '10' THEN 'Other causes' -- categorize string values 
WHEN AUQ410J IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ410J AS STRING) 
 END as cause_of_hearing_loss_others, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ156,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ156,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ156,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ156,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ156 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ156 AS STRING) 
 END as ever_used_assistive_listening_devices, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ420,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ420,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ420,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ420,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ420 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ420 AS STRING) 
 END as ever_had_ear_infections_or_earaches, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ430,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ430,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ430,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ430,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ430 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ430 AS STRING) 
 END as ever_had_3_or_more_ear_infections, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ139,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ139,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ139,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ139,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ139 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ139 AS STRING) 
 END as ever_had_tube_placed_in_ear, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than a year ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '2' THEN '1 year to 4 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '3' THEN '5 to 9 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '4' THEN 'Ten or more years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ144,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ144 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ144 AS STRING) 
 END as last_time_hearing_tested_by_specialist, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ147,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ147,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ147,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ147,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ147 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ147 AS STRING) 
 END as now_use_hearing_aid_amplifier_implant, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ149A,'.0','') AS INT64) AS STRING) = '1' THEN 'A hearing aid' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ149A,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ149A,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ149A IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ149A AS STRING) 
 END as now_use_a_hearing_aid, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ149B,'.0','') AS INT64) AS STRING) = '2' THEN 'A personal sound amplifier' -- categorize string values 
WHEN AUQ149B IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ149B AS STRING) 
 END as now_use_a_personal_sound_amplifier, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ149C,'.0','') AS INT64) AS STRING) = '3' THEN 'A Cochlear implant' -- categorize string values 
WHEN AUQ149C IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ149C AS STRING) 
 END as now_have_a_cochlear_implant, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 1 hour a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '2' THEN '1 to 3 hours a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '3' THEN '4 to 7 hours a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '4' THEN '8 or more hours per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ153,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ153 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ153 AS STRING) 
 END as past_2_weeks_how_often_worn_hearing_aid, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ630,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ630,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ630,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ630,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ630 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ630 AS STRING) 
 END as ever_worn_hearing_aid_amplifier_implant, 

-- AUQ435 as AUQ435, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ440,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ440,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ440,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ440,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ440 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ440 AS STRING) 
 END as ever_had_special_ed_early_intervention, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450A,'.0','') AS INT64) AS STRING) = '1' THEN 'Speech-language' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ450A IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450A AS STRING) 
 END as had_service_for_speech_language, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450B,'.0','') AS INT64) AS STRING) = '2' THEN 'Reading' -- categorize string values 
WHEN AUQ450B IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450B AS STRING) 
 END as had_service_for_reading, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450C,'.0','') AS INT64) AS STRING) = '3' THEN 'Hearing or listening skills' -- categorize string values 
WHEN AUQ450C IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450C AS STRING) 
 END as had_service_for_hearing_listening_skills, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450D,'.0','') AS INT64) AS STRING) = '4' THEN 'Intellectual disability' -- categorize string values 
WHEN AUQ450D IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450D AS STRING) 
 END as had_service_for_intellectual_disability, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450E,'.0','') AS INT64) AS STRING) = '5' THEN 'Movement or mobility difficulties' -- categorize string values 
WHEN AUQ450E IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450E AS STRING) 
 END as had_service_for_movement_mobility_issues, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ450F,'.0','') AS INT64) AS STRING) = '6' THEN 'Other developmental or disability problems' -- categorize string values 
WHEN AUQ450F IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ450F AS STRING) 
 END as had_service_for_other_disabilities, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ460,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ460,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ460,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ460,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ460 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ460 AS STRING) 
 END as exposed_to_very_loud_noise_10_hrs_wk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 1 year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '2' THEN '1 to 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '3' THEN '3 to 4 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '4' THEN '5 or more years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ470,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ470 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ470 AS STRING) 
 END as how_long_exposed_to_loud_noise_10_hrs_wk, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ101,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ101 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ101 AS STRING) 
 END as difficult_to_follow_conversation_w_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ110,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ110 AS STRING) 
 END as hearing_causes_frustration_when_talking, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ480,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ480 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ480 AS STRING) 
 END as avoid_groups_limit_social_life, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ490,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ490,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ490,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ490,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ490 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ490 AS STRING) 
 END as problem_with_dizziness_lightheadedness, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ191,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ191,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ191,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ191,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ191 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ191 AS STRING) 
 END as ears_ringing_buzzing_past_year, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than three months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '2' THEN 'Three months to a year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '3' THEN '1 to 4 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '4' THEN '5 to 9 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '5' THEN 'Ten or more years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ250,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ250 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ250 AS STRING) 
 END as how_long_bothered_by_ringing_buzzing, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '1' THEN 'Almost always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '2' THEN 'At least once a day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '3' THEN 'At least once a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '4' THEN 'At least once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '5' THEN 'Less frequently than once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ255,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ255 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ255 AS STRING) 
 END as in_past_yr_how_often_had_ringing_roaring, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ260,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ260,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ260,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ260,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ260 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ260 AS STRING) 
 END as bothered_by_ringing_after_loud_sounds, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ270,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ270,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ270,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ270,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ270 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ270 AS STRING) 
 END as bothered_by_ringing_when_going_to_sleep, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '1' THEN 'No problem' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '2' THEN 'A small problem' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '3' THEN 'A moderate problem' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '4' THEN 'A big problem' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '5' THEN 'A very big problem' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ280,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ280 AS STRING) 
 END as how_much_of_a_problem_is_ringing, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ500,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ500,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ500,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ500,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ500 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ500 AS STRING) 
 END as discussed_ringing_with_doctor, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ300,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ300,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ300,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ300,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ300 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ300 AS STRING) 
 END as ever_used_firearms_for_any_reason, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '1' THEN '1 to less than 100 rounds' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '2' THEN '100 to less than 1000 rounds' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '3' THEN '1000 to less than 10,000 rounds' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '4' THEN '10,000 to less than 50,000 rounds' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '5' THEN '50,000 rounds or more' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ310,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ310 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ310 AS STRING) 
 END as how_many_total_rounds_ever_fired, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ320,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ320 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ320 AS STRING) 
 END as wear_hearing_protection_when_shooting, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ330,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ330,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ330,'.0','') AS INT64) AS STRING) = '3' THEN 'Never worked' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ330,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ330,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ330 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ330 AS STRING) 
 END as ever_had_job_exposure_to_loud_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 3 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '2' THEN '3 to 11 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '3' THEN '1 to 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '4' THEN '3 to 4 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '5' THEN '5 to 9 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '6' THEN '10 to 14 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '7' THEN '15 or more years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ340,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ340 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ340 AS STRING) 
 END as how_long_exposed_to_loud_noise_at_work, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ350,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ350,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ350,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ350,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ350 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ350 AS STRING) 
 END as ever_exposed_to_very_loud_noise_at_work, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 3 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '2' THEN '3 to 11 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '3' THEN '1 to 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '4' THEN '3 to 4 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '5' THEN '5 to 9 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '6' THEN '10 to 14 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '7' THEN '15 or more years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '8' THEN 'Not exposed' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ360,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ360 AS STRING) 
 END as how_long_exposed_to_very_loud_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ370,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ370,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ370,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ370,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ370 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ370 AS STRING) 
 END as had_off_work_exposure_to_loud_noise, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '1' THEN 'Less than 1 year' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '2' THEN '1 to 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '3' THEN '3 to 4 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '4' THEN '5 or more years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ510,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ510 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ510 AS STRING) 
 END as how_long_exposed_to_loud_noise_10_hrs_wk_AUQ510, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '2' THEN 'Usually' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '3' THEN 'About half the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '4' THEN 'Seldom' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '6' THEN 'No noise exposure past 12 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ380,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN AUQ380 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ380 AS STRING) 
 END as past_year_worn_hearing_protection, 

 FROM {{ ref('stg_audiometry_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUQ_J.htm
        