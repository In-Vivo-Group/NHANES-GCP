SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN AUQ054 = '1' THEN 'Excellent' 
WHEN AUQ054 = '2' THEN 'Good' 
WHEN AUQ054 = '3' THEN 'A little trouble' 
WHEN AUQ054 = '4' THEN 'Moderate hearing trouble' 
WHEN AUQ054 = '5' THEN 'A lot of trouble' 
WHEN AUQ054 = '6' THEN 'Deaf' 
WHEN AUQ054 = '77' THEN 'Refused' 
WHEN AUQ054 = '99' THEN 'Don\'t know' 
WHEN AUQ054 IS NULL THEN NULL 
ELSE NULL 
 END as general_condition_of_hearing,
CASE
        WHEN AUQ060 = '1' THEN 'Yes' 
WHEN AUQ060 = '2' THEN 'No' 
WHEN AUQ060 = '7' THEN 'Refused' 
WHEN AUQ060 = '9' THEN 'Don\'t know' 
WHEN AUQ060 IS NULL THEN NULL 
ELSE NULL 
 END as hear_a_whisper_from_across_a_quiet_room,
CASE
        WHEN AUQ070 = '1' THEN 'Yes' 
WHEN AUQ070 = '2' THEN 'No' 
WHEN AUQ070 = '7' THEN 'Refused' 
WHEN AUQ070 = '9' THEN 'Don\'t know' 
WHEN AUQ070 IS NULL THEN NULL 
ELSE NULL 
 END as hear_normal_voice_across_a_quiet_room,
CASE
        WHEN AUQ080 = '1' THEN 'Yes' 
WHEN AUQ080 = '2' THEN 'No' 
WHEN AUQ080 = '7' THEN 'Refused' 
WHEN AUQ080 = '9' THEN 'Don\'t know' 
WHEN AUQ080 IS NULL THEN NULL 
ELSE NULL 
 END as hear_a_shout_from_across_a_quiet_room,
CASE
        WHEN AUQ090 = '1' THEN 'Yes' 
WHEN AUQ090 = '2' THEN 'No' 
WHEN AUQ090 = '7' THEN 'Refused' 
WHEN AUQ090 = '9' THEN 'Don\'t know' 
WHEN AUQ090 IS NULL THEN NULL 
ELSE NULL 
 END as hear_if_spoken_loudly_to_in_better_ear,
CASE
        WHEN AUQ400 = '1' THEN 'Before age 1 year old' 
WHEN AUQ400 = '2' THEN 'Between 2 and 5 years old' 
WHEN AUQ400 = '3' THEN 'Between 6 and 19 years old' 
WHEN AUQ400 = '4' THEN 'Between 20 and 39 years old' 
WHEN AUQ400 = '5' THEN 'Between 40 and 59 years old' 
WHEN AUQ400 = '6' THEN 'Between 60 and 69 years old' 
WHEN AUQ400 = '7' THEN '70 years and older' 
WHEN AUQ400 = '8' THEN 'No hearing loss' 
WHEN AUQ400 = '77' THEN 'Refused' 
WHEN AUQ400 = '99' THEN 'Don\'t know' 
WHEN AUQ400 IS NULL THEN NULL 
ELSE NULL 
 END as when_began_to_have_hearing_loss,
CASE
        WHEN AUQ156 = '1' THEN 'Yes' 
WHEN AUQ156 = '2' THEN 'No' 
WHEN AUQ156 = '7' THEN 'Refused' 
WHEN AUQ156 = '9' THEN 'Don\'t know' 
WHEN AUQ156 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_assistive_listening_devices,
CASE
        WHEN AUQ420 = '1' THEN 'Yes' 
WHEN AUQ420 = '2' THEN 'No' 
WHEN AUQ420 = '7' THEN 'Refused' 
WHEN AUQ420 = '9' THEN 'Don\'t know' 
WHEN AUQ420 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_ear_infections_or_earaches,
CASE
        WHEN AUQ430 = '1' THEN 'Yes' 
WHEN AUQ430 = '2' THEN 'No' 
WHEN AUQ430 = '7' THEN 'Refused' 
WHEN AUQ430 = '9' THEN 'Don\'t know' 
WHEN AUQ430 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_3_or_more_ear_infections,
CASE
        WHEN AUQ139 = '1' THEN 'Yes' 
WHEN AUQ139 = '2' THEN 'No' 
WHEN AUQ139 = '7' THEN 'Refused' 
WHEN AUQ139 = '9' THEN 'Don\'t know' 
WHEN AUQ139 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_tube_placed_in_ear,
CASE
        WHEN AUQ144 = '1' THEN 'Less than a year ago' 
WHEN AUQ144 = '2' THEN '1 year to 4 years ago' 
WHEN AUQ144 = '3' THEN '5 to 9 years ago' 
WHEN AUQ144 = '4' THEN 'Ten or more years ago' 
WHEN AUQ144 = '5' THEN 'Never' 
WHEN AUQ144 = '7' THEN 'Refused' 
WHEN AUQ144 = '9' THEN 'Don\'t know' 
WHEN AUQ144 IS NULL THEN NULL 
ELSE NULL 
 END as last_time_hearing_tested_by_specialist,
CASE
        WHEN AUQ147 = '1' THEN 'Yes' 
WHEN AUQ147 = '2' THEN 'No' 
WHEN AUQ147 = '7' THEN 'Refused' 
WHEN AUQ147 = '9' THEN 'Don\'t know' 
WHEN AUQ147 IS NULL THEN NULL 
ELSE NULL 
 END as now_use_hearing_aid_amplifier_implant,
CASE
        WHEN AUQ153 = '1' THEN 'Less than 1 hour a day' 
WHEN AUQ153 = '2' THEN '1 to 3 hours a day' 
WHEN AUQ153 = '3' THEN '4 to 7 hours a day' 
WHEN AUQ153 = '4' THEN '8 or more hours per day' 
WHEN AUQ153 = '5' THEN 'Never' 
WHEN AUQ153 = '7' THEN 'Refused' 
WHEN AUQ153 = '9' THEN 'Don\'t know' 
WHEN AUQ153 IS NULL THEN NULL 
ELSE NULL 
 END as past_2_weeks_how_often_worn_hearing_aid,
CASE
        WHEN AUQ630 = '1' THEN 'Yes' 
WHEN AUQ630 = '2' THEN 'No' 
WHEN AUQ630 = '7' THEN 'Refused' 
WHEN AUQ630 = '9' THEN 'Don\'t know' 
WHEN AUQ630 IS NULL THEN NULL 
ELSE NULL 
 END as ever_worn_hearing_aid_amplifier_implant,
CASE
        WHEN AUQ440 = '1' THEN 'Yes' 
WHEN AUQ440 = '2' THEN 'No' 
WHEN AUQ440 = '7' THEN 'Refused' 
WHEN AUQ440 = '9' THEN 'Don\'t know' 
WHEN AUQ440 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_special_ed_early_intervention,
CASE
        WHEN AUQ460 = '1' THEN 'Yes' 
WHEN AUQ460 = '2' THEN 'No' 
WHEN AUQ460 = '7' THEN 'Refused' 
WHEN AUQ460 = '9' THEN 'Don\'t know' 
WHEN AUQ460 IS NULL THEN NULL 
ELSE NULL 
 END as exposed_to_very_loud_noise_10_hrs_wk,
CASE
        WHEN AUQ470 = '1' THEN 'Less than 1 year' 
WHEN AUQ470 = '2' THEN '1 to 2 years' 
WHEN AUQ470 = '3' THEN '3 to 4 years' 
WHEN AUQ470 = '4' THEN '5 or more years' 
WHEN AUQ470 = '7' THEN 'Refused' 
WHEN AUQ470 = '9' THEN 'Don\'t know' 
WHEN AUQ470 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_exposed_to_loud_noise_10_hrs_wk,
CASE
        WHEN AUQ101 = '1' THEN 'Always' 
WHEN AUQ101 = '2' THEN 'Usually' 
WHEN AUQ101 = '3' THEN 'About half the time' 
WHEN AUQ101 = '4' THEN 'Seldom' 
WHEN AUQ101 = '5' THEN 'Never' 
WHEN AUQ101 = '7' THEN 'Refused' 
WHEN AUQ101 = '9' THEN 'Don\'t know' 
WHEN AUQ101 IS NULL THEN NULL 
ELSE NULL 
 END as difficult_to_follow_conversation_w_noise,
CASE
        WHEN AUQ110 = '1' THEN 'Always' 
WHEN AUQ110 = '2' THEN 'Usually' 
WHEN AUQ110 = '3' THEN 'About half the time' 
WHEN AUQ110 = '4' THEN 'Seldom' 
WHEN AUQ110 = '5' THEN 'Never' 
WHEN AUQ110 = '7' THEN 'Refused' 
WHEN AUQ110 = '9' THEN 'Don\'t know' 
WHEN AUQ110 IS NULL THEN NULL 
ELSE NULL 
 END as hearing_causes_frustration_when_talking,
CASE
        WHEN AUQ480 = '1' THEN 'Always' 
WHEN AUQ480 = '2' THEN 'Usually' 
WHEN AUQ480 = '3' THEN 'About half the time' 
WHEN AUQ480 = '4' THEN 'Seldom' 
WHEN AUQ480 = '5' THEN 'Never' 
WHEN AUQ480 = '7' THEN 'Refused' 
WHEN AUQ480 = '9' THEN 'Don\'t know' 
WHEN AUQ480 IS NULL THEN NULL 
ELSE NULL 
 END as avoid_groups_limit_social_life,
CASE
        WHEN AUQ490 = '1' THEN 'Yes' 
WHEN AUQ490 = '2' THEN 'No' 
WHEN AUQ490 = '7' THEN 'Refused' 
WHEN AUQ490 = '9' THEN 'Don\'t know' 
WHEN AUQ490 IS NULL THEN NULL 
ELSE NULL 
 END as problem_with_dizziness_lightheadedness,
CASE
        WHEN AUQ191 = '1' THEN 'Yes' 
WHEN AUQ191 = '2' THEN 'No' 
WHEN AUQ191 = '7' THEN 'Refused' 
WHEN AUQ191 = '9' THEN 'Don\'t know' 
WHEN AUQ191 IS NULL THEN NULL 
ELSE NULL 
 END as ears_ringing_buzzing_past_year,
CASE
        WHEN AUQ250 = '1' THEN 'Less than three months' 
WHEN AUQ250 = '2' THEN 'Three months to a year' 
WHEN AUQ250 = '3' THEN '1 to 4 years' 
WHEN AUQ250 = '4' THEN '5 to 9 years' 
WHEN AUQ250 = '5' THEN 'Ten or more years' 
WHEN AUQ250 = '7' THEN 'Refused' 
WHEN AUQ250 = '9' THEN 'Don\'t know' 
WHEN AUQ250 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_bothered_by_ringing_buzzing,
CASE
        WHEN AUQ255 = '1' THEN 'Almost always' 
WHEN AUQ255 = '2' THEN 'At least once a day' 
WHEN AUQ255 = '3' THEN 'At least once a week' 
WHEN AUQ255 = '4' THEN 'At least once a month' 
WHEN AUQ255 = '5' THEN 'Less frequently than once a month' 
WHEN AUQ255 = '7' THEN 'Refused' 
WHEN AUQ255 = '9' THEN 'Don\'t know' 
WHEN AUQ255 IS NULL THEN NULL 
ELSE NULL 
 END as in_past_yr_how_often_had_ringing_roaring,
CASE
        WHEN AUQ260 = '1' THEN 'Yes' 
WHEN AUQ260 = '2' THEN 'No' 
WHEN AUQ260 = '7' THEN 'Refused' 
WHEN AUQ260 = '9' THEN 'Don\'t know' 
WHEN AUQ260 IS NULL THEN NULL 
ELSE NULL 
 END as bothered_by_ringing_after_loud_sounds,
CASE
        WHEN AUQ270 = '1' THEN 'Yes' 
WHEN AUQ270 = '2' THEN 'No' 
WHEN AUQ270 = '7' THEN 'Refused' 
WHEN AUQ270 = '9' THEN 'Don\'t know' 
WHEN AUQ270 IS NULL THEN NULL 
ELSE NULL 
 END as bothered_by_ringing_when_going_to_sleep,
CASE
        WHEN AUQ280 = '1' THEN 'No problem' 
WHEN AUQ280 = '2' THEN 'A small problem' 
WHEN AUQ280 = '3' THEN 'A moderate problem' 
WHEN AUQ280 = '4' THEN 'A big problem' 
WHEN AUQ280 = '5' THEN 'A very big problem' 
WHEN AUQ280 = '7' THEN 'Refused' 
WHEN AUQ280 = '9' THEN 'Don\'t know' 
WHEN AUQ280 IS NULL THEN NULL 
ELSE NULL 
 END as how_much_of_a_problem_is_ringing,
CASE
        WHEN AUQ500 = '1' THEN 'Yes' 
WHEN AUQ500 = '2' THEN 'No' 
WHEN AUQ500 = '7' THEN 'Refused' 
WHEN AUQ500 = '9' THEN 'Don\'t know' 
WHEN AUQ500 IS NULL THEN NULL 
ELSE NULL 
 END as discussed_ringing_with_doctor,
CASE
        WHEN AUQ300 = '1' THEN 'Yes' 
WHEN AUQ300 = '2' THEN 'No' 
WHEN AUQ300 = '7' THEN 'Refused' 
WHEN AUQ300 = '9' THEN 'Don\'t know' 
WHEN AUQ300 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_firearms_for_any_reason,
CASE
        WHEN AUQ310 = '1' THEN '1 to less than 100 rounds' 
WHEN AUQ310 = '2' THEN '100 to less than 1000 rounds' 
WHEN AUQ310 = '3' THEN '1000 to less than 10,000 rounds' 
WHEN AUQ310 = '4' THEN '10,000 to less than 50,000 rounds' 
WHEN AUQ310 = '5' THEN '50,000 rounds or more' 
WHEN AUQ310 = '7' THEN 'Refused' 
WHEN AUQ310 = '9' THEN 'Don\'t know' 
WHEN AUQ310 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_total_rounds_ever_fired,
CASE
        WHEN AUQ320 = '1' THEN 'Always' 
WHEN AUQ320 = '2' THEN 'Usually' 
WHEN AUQ320 = '3' THEN 'About half the time' 
WHEN AUQ320 = '4' THEN 'Seldom' 
WHEN AUQ320 = '5' THEN 'Never' 
WHEN AUQ320 = '7' THEN 'Refused' 
WHEN AUQ320 = '9' THEN 'Don\'t know' 
WHEN AUQ320 IS NULL THEN NULL 
ELSE NULL 
 END as wear_hearing_protection_when_shooting,
CASE
        WHEN AUQ330 = '1' THEN 'Yes' 
WHEN AUQ330 = '2' THEN 'No' 
WHEN AUQ330 = '3' THEN 'Never worked' 
WHEN AUQ330 = '7' THEN 'Refused' 
WHEN AUQ330 = '9' THEN 'Don\'t know' 
WHEN AUQ330 IS NULL THEN NULL 
ELSE NULL 
 END as ever_had_job_exposure_to_loud_noise,
CASE
        WHEN AUQ340 = '1' THEN 'Less than 3 months' 
WHEN AUQ340 = '2' THEN '3 to 11 months' 
WHEN AUQ340 = '3' THEN '1 to 2 years' 
WHEN AUQ340 = '4' THEN '3 to 4 years' 
WHEN AUQ340 = '5' THEN '5 to 9 years' 
WHEN AUQ340 = '6' THEN '10 to 14 years' 
WHEN AUQ340 = '7' THEN '15 or more years' 
WHEN AUQ340 = '77' THEN 'Refused' 
WHEN AUQ340 = '99' THEN 'Don\'t know' 
WHEN AUQ340 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_exposed_to_loud_noise_at_work,
CASE
        WHEN AUQ350 = '1' THEN 'Yes' 
WHEN AUQ350 = '2' THEN 'No' 
WHEN AUQ350 = '7' THEN 'Refused' 
WHEN AUQ350 = '9' THEN 'Don\'t know' 
WHEN AUQ350 IS NULL THEN NULL 
ELSE NULL 
 END as ever_exposed_to_very_loud_noise_at_work,
CASE
        WHEN AUQ360 = '1' THEN 'Less than 3 months' 
WHEN AUQ360 = '2' THEN '3 to 11 months' 
WHEN AUQ360 = '3' THEN '1 to 2 years' 
WHEN AUQ360 = '4' THEN '3 to 4 years' 
WHEN AUQ360 = '5' THEN '5 to 9 years' 
WHEN AUQ360 = '6' THEN '10 to 14 years' 
WHEN AUQ360 = '7' THEN '15 or more years' 
WHEN AUQ360 = '8' THEN 'Not exposed' 
WHEN AUQ360 = '77' THEN 'Refused' 
WHEN AUQ360 = '99' THEN 'Don\'t know' 
WHEN AUQ360 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_exposed_to_very_loud_noise,
CASE
        WHEN AUQ370 = '1' THEN 'Yes' 
WHEN AUQ370 = '2' THEN 'No' 
WHEN AUQ370 = '7' THEN 'Refused' 
WHEN AUQ370 = '9' THEN 'Don\'t know' 
WHEN AUQ370 IS NULL THEN NULL 
ELSE NULL 
 END as had_off_work_exposure_to_loud_noise,
CASE
        WHEN AUQ510 = '1' THEN 'Less than 1 year' 
WHEN AUQ510 = '2' THEN '1 to 2 years' 
WHEN AUQ510 = '3' THEN '3 to 4 years' 
WHEN AUQ510 = '4' THEN '5 or more years' 
WHEN AUQ510 = '7' THEN 'Refused' 
WHEN AUQ510 = '9' THEN 'Don\'t know' 
WHEN AUQ510 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_exposed_to_loud_noise_10_hrs_wk,
CASE
        WHEN AUQ380 = '1' THEN 'Always' 
WHEN AUQ380 = '2' THEN 'Usually' 
WHEN AUQ380 = '3' THEN 'About half the time' 
WHEN AUQ380 = '4' THEN 'Seldom' 
WHEN AUQ380 = '5' THEN 'Never' 
WHEN AUQ380 = '6' THEN 'No noise exposure past 12 months' 
WHEN AUQ380 = '77' THEN 'Refused' 
WHEN AUQ380 = '99' THEN 'Don\'t know' 
WHEN AUQ380 IS NULL THEN NULL 
ELSE NULL 
 END as past_year_worn_hearing_protection,
 FROM {{ ref('stg_audiometry_questionnaire') }}