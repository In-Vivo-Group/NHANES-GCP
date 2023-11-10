SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN AUAEXSTS = 1 THEN 'Complete' 
WHEN AUAEXSTS = 2 THEN 'Partial' 
WHEN AUAEXSTS = 3 THEN 'Not done' 
WHEN AUAEXSTS IS NULL THEN NULL 
ELSE NULL 
 END as status_of_an_audio_exam,
CASE
    WHEN AUAEXCMT = 2 THEN 'SP refusal' 
WHEN AUAEXCMT = 3 THEN 'No time' 
WHEN AUAEXCMT = 4 THEN 'Physical limitation' 
WHEN AUAEXCMT = 5 THEN 'Communication problem' 
WHEN AUAEXCMT = 6 THEN 'Equipment failure' 
WHEN AUAEXCMT = 7 THEN 'SP ill/emergency' 
WHEN AUAEXCMT = 14 THEN 'Interrupted' 
WHEN AUAEXCMT = 51 THEN 'SP unable to comply' 
WHEN AUAEXCMT = 56 THEN 'Came late/left early' 
WHEN AUAEXCMT = 72 THEN 'Error (technician/software/supply)' 
WHEN AUAEXCMT = 99 THEN 'Other, specify' 
WHEN AUAEXCMT = 122 THEN 'Language barrier' 
WHEN AUAEXCMT = 150 THEN 'SP with parent SP' 
WHEN AUAEXCMT IS NULL THEN NULL 
ELSE NULL 
 END as comment_code_for_an_audio_exam,
CASE
    WHEN AUQ011 = 1 THEN 'Yes, right ear' 
WHEN AUQ011 = 2 THEN 'Yes, left ear' 
WHEN AUQ011 = 3 THEN 'Yes, both ears' 
WHEN AUQ011 = 4 THEN 'No' 
WHEN AUQ011 = 7 THEN 'Refused' 
WHEN AUQ011 = 9 THEN 'Don't know' 
WHEN AUQ011 IS NULL THEN NULL 
ELSE NULL 
 END as have_ear_tube_right_or_left_ear,
CASE
    WHEN AUQ540 = 1 THEN 'Yes' 
WHEN AUQ540 = 2 THEN 'No' 
WHEN AUQ540 = 7 THEN 'Refused' 
WHEN AUQ540 = 9 THEN 'Don't know' 
WHEN AUQ540 IS NULL THEN NULL 
ELSE NULL 
 END as had_cold_runny_nose_earache_today,
CASE
    WHEN AUQ550 = 1 THEN 'Yes' 
WHEN AUQ550 = 2 THEN 'No' 
WHEN AUQ550 = 7 THEN 'Refused' 
WHEN AUQ550 = 9 THEN 'Don't know' 
WHEN AUQ550 IS NULL THEN NULL 
ELSE NULL 
 END as had_cold_runny_nose_earache_yesterday,
CASE
    WHEN AUQ550A = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ550A = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ550A = 9 THEN 'Don't know' 
WHEN AUQ550A IS NULL THEN NULL 
ELSE NULL 
 END as had_cold,
CASE
    WHEN AUQ550B = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ550B = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ550B = 9 THEN 'Don't know' 
WHEN AUQ550B IS NULL THEN NULL 
ELSE NULL 
 END as had_runny_nose,
CASE
    WHEN AUQ550C = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ550C = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ550C = 9 THEN 'Don't know' 
WHEN AUQ550C IS NULL THEN NULL 
ELSE NULL 
 END as earache_right_ear,
CASE
    WHEN AUQ550D = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ550D = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ550D = 9 THEN 'Don't know' 
WHEN AUQ550D IS NULL THEN NULL 
ELSE NULL 
 END as earache_left_ear,
CASE
    WHEN AUQ550E = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ550E = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ550E = 9 THEN 'Don't know' 
WHEN AUQ550E IS NULL THEN NULL 
ELSE NULL 
 END as earache_both_ears,
CASE
    WHEN AUQ560 = 1 THEN 'Yes' 
WHEN AUQ560 = 2 THEN 'No' 
WHEN AUQ560 = 7 THEN 'Refused' 
WHEN AUQ560 = 9 THEN 'Don't know' 
WHEN AUQ560 IS NULL THEN NULL 
ELSE NULL 
 END as listened_to_loud_sound_today,
CASE
    WHEN AUQ570 = 1 THEN 'Yes' 
WHEN AUQ570 = 2 THEN 'No' 
WHEN AUQ570 = 7 THEN 'Refused' 
WHEN AUQ570 = 9 THEN 'Don't know' 
WHEN AUQ570 IS NULL THEN NULL 
ELSE NULL 
 END as listened_to_loud_sound_yesterday,
CASE
    WHEN AUQ580 = 1 to 23 THEN 'Range of Values' 
WHEN AUQ580 = 77 THEN 'Refused' 
WHEN AUQ580 = 99 THEN 'Don't know' 
WHEN AUQ580 IS NULL THEN NULL 
ELSE NULL 
 END as hours_since_loud_sound_ended,
CASE
    WHEN AUQ590 = 1 THEN 'Yes' 
WHEN AUQ590 = 2 THEN 'No' 
WHEN AUQ590 = 7 THEN 'Refused' 
WHEN AUQ590 = 9 THEN 'Don't know' 
WHEN AUQ590 IS NULL THEN NULL 
ELSE NULL 
 END as listened_to_music_with_earphones_today,
CASE
    WHEN AUQ600 = 1 THEN 'Yes' 
WHEN AUQ600 = 2 THEN 'No' 
WHEN AUQ600 = 7 THEN 'Refused' 
WHEN AUQ600 = 9 THEN 'Don't know' 
WHEN AUQ600 IS NULL THEN NULL 
ELSE NULL 
 END as listened_to_music_w_earphones_yesterday,
CASE
    WHEN AUQ610 = 1 to 24 THEN 'Range of Values' 
WHEN AUQ610 = 77 THEN 'Refused' 
WHEN AUQ610 = 99 THEN 'Don't know' 
WHEN AUQ610 IS NULL THEN NULL 
ELSE NULL 
 END as hours_since_stopped_listening,
CASE
    WHEN AUQ051 = 1 THEN 'Yes, right ear' 
WHEN AUQ051 = 2 THEN 'Yes, left ear' 
WHEN AUQ051 = 7 THEN 'Refused' 
WHEN AUQ051 = 9 THEN 'No / don't know' 
WHEN AUQ051 IS NULL THEN NULL 
ELSE NULL 
 END as self_reported_better_ear,
CASE
    WHEN AUQ010 = 1 THEN 'Yes, right ear' 
WHEN AUQ010 = 2 THEN 'Yes, left ear' 
WHEN AUQ010 = 3 THEN 'Yes, both ears' 
WHEN AUQ010 = 4 THEN 'No' 
WHEN AUQ010 = 7 THEN 'Refused' 
WHEN AUQ010 = 9 THEN 'Don't know' 
WHEN AUQ010 IS NULL THEN NULL 
ELSE NULL 
 END as have_ear_tube_right_or_left_ear,
CASE
    WHEN AUQ020 = 1 THEN 'Yes' 
WHEN AUQ020 = 2 THEN 'No' 
WHEN AUQ020 = 7 THEN 'Refused' 
WHEN AUQ020 = 9 THEN 'Don't know' 
WHEN AUQ020 IS NULL THEN NULL 
ELSE NULL 
 END as had_cold_sinus_or_earache_last_24_hrs,
CASE
    WHEN AUQ020A = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ020A = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ020A = 9 THEN 'Don't know' 
WHEN AUQ020A IS NULL THEN NULL 
ELSE NULL 
 END as had_cold_last_24_hrs,
CASE
    WHEN AUQ020B = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ020B = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ020B = 9 THEN 'Don't know' 
WHEN AUQ020B IS NULL THEN NULL 
ELSE NULL 
 END as had_sinus_problem_last_24_hours,
CASE
    WHEN AUQ020C = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ020C = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ020C = 9 THEN 'Don't know' 
WHEN AUQ020C IS NULL THEN NULL 
ELSE NULL 
 END as earache_last_24_hours_right,
CASE
    WHEN AUQ020D = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ020D = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ020D = 9 THEN 'Don't know' 
WHEN AUQ020D IS NULL THEN NULL 
ELSE NULL 
 END as earache_last_24_hours_left,
CASE
    WHEN AUQ020E = 1 THEN 'Yes (checkbox checked)' 
WHEN AUQ020E = 2 THEN 'No (checkbox unchecked)' 
WHEN AUQ020E = 9 THEN 'Don't know' 
WHEN AUQ020E IS NULL THEN NULL 
ELSE NULL 
 END as earache_last_24_hours_both,
CASE
    WHEN AUQ031 = 1 THEN 'Yes' 
WHEN AUQ031 = 2 THEN 'No' 
WHEN AUQ031 = 7 THEN 'Refused' 
WHEN AUQ031 = 9 THEN 'Don't know' 
WHEN AUQ031 IS NULL THEN NULL 
ELSE NULL 
 END as exposed_to_loud_noise_last_24_hrs,
CASE
    WHEN AUQ041 = 1 to 24 THEN 'Range of Values' 
WHEN AUQ041 = 77 THEN 'SP refused' 
WHEN AUQ041 = 99 THEN 'Don't know' 
WHEN AUQ041 IS NULL THEN NULL 
ELSE NULL 
 END as hours_since_noise_ended,
CASE
    WHEN AUQ520 = 1 THEN 'Yes' 
WHEN AUQ520 = 2 THEN 'No' 
WHEN AUQ520 = 7 THEN 'Refused' 
WHEN AUQ520 = 9 THEN 'Don't know' 
WHEN AUQ520 IS NULL THEN NULL 
ELSE NULL 
 END as listened_to_music_w_earphone_last_24_hrs,
CASE
    WHEN AUQ530 = 1 to 24 THEN 'Range of Values' 
WHEN AUQ530 = 77 THEN 'Refused' 
WHEN AUQ530 = 99 THEN 'Don't know' 
WHEN AUQ530 IS NULL THEN NULL 
ELSE NULL 
 END as hours_since_music_ended,
CASE
    WHEN AUQ050 = 1 THEN 'Yes, right ear' 
WHEN AUQ050 = 2 THEN 'Yes, left ear' 
WHEN AUQ050 = 7 THEN 'Refused' 
WHEN AUQ050 = 9 THEN 'No / don't know' 
WHEN AUQ050 IS NULL THEN NULL 
ELSE NULL 
 END as self_reported_better_ear,
CASE
    WHEN AUXOTSPL = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXOTSPL = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXOTSPL IS NULL THEN NULL 
ELSE NULL 
 END as normal_otoscopy_left_ear,
CASE
    WHEN AUXLOEXC = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXLOEXC = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXLOEXC IS NULL THEN NULL 
ELSE NULL 
 END as excessive_cerumen_left_ear,
CASE
    WHEN AUXLOIMC = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXLOIMC = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXLOIMC IS NULL THEN NULL 
ELSE NULL 
 END as impacted_cerumen_left_ear,
CASE
    WHEN AUXLOCOL = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXLOCOL = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXLOCOL IS NULL THEN NULL 
ELSE NULL 
 END as collapsing_ear_canals_left_ear,
CASE
    WHEN AUXLOABN = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXLOABN = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXLOABN IS NULL THEN NULL 
ELSE NULL 
 END as other_exam_abnormality_left_ear,
CASE
    WHEN AUDLOABC = 1 THEN 'Possible Perforated Eardrum' 
WHEN AUDLOABC = 3 THEN 'Possible Infection' 
WHEN AUDLOABC = 4 THEN 'TM Scarring or Deformity' 
WHEN AUDLOABC = 5 THEN 'Possible Ear Canal Abrasion' 
WHEN AUDLOABC = 6 THEN 'Growth or Foreign Body in Ear Canal' 
WHEN AUDLOABC = 7 THEN 'Deformity of Auricle' 
WHEN AUDLOABC = 8 THEN 'Other' 
WHEN AUDLOABC = 9 THEN 'Could not Visualize Eardrum' 
WHEN AUDLOABC IS NULL THEN NULL 
ELSE NULL 
 END as comment_other_exam_abnormality_left_ear,
CASE
    WHEN AUXROTSP = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXROTSP = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXROTSP IS NULL THEN NULL 
ELSE NULL 
 END as normal_otoscopy_right_ear,
CASE
    WHEN AUXROEXC = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXROEXC = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXROEXC IS NULL THEN NULL 
ELSE NULL 
 END as excessive_cerumen_right_ear,
CASE
    WHEN AUXROIMC = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXROIMC = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXROIMC IS NULL THEN NULL 
ELSE NULL 
 END as impacted_cerumen_right_ear,
CASE
    WHEN AUXROCOL = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXROCOL = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXROCOL IS NULL THEN NULL 
ELSE NULL 
 END as collapsing_ear_canals_right_ear,
CASE
    WHEN AUXROABN = 1 THEN 'Yes (checkbox checked)' 
WHEN AUXROABN = 2 THEN 'No (checkbox unchecked)' 
WHEN AUXROABN IS NULL THEN NULL 
ELSE NULL 
 END as other_exam_abnormality_right_ear,
CASE
    WHEN AUDROABC = 1 THEN 'Possible Perforated Eardrum' 
WHEN AUDROABC = 3 THEN 'Possible Infection' 
WHEN AUDROABC = 4 THEN 'TM Scarring or Deformity' 
WHEN AUDROABC = 5 THEN 'Possible Ear Canal Abrasion' 
WHEN AUDROABC = 6 THEN 'Growth or Foreign Body in Ear Canal' 
WHEN AUDROABC = 7 THEN 'Deformity of Auricle' 
WHEN AUDROABC = 8 THEN 'Other' 
WHEN AUDROABC = 9 THEN 'Could not Visualize Eardrum' 
WHEN AUDROABC IS NULL THEN NULL 
ELSE NULL 
 END as comment_other_exam_abnormality_right_ear,
CASE
    WHEN AUXTMEPR = -299 to 199 THEN 'Range of Values' 
WHEN AUXTMEPR IS NULL THEN NULL 
ELSE NULL 
 END as middle_ear_pressure_tymp_rt_ear_in_dapa,
CASE
    WHEN AUXTPVR = 0.214 to 6.478 THEN 'Range of Values' 
WHEN AUXTPVR IS NULL THEN NULL 
ELSE NULL 
 END as physical_volume_tymp_right_ear_in_cc,
CASE
    WHEN AUXTWIDR = 1 to 444 THEN 'Range of Values' 
WHEN AUXTWIDR IS NULL THEN NULL 
ELSE NULL 
 END as tympanometric_width_right_ear,
CASE
    WHEN AUXTCOMR = 0.15 to 6.233 THEN 'Range of Values' 
WHEN AUXTCOMR IS NULL THEN NULL 
ELSE NULL 
 END as compliance_tympanometry_right_ear,
CASE
    WHEN AUXTMEPL = -299 to 173 THEN 'Range of Values' 
WHEN AUXTMEPL IS NULL THEN NULL 
ELSE NULL 
 END as middle_ear_pressure_tymp_left_in_dapa,
CASE
    WHEN AUXTPVL = 0.09 to 5.234 THEN 'Range of Values' 
WHEN AUXTPVL IS NULL THEN NULL 
ELSE NULL 
 END as physical_volume_tymp_left_ear_in_cc,
CASE
    WHEN AUXTWIDL = 17 to 435 THEN 'Range of Values' 
WHEN AUXTWIDL IS NULL THEN NULL 
ELSE NULL 
 END as tympanometric_width_left_ear,
CASE
    WHEN AUXTCOML = 0.15 to 5.793 THEN 'Range of Values' 
WHEN AUXTCOML IS NULL THEN NULL 
ELSE NULL 
 END as compliance_tympanometry_left_ear,
CASE
    WHEN AUAEAR = 1 THEN 'Right' 
WHEN AUAEAR = 2 THEN 'Left' 
WHEN AUAEAR IS NULL THEN NULL 
ELSE NULL 
 END as which_ear_tested_first,
CASE
    WHEN AUAMODE = 1 THEN 'Manual' 
WHEN AUAMODE = 2 THEN 'Automatic' 
WHEN AUAMODE = 3 THEN 'Mixed' 
WHEN AUAMODE IS NULL THEN NULL 
ELSE NULL 
 END as audio_test_mode_manual_automatic_mixed,
CASE
    WHEN AUAFMANL = 1 THEN 'None' 
WHEN AUAFMANL = 2 THEN '500 Hz' 
WHEN AUAFMANL = 3 THEN '1000 Hz' 
WHEN AUAFMANL = 4 THEN '2000 Hz' 
WHEN AUAFMANL = 5 THEN '3000 Hz' 
WHEN AUAFMANL = 6 THEN '4000 Hz' 
WHEN AUAFMANL = 7 THEN '6000 Hz' 
WHEN AUAFMANL = 8 THEN '8000 Hz' 
WHEN AUAFMANL IS NULL THEN NULL 
ELSE NULL 
 END as frequency_switch_to_manual_mode_left,
CASE
    WHEN AUAFMANR = 1 THEN 'None' 
WHEN AUAFMANR = 2 THEN '500 Hz' 
WHEN AUAFMANR = 3 THEN '1000 Hz' 
WHEN AUAFMANR = 4 THEN '2000 Hz' 
WHEN AUAFMANR = 5 THEN '3000 Hz' 
WHEN AUAFMANR = 6 THEN '4000 Hz' 
WHEN AUAFMANR = 7 THEN '6000 Hz' 
WHEN AUAFMANR = 8 THEN '8000 Hz' 
WHEN AUAFMANR IS NULL THEN NULL 
ELSE NULL 
 END as frequency_switch_to_manual_mode_right,
CASE
    WHEN AUXU1K1R = -10 to 105 THEN 'Range of Values' 
WHEN AUXU1K1R = 666 THEN 'No response' 
WHEN AUXU1K1R = 888 THEN 'Could not obtain' 
WHEN AUXU1K1R IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_1000hz_db,
CASE
    WHEN AUXU500R = -10 to 105 THEN 'Range of Values' 
WHEN AUXU500R = 666 THEN 'No response' 
WHEN AUXU500R = 888 THEN 'Could not obtain' 
WHEN AUXU500R IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_500hz_db,
CASE
    WHEN AUXU1K2R = -10 to 105 THEN 'Range of Values' 
WHEN AUXU1K2R = 666 THEN 'No response' 
WHEN AUXU1K2R = 888 THEN 'Could not obtain' 
WHEN AUXU1K2R IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_1000hz_2nd_read_db,
CASE
    WHEN AUXU2KR = -10 to 110 THEN 'Range of Values' 
WHEN AUXU2KR = 666 THEN 'No response' 
WHEN AUXU2KR = 888 THEN 'Could not obtain' 
WHEN AUXU2KR IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_2000hz_db,
CASE
    WHEN AUXU3KR = -10 to 105 THEN 'Range of Values' 
WHEN AUXU3KR = 666 THEN 'No response' 
WHEN AUXU3KR = 888 THEN 'Could not obtain' 
WHEN AUXU3KR IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_3000hz_db,
CASE
    WHEN AUXU4KR = -10 to 110 THEN 'Range of Values' 
WHEN AUXU4KR = 666 THEN 'No response' 
WHEN AUXU4KR = 888 THEN 'Could not obtain' 
WHEN AUXU4KR IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_4000hz_db,
CASE
    WHEN AUXU6KR = -10 to 100 THEN 'Range of Values' 
WHEN AUXU6KR = 666 THEN 'No response' 
WHEN AUXU6KR = 888 THEN 'Could not obtain' 
WHEN AUXU6KR IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_6000hz_db,
CASE
    WHEN AUXU8KR = -10 to 95 THEN 'Range of Values' 
WHEN AUXU8KR = 666 THEN 'No response' 
WHEN AUXU8KR = 888 THEN 'Could not obtain' 
WHEN AUXU8KR IS NULL THEN NULL 
ELSE NULL 
 END as right_threshold_8000hz_db,
CASE
    WHEN AUXU1K1L = -10 to 100 THEN 'Range of Values' 
WHEN AUXU1K1L = 666 THEN 'No response' 
WHEN AUXU1K1L = 888 THEN 'Could not obtain' 
WHEN AUXU1K1L IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_1000hz_db,
CASE
    WHEN AUXU500L = -10 to 105 THEN 'Range of Values' 
WHEN AUXU500L = 666 THEN 'No response' 
WHEN AUXU500L = 888 THEN 'Could not obtain' 
WHEN AUXU500L IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_500hz_db,
CASE
    WHEN AUXU1K2L = -10 to 100 THEN 'Range of Values' 
WHEN AUXU1K2L = 666 THEN 'No response' 
WHEN AUXU1K2L = 888 THEN 'Could not obtain' 
WHEN AUXU1K2L IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_1000hz_2nd_read_db,
CASE
    WHEN AUXU2KL = -10 to 105 THEN 'Range of Values' 
WHEN AUXU2KL = 666 THEN 'No response' 
WHEN AUXU2KL = 888 THEN 'Could not obtain' 
WHEN AUXU2KL IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_2000hz_db,
CASE
    WHEN AUXU3KL = -10 to 110 THEN 'Range of Values' 
WHEN AUXU3KL = 666 THEN 'No response' 
WHEN AUXU3KL = 888 THEN 'Could not obtain' 
WHEN AUXU3KL IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_3000hz_db,
CASE
    WHEN AUXU4KL = -10 to 110 THEN 'Range of Values' 
WHEN AUXU4KL = 666 THEN 'No response' 
WHEN AUXU4KL = 888 THEN 'Could not obtain' 
WHEN AUXU4KL IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_4000hz_db,
CASE
    WHEN AUXU6KL = -10 to 105 THEN 'Range of Values' 
WHEN AUXU6KL = 666 THEN 'No response' 
WHEN AUXU6KL = 888 THEN 'Could not obtain' 
WHEN AUXU6KL IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_6000hz_db,
CASE
    WHEN AUXU8KL = -10 to 95 THEN 'Range of Values' 
WHEN AUXU8KL = 666 THEN 'No response' 
WHEN AUXU8KL = 888 THEN 'Could not obtain' 
WHEN AUXU8KL IS NULL THEN NULL 
ELSE NULL 
 END as left_threshold_8000hz_db,
CASE
    WHEN AUXR1K1R = 10 to 100 THEN 'Range of Values' 
WHEN AUXR1K1R = 666 THEN 'No response' 
WHEN AUXR1K1R = 888 THEN 'Could not obtain' 
WHEN AUXR1K1R IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_1000hz_db,
CASE
    WHEN AUXR5CR = 5 to 105 THEN 'Range of Values' 
WHEN AUXR5CR = 666 THEN 'No response' 
WHEN AUXR5CR = 888 THEN 'Could not obtain' 
WHEN AUXR5CR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_500hz_db,
CASE
    WHEN AUXR1K2R = 30 to 90 THEN 'Range of Values' 
WHEN AUXR1K2R = 666 THEN 'No response' 
WHEN AUXR1K2R = 888 THEN 'Could not obtain' 
WHEN AUXR1K2R IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_1000hz_2nd_read,
CASE
    WHEN AUXR2KR = 25 to 100 THEN 'Range of Values' 
WHEN AUXR2KR = 666 THEN 'No response' 
WHEN AUXR2KR = 888 THEN 'Could not obtain' 
WHEN AUXR2KR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_2000hz_db,
CASE
    WHEN AUXR3KR = 45 to 90 THEN 'Range of Values' 
WHEN AUXR3KR = 666 THEN 'No response' 
WHEN AUXR3KR = 888 THEN 'Could not obtain' 
WHEN AUXR3KR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_3000hz_db,
CASE
    WHEN AUXR4KR = 45 to 100 THEN 'Range of Values' 
WHEN AUXR4KR = 666 THEN 'No response' 
WHEN AUXR4KR = 888 THEN 'Could not obtain' 
WHEN AUXR4KR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_4000hz_db,
CASE
    WHEN AUXR6KR = 50 to 90 THEN 'Range of Values' 
WHEN AUXR6KR = 666 THEN 'No response' 
WHEN AUXR6KR = 888 THEN 'Could not obtain' 
WHEN AUXR6KR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_6000hz_db,
CASE
    WHEN AUXR8KR = 45 to 80 THEN 'Range of Values' 
WHEN AUXR8KR = 666 THEN 'No response' 
WHEN AUXR8KR = 888 THEN 'Could not obtain' 
WHEN AUXR8KR IS NULL THEN NULL 
ELSE NULL 
 END as right_retest_threshold_8000hz_db,
CASE
    WHEN AUXR1K1L = 30 to 95 THEN 'Range of Values' 
WHEN AUXR1K1L = 666 THEN 'No response' 
WHEN AUXR1K1L = 888 THEN 'Could not obtain' 
WHEN AUXR1K1L IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_1000hz_db,
CASE
    WHEN AUXR5CL = 25 to 105 THEN 'Range of Values' 
WHEN AUXR5CL = 666 THEN 'No response' 
WHEN AUXR5CL = 888 THEN 'Could not obtain' 
WHEN AUXR5CL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_500hz_db,
CASE
    WHEN AUXR1K2L = 30 to 75 THEN 'Range of Values' 
WHEN AUXR1K2L = 666 THEN 'No response' 
WHEN AUXR1K2L = 888 THEN 'Could not obtain' 
WHEN AUXR1K2L IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_1000hz_2nd_read,
CASE
    WHEN AUXR2KL = 35 to 95 THEN 'Range of Values' 
WHEN AUXR2KL = 666 THEN 'No response' 
WHEN AUXR2KL = 888 THEN 'Could not obtain' 
WHEN AUXR2KL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_2000hz_db,
CASE
    WHEN AUXR3KL = 50 to 105 THEN 'Range of Values' 
WHEN AUXR3KL = 666 THEN 'No response' 
WHEN AUXR3KL = 888 THEN 'Could not obtain' 
WHEN AUXR3KL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_3000hz_db,
CASE
    WHEN AUXR4KL = 45 to 100 THEN 'Range of Values' 
WHEN AUXR4KL = 666 THEN 'No response' 
WHEN AUXR4KL = 888 THEN 'Could not obtain' 
WHEN AUXR4KL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_4000hz_db,
CASE
    WHEN AUXR6KL = 40 to 95 THEN 'Range of Values' 
WHEN AUXR6KL = 666 THEN 'No response' 
WHEN AUXR6KL = 888 THEN 'Could not obtain' 
WHEN AUXR6KL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_6000hz_db,
CASE
    WHEN AUXR8KL = 45 to 80 THEN 'Range of Values' 
WHEN AUXR8KL = 666 THEN 'No response' 
WHEN AUXR8KL = 888 THEN 'Could not obtain' 
WHEN AUXR8KL IS NULL THEN NULL 
ELSE NULL 
 END as left_retest_threshold_8000hz_db,
CASE
    WHEN AUAREQC = 1 THEN 'Good - tympanogram is smooth and symmetrical' 
WHEN AUAREQC = 2 THEN 'Adequate - tympanogram is 'noisy' but adequate for interpretation' 
WHEN AUAREQC = 3 THEN 'Poor - tympanogram cannot be interpreted' 
WHEN AUAREQC = 7 THEN 'SP Refused Tympanometry' 
WHEN AUAREQC = 8 THEN 'Could not obtain' 
WHEN AUAREQC = 9 THEN 'Equivocal - tympanogram cannot be evaluated without further information' 
WHEN AUAREQC IS NULL THEN NULL 
ELSE NULL 
 END as right_ear_tympanogram_quality_code,
CASE
    WHEN AUATYMTR = 'Type A' THEN 'Normal' 
WHEN AUATYMTR = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' 
WHEN AUATYMTR = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' 
WHEN AUATYMTR = 'Type B' THEN 'Flat, no measurable ear drum mobility' 
WHEN AUATYMTR = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' 
WHEN AUATYMTR = '88888' THEN 'Could not obtain' 
WHEN AUATYMTR = '99999' THEN 'Could not interpret' 
WHEN AUATYMTR IS NULL THEN NULL 
ELSE NULL 
 END as tympanogram_type_right_ear,
CASE
    WHEN AUALEQC = 1 THEN 'Good - tympanogram is smooth and symmetrical' 
WHEN AUALEQC = 2 THEN 'Adequate - tympanogram is 'noisy' but adequate for interpretation' 
WHEN AUALEQC = 3 THEN 'Poor - tympanogram cannot be interpreted' 
WHEN AUALEQC = 7 THEN 'SP Refused Tympanometry' 
WHEN AUALEQC = 8 THEN 'Could not obtain' 
WHEN AUALEQC = 9 THEN 'Equivocal - tympanogram cannot be evaluated without further information' 
WHEN AUALEQC IS NULL THEN NULL 
ELSE NULL 
 END as left_ear_tympanogram_quality_code,
CASE
    WHEN AUATYMTL = 'Type A' THEN 'Normal' 
WHEN AUATYMTL = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' 
WHEN AUATYMTL = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' 
WHEN AUATYMTL = 'Type B' THEN 'Flat, no measurable ear drum mobility' 
WHEN AUATYMTL = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' 
WHEN AUATYMTL = '88888' THEN 'Could not obtain' 
WHEN AUATYMTL = '99999' THEN 'Could not interpret' 
WHEN AUATYMTL IS NULL THEN NULL 
ELSE NULL 
 END as tympanogram_type_left_ear,
 FROM { ref('stg_audiometry_examination') }