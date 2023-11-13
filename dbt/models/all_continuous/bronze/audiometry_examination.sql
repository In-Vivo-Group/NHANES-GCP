SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN AUAEXSTS = 1 THEN 'Complete' -- categorize numeric values
WHEN AUAEXSTS = 2 THEN 'Partial' -- categorize numeric values
WHEN AUAEXSTS = 3 THEN 'Not done' -- categorize numeric values
WHEN AUAEXSTS IS NULL THEN NULL 
ELSE AUAEXSTS 
 END as status_of_an_audio_exam, 

CASE
            WHEN AUAEXCMT = 2 THEN 'SP refusal' -- categorize numeric values
WHEN AUAEXCMT = 3 THEN 'No time' -- categorize numeric values
WHEN AUAEXCMT = 4 THEN 'Physical limitation' -- categorize numeric values
WHEN AUAEXCMT = 5 THEN 'Communication problem' -- categorize numeric values
WHEN AUAEXCMT = 6 THEN 'Equipment failure' -- categorize numeric values
WHEN AUAEXCMT = 7 THEN 'SP ill/emergency' -- categorize numeric values
WHEN AUAEXCMT = 14 THEN 'Interrupted' -- categorize numeric values
WHEN AUAEXCMT = 51 THEN 'SP unable to comply' -- categorize numeric values
WHEN AUAEXCMT = 56 THEN 'Came late/left early' -- categorize numeric values
WHEN AUAEXCMT = 72 THEN 'Error (technician/software/supply)' -- categorize numeric values
WHEN AUAEXCMT = 99 THEN 'Other, specify' -- categorize numeric values
WHEN AUAEXCMT = 122 THEN 'Language barrier' -- categorize numeric values
WHEN AUAEXCMT = 150 THEN 'SP with parent SP' -- categorize numeric values
WHEN AUAEXCMT IS NULL THEN NULL 
ELSE AUAEXCMT 
 END as comment_code_for_an_audio_exam, 

CASE
            WHEN AUQ011 = '1' THEN 'Yes, right ear' -- categorize string values 
WHEN AUQ011 = '2' THEN 'Yes, left ear' -- categorize string values 
WHEN AUQ011 = '3' THEN 'Yes, both ears' -- categorize string values 
WHEN AUQ011 = '4' THEN 'No' -- categorize string values 
WHEN AUQ011 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ011 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ011 IS NULL THEN NULL 
ELSE AUQ011 
 END as have_ear_tube_right_or_left_ear, 

CASE
            WHEN AUQ540 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ540 = '2' THEN 'No' -- categorize string values 
WHEN AUQ540 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ540 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ540 IS NULL THEN NULL 
ELSE AUQ540 
 END as had_cold_runny_nose_earache_today, 

CASE
            WHEN AUQ550 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ550 = '2' THEN 'No' -- categorize string values 
WHEN AUQ550 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ550 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550 IS NULL THEN NULL 
ELSE AUQ550 
 END as had_cold_runny_nose_earache_yesterday, 

CASE
            WHEN AUQ550A = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN AUQ550A = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN AUQ550A = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550A IS NULL THEN NULL 
ELSE AUQ550A 
 END as had_cold, 

CASE
            WHEN AUQ550B = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN AUQ550B = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN AUQ550B = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550B IS NULL THEN NULL 
ELSE AUQ550B 
 END as had_runny_nose, 

CASE
            WHEN AUQ550C = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN AUQ550C = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN AUQ550C = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550C IS NULL THEN NULL 
ELSE AUQ550C 
 END as earache_right_ear, 

CASE
            WHEN AUQ550D = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN AUQ550D = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN AUQ550D = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550D IS NULL THEN NULL 
ELSE AUQ550D 
 END as earache_left_ear, 

CASE
            WHEN AUQ550E = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN AUQ550E = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN AUQ550E = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550E IS NULL THEN NULL 
ELSE AUQ550E 
 END as earache_both_ears, 

CASE
            WHEN AUQ560 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ560 = '2' THEN 'No' -- categorize string values 
WHEN AUQ560 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ560 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ560 IS NULL THEN NULL 
ELSE AUQ560 
 END as listened_to_loud_sound_today, 

CASE
            WHEN AUQ570 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ570 = '2' THEN 'No' -- categorize string values 
WHEN AUQ570 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ570 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ570 IS NULL THEN NULL 
ELSE AUQ570 
 END as listened_to_loud_sound_yesterday, 

CASE
            WHEN SAFE_CAST(AUQ580 AS FLOAT64) > 23.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ580 IS NULL THEN NULL 
ELSE AUQ580 
 END as hours_since_loud_sound_ended, 

CASE
            WHEN AUQ590 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ590 = '2' THEN 'No' -- categorize string values 
WHEN AUQ590 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ590 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ590 IS NULL THEN NULL 
ELSE AUQ590 
 END as listened_to_music_with_earphones_today, 

CASE
            WHEN AUQ600 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ600 = '2' THEN 'No' -- categorize string values 
WHEN AUQ600 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ600 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ600 IS NULL THEN NULL 
ELSE AUQ600 
 END as listened_to_music_w_earphones_yesterday, 

CASE
            WHEN SAFE_CAST(AUQ610 AS FLOAT64) > 24.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ610 IS NULL THEN NULL 
ELSE AUQ610 
 END as hours_since_stopped_listening, 

CASE
            WHEN AUQ051 = '1' THEN 'Yes, right ear' -- categorize string values 
WHEN AUQ051 = '2' THEN 'Yes, left ear' -- categorize string values 
WHEN AUQ051 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ051 = '9' THEN 'No / dont know' -- categorize string values 
WHEN AUQ051 IS NULL THEN NULL 
ELSE AUQ051 
 END as self_reported_better_ear, 

CASE
            WHEN AUQ010 = 1 THEN 'Yes, right ear' -- categorize numeric values
WHEN AUQ010 = 2 THEN 'Yes, left ear' -- categorize numeric values
WHEN AUQ010 = 3 THEN 'Yes, both ears' -- categorize numeric values
WHEN AUQ010 = 4 THEN 'No' -- categorize numeric values
WHEN AUQ010 = 7 THEN 'Refused' -- categorize numeric values
WHEN AUQ010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ010 IS NULL THEN NULL 
ELSE AUQ010 
 END as have_ear_tube_right_or_left_ear_AUQ010, 

CASE
            WHEN AUQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN AUQ020 = 2 THEN 'No' -- categorize numeric values
WHEN AUQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN AUQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020 IS NULL THEN NULL 
ELSE AUQ020 
 END as had_cold_sinus_or_earache_last_24_hrs, 

CASE
            WHEN AUQ020A = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUQ020A = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUQ020A = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020A IS NULL THEN NULL 
ELSE AUQ020A 
 END as had_cold_last_24_hrs, 

CASE
            WHEN AUQ020B = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUQ020B = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUQ020B = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020B IS NULL THEN NULL 
ELSE AUQ020B 
 END as had_sinus_problem_last_24_hours, 

CASE
            WHEN AUQ020C = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUQ020C = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUQ020C = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020C IS NULL THEN NULL 
ELSE AUQ020C 
 END as earache_last_24_hours_right, 

CASE
            WHEN AUQ020D = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUQ020D = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUQ020D = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020D IS NULL THEN NULL 
ELSE AUQ020D 
 END as earache_last_24_hours_left, 

CASE
            WHEN AUQ020E = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUQ020E = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUQ020E = 9 THEN 'Dont know' -- categorize numeric values
WHEN AUQ020E IS NULL THEN NULL 
ELSE AUQ020E 
 END as earache_last_24_hours_both, 

CASE
            WHEN AUQ031 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ031 = '2' THEN 'No' -- categorize string values 
WHEN AUQ031 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ031 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ031 IS NULL THEN NULL 
ELSE AUQ031 
 END as exposed_to_loud_noise_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ041 AS FLOAT64) > 24.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ041 IS NULL THEN NULL 
ELSE AUQ041 
 END as hours_since_noise_ended, 

CASE
            WHEN AUQ520 = '1' THEN 'Yes' -- categorize string values 
WHEN AUQ520 = '2' THEN 'No' -- categorize string values 
WHEN AUQ520 = '7' THEN 'Refused' -- categorize string values 
WHEN AUQ520 = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ520 IS NULL THEN NULL 
ELSE AUQ520 
 END as listened_to_music_w_earphone_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ530 AS FLOAT64) > 24.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ530 IS NULL THEN NULL 
ELSE AUQ530 
 END as hours_since_music_ended, 

CASE
            WHEN AUQ050 = 1 THEN 'Yes, right ear' -- categorize numeric values
WHEN AUQ050 = 2 THEN 'Yes, left ear' -- categorize numeric values
WHEN AUQ050 = 7 THEN 'Refused' -- categorize numeric values
WHEN AUQ050 = 9 THEN 'No / dont know' -- categorize numeric values
WHEN AUQ050 IS NULL THEN NULL 
ELSE AUQ050 
 END as self_reported_better_ear_AUQ050, 

CASE
            WHEN AUXOTSPL = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXOTSPL = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXOTSPL IS NULL THEN NULL 
ELSE AUXOTSPL 
 END as normal_otoscopy_left_ear, 

CASE
            WHEN AUXLOEXC = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXLOEXC = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOEXC IS NULL THEN NULL 
ELSE AUXLOEXC 
 END as excessive_cerumen_left_ear, 

CASE
            WHEN AUXLOIMC = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXLOIMC = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOIMC IS NULL THEN NULL 
ELSE AUXLOIMC 
 END as impacted_cerumen_left_ear, 

CASE
            WHEN AUXLOCOL = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXLOCOL = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOCOL IS NULL THEN NULL 
ELSE AUXLOCOL 
 END as collapsing_ear_canals_left_ear, 

CASE
            WHEN AUXLOABN = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXLOABN = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOABN IS NULL THEN NULL 
ELSE AUXLOABN 
 END as other_exam_abnormality_left_ear, 

CASE
            WHEN AUDLOABC = 1 THEN 'Possible Perforated Eardrum' -- categorize numeric values
WHEN AUDLOABC = 3 THEN 'Possible Infection' -- categorize numeric values
WHEN AUDLOABC = 4 THEN 'TM Scarring or Deformity' -- categorize numeric values
WHEN AUDLOABC = 5 THEN 'Possible Ear Canal Abrasion' -- categorize numeric values
WHEN AUDLOABC = 6 THEN 'Growth or Foreign Body in Ear Canal' -- categorize numeric values
WHEN AUDLOABC = 7 THEN 'Deformity of Auricle' -- categorize numeric values
WHEN AUDLOABC = 8 THEN 'Other' -- categorize numeric values
WHEN AUDLOABC = 9 THEN 'Could not Visualize Eardrum' -- categorize numeric values
WHEN AUDLOABC IS NULL THEN NULL 
ELSE AUDLOABC 
 END as comment_other_exam_abnormality_left_ear, 

CASE
            WHEN AUXROTSP = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXROTSP = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROTSP IS NULL THEN NULL 
ELSE AUXROTSP 
 END as normal_otoscopy_right_ear, 

CASE
            WHEN AUXROEXC = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXROEXC = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROEXC IS NULL THEN NULL 
ELSE AUXROEXC 
 END as excessive_cerumen_right_ear, 

CASE
            WHEN AUXROIMC = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXROIMC = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROIMC IS NULL THEN NULL 
ELSE AUXROIMC 
 END as impacted_cerumen_right_ear, 

CASE
            WHEN AUXROCOL = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXROCOL = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROCOL IS NULL THEN NULL 
ELSE AUXROCOL 
 END as collapsing_ear_canals_right_ear, 

CASE
            WHEN AUXROABN = 1 THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN AUXROABN = 2 THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROABN IS NULL THEN NULL 
ELSE AUXROABN 
 END as other_exam_abnormality_right_ear, 

CASE
            WHEN AUDROABC = 1 THEN 'Possible Perforated Eardrum' -- categorize numeric values
WHEN AUDROABC = 3 THEN 'Possible Infection' -- categorize numeric values
WHEN AUDROABC = 4 THEN 'TM Scarring or Deformity' -- categorize numeric values
WHEN AUDROABC = 5 THEN 'Possible Ear Canal Abrasion' -- categorize numeric values
WHEN AUDROABC = 6 THEN 'Growth or Foreign Body in Ear Canal' -- categorize numeric values
WHEN AUDROABC = 7 THEN 'Deformity of Auricle' -- categorize numeric values
WHEN AUDROABC = 8 THEN 'Other' -- categorize numeric values
WHEN AUDROABC = 9 THEN 'Could not Visualize Eardrum' -- categorize numeric values
WHEN AUDROABC IS NULL THEN NULL 
ELSE AUDROABC 
 END as comment_other_exam_abnormality_right_ear, 

CASE
            WHEN AUXTMEPR IS NULL THEN NULL 
ELSE AUXTMEPR 
 END as middle_ear_pressure_tymp_rt_ear_in_dapa, 

CASE
            WHEN AUXTPVR IS NULL THEN NULL 
ELSE AUXTPVR 
 END as physical_volume_tymp_right_ear_in_cc, 

CASE
            WHEN AUXTWIDR IS NULL THEN NULL 
ELSE AUXTWIDR 
 END as tympanometric_width_right_ear, 

CASE
            WHEN AUXTCOMR IS NULL THEN NULL 
ELSE AUXTCOMR 
 END as compliance_tympanometry_right_ear, 

CASE
            WHEN AUXTMEPL IS NULL THEN NULL 
ELSE AUXTMEPL 
 END as middle_ear_pressure_tymp_left_in_dapa, 

CASE
            WHEN AUXTPVL IS NULL THEN NULL 
ELSE AUXTPVL 
 END as physical_volume_tymp_left_ear_in_cc, 

CASE
            WHEN AUXTWIDL IS NULL THEN NULL 
ELSE AUXTWIDL 
 END as tympanometric_width_left_ear, 

CASE
            WHEN AUXTCOML IS NULL THEN NULL 
ELSE AUXTCOML 
 END as compliance_tympanometry_left_ear, 

CASE
            WHEN AUAEAR = 1 THEN 'Right' -- categorize numeric values
WHEN AUAEAR = 2 THEN 'Left' -- categorize numeric values
WHEN AUAEAR IS NULL THEN NULL 
ELSE AUAEAR 
 END as which_ear_tested_first, 

CASE
            WHEN AUAMODE = 1 THEN 'Manual' -- categorize numeric values
WHEN AUAMODE = 2 THEN 'Automatic' -- categorize numeric values
WHEN AUAMODE = 3 THEN 'Mixed' -- categorize numeric values
WHEN AUAMODE IS NULL THEN NULL 
ELSE AUAMODE 
 END as audio_test_mode_manual_automatic_mixed, 

CASE
            WHEN AUAFMANL = 1 THEN 'None' -- categorize numeric values
WHEN AUAFMANL = 2 THEN '500 Hz' -- categorize numeric values
WHEN AUAFMANL = 3 THEN '1000 Hz' -- categorize numeric values
WHEN AUAFMANL = 4 THEN '2000 Hz' -- categorize numeric values
WHEN AUAFMANL = 5 THEN '3000 Hz' -- categorize numeric values
WHEN AUAFMANL = 6 THEN '4000 Hz' -- categorize numeric values
WHEN AUAFMANL = 7 THEN '6000 Hz' -- categorize numeric values
WHEN AUAFMANL = 8 THEN '8000 Hz' -- categorize numeric values
WHEN AUAFMANL IS NULL THEN NULL 
ELSE AUAFMANL 
 END as frequency_switch_to_manual_mode_left, 

CASE
            WHEN AUAFMANR = 1 THEN 'None' -- categorize numeric values
WHEN AUAFMANR = 2 THEN '500 Hz' -- categorize numeric values
WHEN AUAFMANR = 3 THEN '1000 Hz' -- categorize numeric values
WHEN AUAFMANR = 4 THEN '2000 Hz' -- categorize numeric values
WHEN AUAFMANR = 5 THEN '3000 Hz' -- categorize numeric values
WHEN AUAFMANR = 6 THEN '4000 Hz' -- categorize numeric values
WHEN AUAFMANR = 7 THEN '6000 Hz' -- categorize numeric values
WHEN AUAFMANR = 8 THEN '8000 Hz' -- categorize numeric values
WHEN AUAFMANR IS NULL THEN NULL 
ELSE AUAFMANR 
 END as frequency_switch_to_manual_mode_right, 

CASE
            WHEN AUXU1K1R IS NULL THEN NULL 
ELSE AUXU1K1R 
 END as right_threshold_1000hz_db, 

CASE
            WHEN AUXU500R IS NULL THEN NULL 
ELSE AUXU500R 
 END as right_threshold_500hz_db, 

CASE
            WHEN AUXU1K2R IS NULL THEN NULL 
ELSE AUXU1K2R 
 END as right_threshold_1000hz_2nd_read_db, 

CASE
            WHEN AUXU2KR IS NULL THEN NULL 
ELSE AUXU2KR 
 END as right_threshold_2000hz_db, 

CASE
            WHEN AUXU3KR IS NULL THEN NULL 
ELSE AUXU3KR 
 END as right_threshold_3000hz_db, 

CASE
            WHEN AUXU4KR IS NULL THEN NULL 
ELSE AUXU4KR 
 END as right_threshold_4000hz_db, 

CASE
            WHEN AUXU6KR IS NULL THEN NULL 
ELSE AUXU6KR 
 END as right_threshold_6000hz_db, 

CASE
            WHEN AUXU8KR IS NULL THEN NULL 
ELSE AUXU8KR 
 END as right_threshold_8000hz_db, 

CASE
            WHEN AUXU1K1L IS NULL THEN NULL 
ELSE AUXU1K1L 
 END as left_threshold_1000hz_db, 

CASE
            WHEN AUXU500L IS NULL THEN NULL 
ELSE AUXU500L 
 END as left_threshold_500hz_db, 

CASE
            WHEN AUXU1K2L IS NULL THEN NULL 
ELSE AUXU1K2L 
 END as left_threshold_1000hz_2nd_read_db, 

CASE
            WHEN AUXU2KL IS NULL THEN NULL 
ELSE AUXU2KL 
 END as left_threshold_2000hz_db, 

CASE
            WHEN AUXU3KL IS NULL THEN NULL 
ELSE AUXU3KL 
 END as left_threshold_3000hz_db, 

CASE
            WHEN AUXU4KL IS NULL THEN NULL 
ELSE AUXU4KL 
 END as left_threshold_4000hz_db, 

CASE
            WHEN AUXU6KL IS NULL THEN NULL 
ELSE AUXU6KL 
 END as left_threshold_6000hz_db, 

CASE
            WHEN AUXU8KL IS NULL THEN NULL 
ELSE AUXU8KL 
 END as left_threshold_8000hz_db, 

CASE
            WHEN AUXR1K1R IS NULL THEN NULL 
ELSE AUXR1K1R 
 END as right_retest_threshold_1000hz_db, 

CASE
            WHEN AUXR5CR IS NULL THEN NULL 
ELSE AUXR5CR 
 END as right_retest_threshold_500hz_db, 

CASE
            WHEN AUXR1K2R IS NULL THEN NULL 
ELSE AUXR1K2R 
 END as right_retest_threshold_1000hz_2nd_read, 

CASE
            WHEN AUXR2KR IS NULL THEN NULL 
ELSE AUXR2KR 
 END as right_retest_threshold_2000hz_db, 

CASE
            WHEN AUXR3KR IS NULL THEN NULL 
ELSE AUXR3KR 
 END as right_retest_threshold_3000hz_db, 

CASE
            WHEN AUXR4KR IS NULL THEN NULL 
ELSE AUXR4KR 
 END as right_retest_threshold_4000hz_db, 

CASE
            WHEN AUXR6KR IS NULL THEN NULL 
ELSE AUXR6KR 
 END as right_retest_threshold_6000hz_db, 

CASE
            WHEN AUXR8KR IS NULL THEN NULL 
ELSE AUXR8KR 
 END as right_retest_threshold_8000hz_db, 

CASE
            WHEN AUXR1K1L IS NULL THEN NULL 
ELSE AUXR1K1L 
 END as left_retest_threshold_1000hz_db, 

CASE
            WHEN AUXR5CL IS NULL THEN NULL 
ELSE AUXR5CL 
 END as left_retest_threshold_500hz_db, 

CASE
            WHEN AUXR1K2L IS NULL THEN NULL 
ELSE AUXR1K2L 
 END as left_retest_threshold_1000hz_2nd_read, 

CASE
            WHEN AUXR2KL IS NULL THEN NULL 
ELSE AUXR2KL 
 END as left_retest_threshold_2000hz_db, 

CASE
            WHEN AUXR3KL IS NULL THEN NULL 
ELSE AUXR3KL 
 END as left_retest_threshold_3000hz_db, 

CASE
            WHEN AUXR4KL IS NULL THEN NULL 
ELSE AUXR4KL 
 END as left_retest_threshold_4000hz_db, 

CASE
            WHEN AUXR6KL IS NULL THEN NULL 
ELSE AUXR6KL 
 END as left_retest_threshold_6000hz_db, 

CASE
            WHEN AUXR8KL IS NULL THEN NULL 
ELSE AUXR8KL 
 END as left_retest_threshold_8000hz_db, 

CASE
            WHEN AUAREQC = 1 THEN 'Good - tympanogram is smooth and symmetrical' -- categorize numeric values
WHEN AUAREQC = 2 THEN 'Adequate - tympanogram is noisy but adequate for interpretation' -- categorize numeric values
WHEN AUAREQC = 3 THEN 'Poor - tympanogram cannot be interpreted' -- categorize numeric values
WHEN AUAREQC = 7 THEN 'SP Refused Tympanometry' -- categorize numeric values
WHEN AUAREQC = 8 THEN 'Could not obtain' -- categorize numeric values
WHEN AUAREQC = 9 THEN 'Equivocal - tympanogram cannot be evaluated without further information' -- categorize numeric values
WHEN AUAREQC IS NULL THEN NULL 
ELSE AUAREQC 
 END as right_ear_tympanogram_quality_code, 

CASE
            WHEN AUATYMTR = 'Type A' THEN 'Normal' -- categorize string values 
WHEN AUATYMTR = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' -- categorize string values 
WHEN AUATYMTR = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' -- categorize string values 
WHEN AUATYMTR = 'Type B' THEN 'Flat, no measurable ear drum mobility' -- categorize string values 
WHEN AUATYMTR = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' -- categorize string values 
WHEN AUATYMTR = '88888' THEN 'Could not obtain' -- categorize string values 
WHEN AUATYMTR = '99999' THEN 'Could not interpret' -- categorize string values 
WHEN AUATYMTR IS NULL THEN NULL 
ELSE AUATYMTR 
 END as tympanogram_type_right_ear, 

CASE
            WHEN AUALEQC = 1 THEN 'Good - tympanogram is smooth and symmetrical' -- categorize numeric values
WHEN AUALEQC = 2 THEN 'Adequate - tympanogram is noisy but adequate for interpretation' -- categorize numeric values
WHEN AUALEQC = 3 THEN 'Poor - tympanogram cannot be interpreted' -- categorize numeric values
WHEN AUALEQC = 7 THEN 'SP Refused Tympanometry' -- categorize numeric values
WHEN AUALEQC = 8 THEN 'Could not obtain' -- categorize numeric values
WHEN AUALEQC = 9 THEN 'Equivocal - tympanogram cannot be evaluated without further information' -- categorize numeric values
WHEN AUALEQC IS NULL THEN NULL 
ELSE AUALEQC 
 END as left_ear_tympanogram_quality_code, 

CASE
            WHEN AUATYMTL = 'Type A' THEN 'Normal' -- categorize string values 
WHEN AUATYMTL = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' -- categorize string values 
WHEN AUATYMTL = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' -- categorize string values 
WHEN AUATYMTL = 'Type B' THEN 'Flat, no measurable ear drum mobility' -- categorize string values 
WHEN AUATYMTL = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' -- categorize string values 
WHEN AUATYMTL = '88888' THEN 'Could not obtain' -- categorize string values 
WHEN AUATYMTL = '99999' THEN 'Could not interpret' -- categorize string values 
WHEN AUATYMTL IS NULL THEN NULL 
ELSE AUATYMTL 
 END as tympanogram_type_left_ear, 

 FROM {{ ref('stg_audiometry_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUX_J.htm
        