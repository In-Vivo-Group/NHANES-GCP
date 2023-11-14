SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(AUAEXSTS AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(AUAEXSTS AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(AUAEXSTS AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Not done' -- categorize numeric values
WHEN AUAEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(AUAEXSTS AS STRING) 
 END as status_of_an_audio_exam, 

CASE
            WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'SP refusal' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'No time' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Physical limitation' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Communication problem' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Equipment failure' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'SP ill/emergency' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN 'Interrupted' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(51 AS FLOAT64) THEN 'SP unable to comply' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(56 AS FLOAT64) THEN 'Came late/left early' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(72 AS FLOAT64) THEN 'Error (technician/software/supply)' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Other, specify' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(122 AS FLOAT64) THEN 'Language barrier' -- categorize numeric values
WHEN SAFE_CAST(AUAEXCMT AS FLOAT64) = SAFE_CAST(150 AS FLOAT64) THEN 'SP with parent SP' -- categorize numeric values
WHEN AUAEXCMT IS NULL THEN NULL 
ELSE SAFE_CAST(AUAEXCMT AS STRING) 
 END as comment_code_for_an_audio_exam, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes, right ear' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '2' THEN 'Yes, left ear' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '3' THEN 'Yes, both ears' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '4' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ011,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ011 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ011 AS STRING) 
 END as have_ear_tube_right_or_left_ear, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ540,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ540,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ540,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ540,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ540 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ540 AS STRING) 
 END as had_cold_runny_nose_earache_today, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550 AS STRING) 
 END as had_cold_runny_nose_earache_yesterday, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550A,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550A,'.0','') AS INT64) AS STRING) = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550A,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550A IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550A AS STRING) 
 END as had_cold, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550B,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550B,'.0','') AS INT64) AS STRING) = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550B,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550B IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550B AS STRING) 
 END as had_runny_nose, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550C,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550C,'.0','') AS INT64) AS STRING) = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550C,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550C IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550C AS STRING) 
 END as earache_right_ear, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550D,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550D,'.0','') AS INT64) AS STRING) = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550D,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550D IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550D AS STRING) 
 END as earache_left_ear, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550E,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes (checkbox checked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550E,'.0','') AS INT64) AS STRING) = '2' THEN 'No (checkbox unchecked)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ550E,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ550E IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ550E AS STRING) 
 END as earache_both_ears, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ560,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ560,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ560,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ560,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ560 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ560 AS STRING) 
 END as listened_to_loud_sound_today, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ570,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ570,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ570,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ570,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ570 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ570 AS STRING) 
 END as listened_to_loud_sound_yesterday, 

CASE
            WHEN SAFE_CAST(AUQ580 AS FLOAT64) > 25.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ580 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ580 AS FLOAT64) 
 END as hours_since_loud_sound_ended, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ590,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ590,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ590,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ590,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ590 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ590 AS STRING) 
 END as listened_to_music_with_earphones_today, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ600,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ600,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ600,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ600,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ600 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ600 AS STRING) 
 END as listened_to_music_w_earphones_yesterday, 

CASE
            WHEN SAFE_CAST(AUQ610 AS FLOAT64) > 26.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ610 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ610 AS FLOAT64) 
 END as hours_since_stopped_listening, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ051,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes, right ear' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ051,'.0','') AS INT64) AS STRING) = '2' THEN 'Yes, left ear' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ051,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ051,'.0','') AS INT64) AS STRING) = '9' THEN 'No / dont know' -- categorize string values 
WHEN AUQ051 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ051 AS STRING) 
 END as self_reported_better_ear, 

CASE
            WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes, right ear' -- categorize numeric values
WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Yes, left ear' -- categorize numeric values
WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Yes, both ears' -- categorize numeric values
WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(AUQ010 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ010 AS STRING) 
 END as have_ear_tube_right_or_left_ear_AUQ010, 

CASE
            WHEN SAFE_CAST(AUQ020 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(AUQ020 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(AUQ020 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(AUQ020 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020 AS STRING) 
 END as had_cold_sinus_or_earache_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ020A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020A AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020A AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020A IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020A AS STRING) 
 END as had_cold_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ020B AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020B AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020B IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020B AS STRING) 
 END as had_sinus_problem_last_24_hours, 

CASE
            WHEN SAFE_CAST(AUQ020C AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020C AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020C AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020C IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020C AS STRING) 
 END as earache_last_24_hours_right, 

CASE
            WHEN SAFE_CAST(AUQ020D AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020D AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020D AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020D IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020D AS STRING) 
 END as earache_last_24_hours_left, 

CASE
            WHEN SAFE_CAST(AUQ020E AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020E AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN SAFE_CAST(AUQ020E AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ020E IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ020E AS STRING) 
 END as earache_last_24_hours_both, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ031,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ031,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ031,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ031,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ031 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ031 AS STRING) 
 END as exposed_to_loud_noise_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ041 AS FLOAT64) > 26.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ041 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ041 AS FLOAT64) 
 END as hours_since_noise_ended, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ520,'.0','') AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ520,'.0','') AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ520,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(AUQ520,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN AUQ520 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ520 AS STRING) 
 END as listened_to_music_w_earphone_last_24_hrs, 

CASE
            WHEN SAFE_CAST(AUQ530 AS FLOAT64) > 26.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN AUQ530 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ530 AS FLOAT64) 
 END as hours_since_music_ended, 

CASE
            WHEN SAFE_CAST(AUQ050 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes, right ear' -- categorize numeric values
WHEN SAFE_CAST(AUQ050 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Yes, left ear' -- categorize numeric values
WHEN SAFE_CAST(AUQ050 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(AUQ050 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'No / dont know' -- categorize numeric values
WHEN AUQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ050 AS STRING) 
 END as self_reported_better_ear_AUQ050, 

CASE
            WHEN SAFE_CAST(AUXOTSPL AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXOTSPL AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXOTSPL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXOTSPL AS STRING) 
 END as normal_otoscopy_left_ear, 

CASE
            WHEN SAFE_CAST(AUXLOEXC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXLOEXC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOEXC IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLOEXC AS STRING) 
 END as excessive_cerumen_left_ear, 

CASE
            WHEN SAFE_CAST(AUXLOIMC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXLOIMC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOIMC IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLOIMC AS STRING) 
 END as impacted_cerumen_left_ear, 

CASE
            WHEN SAFE_CAST(AUXLOCOL AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXLOCOL AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOCOL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLOCOL AS STRING) 
 END as collapsing_ear_canals_left_ear, 

CASE
            WHEN SAFE_CAST(AUXLOABN AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXLOABN AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXLOABN IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLOABN AS STRING) 
 END as other_exam_abnormality_left_ear, 

CASE
            WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Possible Perforated Eardrum' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Possible Infection' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'TM Scarring or Deformity' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Possible Ear Canal Abrasion' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Growth or Foreign Body in Ear Canal' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Deformity of Auricle' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(AUDLOABC AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Could not Visualize Eardrum' -- categorize numeric values
WHEN AUDLOABC IS NULL THEN NULL 
ELSE SAFE_CAST(AUDLOABC AS STRING) 
 END as comment_other_exam_abnormality_left_ear, 

CASE
            WHEN SAFE_CAST(AUXROTSP AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXROTSP AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROTSP IS NULL THEN NULL 
ELSE SAFE_CAST(AUXROTSP AS STRING) 
 END as normal_otoscopy_right_ear, 

CASE
            WHEN SAFE_CAST(AUXROEXC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXROEXC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROEXC IS NULL THEN NULL 
ELSE SAFE_CAST(AUXROEXC AS STRING) 
 END as excessive_cerumen_right_ear, 

CASE
            WHEN SAFE_CAST(AUXROIMC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXROIMC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROIMC IS NULL THEN NULL 
ELSE SAFE_CAST(AUXROIMC AS STRING) 
 END as impacted_cerumen_right_ear, 

CASE
            WHEN SAFE_CAST(AUXROCOL AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXROCOL AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROCOL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXROCOL AS STRING) 
 END as collapsing_ear_canals_right_ear, 

CASE
            WHEN SAFE_CAST(AUXROABN AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes (checkbox checked)' -- categorize numeric values
WHEN SAFE_CAST(AUXROABN AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No (checkbox unchecked)' -- categorize numeric values
WHEN AUXROABN IS NULL THEN NULL 
ELSE SAFE_CAST(AUXROABN AS STRING) 
 END as other_exam_abnormality_right_ear, 

CASE
            WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Possible Perforated Eardrum' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Possible Infection' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'TM Scarring or Deformity' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Possible Ear Canal Abrasion' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Growth or Foreign Body in Ear Canal' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Deformity of Auricle' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(AUDROABC AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Could not Visualize Eardrum' -- categorize numeric values
WHEN AUDROABC IS NULL THEN NULL 
ELSE SAFE_CAST(AUDROABC AS STRING) 
 END as comment_other_exam_abnormality_right_ear, 

CASE
            WHEN AUXTMEPR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTMEPR AS STRING) 
 END as middle_ear_pressure_tymp_rt_ear_in_dapa, 

CASE
            WHEN AUXTPVR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTPVR AS STRING) 
 END as physical_volume_tymp_right_ear_in_cc, 

CASE
            WHEN AUXTWIDR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTWIDR AS STRING) 
 END as tympanometric_width_right_ear, 

CASE
            WHEN AUXTCOMR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTCOMR AS STRING) 
 END as compliance_tympanometry_right_ear, 

CASE
            WHEN AUXTMEPL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTMEPL AS STRING) 
 END as middle_ear_pressure_tymp_left_in_dapa, 

CASE
            WHEN AUXTPVL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTPVL AS STRING) 
 END as physical_volume_tymp_left_ear_in_cc, 

CASE
            WHEN AUXTWIDL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTWIDL AS STRING) 
 END as tympanometric_width_left_ear, 

CASE
            WHEN AUXTCOML IS NULL THEN NULL 
ELSE SAFE_CAST(AUXTCOML AS STRING) 
 END as compliance_tympanometry_left_ear, 

CASE
            WHEN SAFE_CAST(AUAEAR AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Right' -- categorize numeric values
WHEN SAFE_CAST(AUAEAR AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Left' -- categorize numeric values
WHEN AUAEAR IS NULL THEN NULL 
ELSE SAFE_CAST(AUAEAR AS STRING) 
 END as which_ear_tested_first, 

CASE
            WHEN SAFE_CAST(AUAMODE AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Manual' -- categorize numeric values
WHEN SAFE_CAST(AUAMODE AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Automatic' -- categorize numeric values
WHEN SAFE_CAST(AUAMODE AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Mixed' -- categorize numeric values
WHEN AUAMODE IS NULL THEN NULL 
ELSE SAFE_CAST(AUAMODE AS STRING) 
 END as audio_test_mode_manual_automatic_mixed, 

CASE
            WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '500 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '1000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '2000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '3000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '4000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '6000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANL AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '8000 Hz' -- categorize numeric values
WHEN AUAFMANL IS NULL THEN NULL 
ELSE SAFE_CAST(AUAFMANL AS STRING) 
 END as frequency_switch_to_manual_mode_left, 

CASE
            WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '500 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '1000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '2000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '3000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '4000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '6000 Hz' -- categorize numeric values
WHEN SAFE_CAST(AUAFMANR AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '8000 Hz' -- categorize numeric values
WHEN AUAFMANR IS NULL THEN NULL 
ELSE SAFE_CAST(AUAFMANR AS STRING) 
 END as frequency_switch_to_manual_mode_right, 

CASE
            WHEN AUXU1K1R IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU1K1R AS STRING) 
 END as right_threshold_1000hz_db, 

CASE
            WHEN AUXU500R IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU500R AS STRING) 
 END as right_threshold_500hz_db, 

CASE
            WHEN AUXU1K2R IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU1K2R AS STRING) 
 END as right_threshold_1000hz_2nd_read_db, 

CASE
            WHEN AUXU2KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU2KR AS STRING) 
 END as right_threshold_2000hz_db, 

CASE
            WHEN AUXU3KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU3KR AS STRING) 
 END as right_threshold_3000hz_db, 

CASE
            WHEN AUXU4KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU4KR AS STRING) 
 END as right_threshold_4000hz_db, 

CASE
            WHEN AUXU6KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU6KR AS STRING) 
 END as right_threshold_6000hz_db, 

CASE
            WHEN AUXU8KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU8KR AS STRING) 
 END as right_threshold_8000hz_db, 

CASE
            WHEN AUXU1K1L IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU1K1L AS STRING) 
 END as left_threshold_1000hz_db, 

CASE
            WHEN AUXU500L IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU500L AS STRING) 
 END as left_threshold_500hz_db, 

CASE
            WHEN AUXU1K2L IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU1K2L AS STRING) 
 END as left_threshold_1000hz_2nd_read_db, 

CASE
            WHEN AUXU2KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU2KL AS STRING) 
 END as left_threshold_2000hz_db, 

CASE
            WHEN AUXU3KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU3KL AS STRING) 
 END as left_threshold_3000hz_db, 

CASE
            WHEN AUXU4KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU4KL AS STRING) 
 END as left_threshold_4000hz_db, 

CASE
            WHEN AUXU6KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU6KL AS STRING) 
 END as left_threshold_6000hz_db, 

CASE
            WHEN AUXU8KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXU8KL AS STRING) 
 END as left_threshold_8000hz_db, 

CASE
            WHEN AUXR1K1R IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR1K1R AS STRING) 
 END as right_retest_threshold_1000hz_db, 

CASE
            WHEN AUXR5CR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR5CR AS STRING) 
 END as right_retest_threshold_500hz_db, 

CASE
            WHEN AUXR1K2R IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR1K2R AS STRING) 
 END as right_retest_threshold_1000hz_2nd_read, 

CASE
            WHEN AUXR2KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR2KR AS STRING) 
 END as right_retest_threshold_2000hz_db, 

CASE
            WHEN AUXR3KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR3KR AS STRING) 
 END as right_retest_threshold_3000hz_db, 

CASE
            WHEN AUXR4KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR4KR AS STRING) 
 END as right_retest_threshold_4000hz_db, 

CASE
            WHEN AUXR6KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR6KR AS STRING) 
 END as right_retest_threshold_6000hz_db, 

CASE
            WHEN AUXR8KR IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR8KR AS STRING) 
 END as right_retest_threshold_8000hz_db, 

CASE
            WHEN AUXR1K1L IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR1K1L AS STRING) 
 END as left_retest_threshold_1000hz_db, 

CASE
            WHEN AUXR5CL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR5CL AS STRING) 
 END as left_retest_threshold_500hz_db, 

CASE
            WHEN AUXR1K2L IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR1K2L AS STRING) 
 END as left_retest_threshold_1000hz_2nd_read, 

CASE
            WHEN AUXR2KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR2KL AS STRING) 
 END as left_retest_threshold_2000hz_db, 

CASE
            WHEN AUXR3KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR3KL AS STRING) 
 END as left_retest_threshold_3000hz_db, 

CASE
            WHEN AUXR4KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR4KL AS STRING) 
 END as left_retest_threshold_4000hz_db, 

CASE
            WHEN AUXR6KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR6KL AS STRING) 
 END as left_retest_threshold_6000hz_db, 

CASE
            WHEN AUXR8KL IS NULL THEN NULL 
ELSE SAFE_CAST(AUXR8KL AS STRING) 
 END as left_retest_threshold_8000hz_db, 

CASE
            WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Good - tympanogram is smooth and symmetrical' -- categorize numeric values
WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Adequate - tympanogram is noisy but adequate for interpretation' -- categorize numeric values
WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Poor - tympanogram cannot be interpreted' -- categorize numeric values
WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'SP Refused Tympanometry' -- categorize numeric values
WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(AUAREQC AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Equivocal - tympanogram cannot be evaluated without further information' -- categorize numeric values
WHEN AUAREQC IS NULL THEN NULL 
ELSE SAFE_CAST(AUAREQC AS STRING) 
 END as right_ear_tympanogram_quality_code, 

CASE
            WHEN REPLACE(AUATYMTR,'.0','') = 'Type A' THEN 'Normal' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = 'Type B' THEN 'Flat, no measurable ear drum mobility' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = '88888' THEN 'Could not obtain' -- categorize string values 
WHEN REPLACE(AUATYMTR,'.0','') = '99999' THEN 'Could not interpret' -- categorize string values 
WHEN AUATYMTR IS NULL THEN NULL 
ELSE SAFE_CAST(AUATYMTR AS STRING) 
 END as tympanogram_type_right_ear, 

CASE
            WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Good - tympanogram is smooth and symmetrical' -- categorize numeric values
WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Adequate - tympanogram is noisy but adequate for interpretation' -- categorize numeric values
WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Poor - tympanogram cannot be interpreted' -- categorize numeric values
WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'SP Refused Tympanometry' -- categorize numeric values
WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(AUALEQC AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Equivocal - tympanogram cannot be evaluated without further information' -- categorize numeric values
WHEN AUALEQC IS NULL THEN NULL 
ELSE SAFE_CAST(AUALEQC AS STRING) 
 END as left_ear_tympanogram_quality_code, 

CASE
            WHEN REPLACE(AUATYMTL,'.0','') = 'Type A' THEN 'Normal' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = 'Type AS' THEN 'Normal, but the ear drum is unusually stiff' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = 'Type AD' THEN 'Normal, but the ear drum is unusually flaccid' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = 'Type B' THEN 'Flat, no measurable ear drum mobility' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = 'Type C' THEN 'Normal ear drum mobility, but negative middle ear pressure' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = '88888' THEN 'Could not obtain' -- categorize string values 
WHEN REPLACE(AUATYMTL,'.0','') = '99999' THEN 'Could not interpret' -- categorize string values 
WHEN AUATYMTL IS NULL THEN NULL 
ELSE SAFE_CAST(AUATYMTL AS STRING) 
 END as tympanogram_type_left_ear, 

 FROM {{ ref('stg_audiometry_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUX_J.htm
        