SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ001 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ001 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ001 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ001 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ001 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ001 AS STRING) 
 END as sp_ever_had_pain_or_discomfort_in_chest, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ002 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ002 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ002 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Never walks uphill or hurries' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ002 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ002 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ002 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ002 AS STRING) 
 END as sp_get_it_walking_uphill_or_in_a_hurry, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ003 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ003 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ003 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ003 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ003 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ003 AS STRING) 
 END as during_an_ordinary_pace_on_level_ground, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ004 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Stop or slow down' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ004 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Continue at the same pace' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ004 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ004 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ004 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ004 AS STRING) 
 END as if_so_does_sp_continue_or_slow_down, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ005 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Relieved' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ005 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Not Relieved' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ005 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ005 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ005 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ005 AS STRING) 
 END as does_standing_relieve_pain_discomfort, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ006 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '10 minutes or less' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ006 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'More than 10 minutes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ006 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ006 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ006 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ006 AS STRING) 
 END as how_soon_is_the_pain_relieved, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Pain in right arm' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ009A IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009A AS STRING) 
 END as pain_in_right_arm, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Pain in right chest' -- categorize numeric values
WHEN CDQ009B IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009B AS STRING) 
 END as pain_in_right_chest, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Pain in neck' -- categorize numeric values
WHEN CDQ009C IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009C AS STRING) 
 END as pain_in_neck, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Pain in upper sternum' -- categorize numeric values
WHEN CDQ009D IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009D AS STRING) 
 END as pain_in_upper_sternum, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Pain in lower sternum' -- categorize numeric values
WHEN CDQ009E IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009E AS STRING) 
 END as pain_in_lower_sternum, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Pain in left chest' -- categorize numeric values
WHEN CDQ009F IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009F AS STRING) 
 END as pain_in_left_chest, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Pain in left arm' -- categorize numeric values
WHEN CDQ009G IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009G AS STRING) 
 END as pain_in_left_arm, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ009H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Pain in epigastric area' -- categorize numeric values
WHEN CDQ009H IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009H AS STRING) 
 END as pain_in_epigastric_area, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ008 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ008 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ008 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ008 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ008 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ008 AS STRING) 
 END as severe_pain_in_chest_more_than_half_hour, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ010 AS STRING) 
 END as shortness_of_breath_on_stairs_inclines, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ020 AS STRING) 
 END as short_of_breath_walking_on_level_surface, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ030 AS STRING) 
 END as stop_for_breath_walking_at_own_pace, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ040 AS STRING) 
 END as stop_for_breath_walking_100_yards, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ050 AS STRING) 
 END as awakened_by_trouble_breathing, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ060 AS STRING) 
 END as breathing_trouble_relieved_by_sitting_up, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ070 AS STRING) 
 END as sleep_on_2_pillows_to_help_breathe, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ080 AS STRING) 
 END as had_swelling_of_feet_or_ankles, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CDQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ090 AS STRING) 
 END as swelling_during_day_or_overnight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cardiovascular_health_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CDQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_CDQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/CDQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CDQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CDQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/CDQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/CDQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/CDQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/CDQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/CDQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/CDQ.htm
*/