SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(CDQ001 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CDQ001 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CDQ001 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ001 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ001 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ001 AS STRING) 
 END as sp_ever_had_pain_or_discomfort_in_chest, 

CASE
            WHEN SAFE_CAST(CDQ002 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CDQ002 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CDQ002 AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Never walks uphill or hurries' -- categorize numeric values
WHEN SAFE_CAST(CDQ002 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ002 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ002 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ002 AS STRING) 
 END as sp_get_it_walking_uphill_or_in_a_hurry, 

CASE
            WHEN SAFE_CAST(CDQ003 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CDQ003 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CDQ003 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ003 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ003 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ003 AS STRING) 
 END as during_an_ordinary_pace_on_level_ground, 

-- CDQ003A as CDQ003A, -- not included in table but included in docs without transformation logic 

CASE
            WHEN SAFE_CAST(CDQ004 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Stop or slow down' -- categorize numeric values
WHEN SAFE_CAST(CDQ004 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Continue at the same pace' -- categorize numeric values
WHEN SAFE_CAST(CDQ004 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ004 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ004 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ004 AS STRING) 
 END as if_so_does_sp_continue_or_slow_down, 

CASE
            WHEN SAFE_CAST(CDQ005 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Relieved' -- categorize numeric values
WHEN SAFE_CAST(CDQ005 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not Relieved' -- categorize numeric values
WHEN SAFE_CAST(CDQ005 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ005 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ005 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ005 AS STRING) 
 END as does_standing_relieve_pain_discomfort, 

CASE
            WHEN SAFE_CAST(CDQ006 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '10 minutes or less' -- categorize numeric values
WHEN SAFE_CAST(CDQ006 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'More than 10 minutes' -- categorize numeric values
WHEN SAFE_CAST(CDQ006 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ006 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ006 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ006 AS STRING) 
 END as how_soon_is_the_pain_relieved, 

CASE
            WHEN SAFE_CAST(CDQ009A AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Pain in right arm' -- categorize numeric values
WHEN SAFE_CAST(CDQ009A AS FLOAT64) = SAFE_CAST(77 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ009A AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ009A IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009A AS STRING) 
 END as pain_in_right_arm, 

CASE
            WHEN SAFE_CAST(CDQ009B AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Pain in right chest' -- categorize numeric values
WHEN CDQ009B IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009B AS STRING) 
 END as pain_in_right_chest, 

CASE
            WHEN SAFE_CAST(CDQ009C AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Pain in neck' -- categorize numeric values
WHEN CDQ009C IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009C AS STRING) 
 END as pain_in_neck, 

CASE
            WHEN SAFE_CAST(CDQ009D AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Pain in upper sternum' -- categorize numeric values
WHEN CDQ009D IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009D AS STRING) 
 END as pain_in_upper_sternum, 

CASE
            WHEN SAFE_CAST(CDQ009E AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Pain in lower sternum' -- categorize numeric values
WHEN CDQ009E IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009E AS STRING) 
 END as pain_in_lower_sternum, 

CASE
            WHEN SAFE_CAST(CDQ009F AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Pain in left chest' -- categorize numeric values
WHEN CDQ009F IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009F AS STRING) 
 END as pain_in_left_chest, 

CASE
            WHEN SAFE_CAST(CDQ009G AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Pain in left arm' -- categorize numeric values
WHEN CDQ009G IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009G AS STRING) 
 END as pain_in_left_arm, 

CASE
            WHEN SAFE_CAST(CDQ009H AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Pain in epigastric area' -- categorize numeric values
WHEN CDQ009H IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ009H AS STRING) 
 END as pain_in_epigastric_area, 

CASE
            WHEN SAFE_CAST(CDQ008 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CDQ008 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CDQ008 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ008 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ008 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ008 AS STRING) 
 END as severe_pain_in_chest_more_than_half_hour, 

CASE
            WHEN SAFE_CAST(CDQ010 AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(CDQ010 AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(CDQ010 AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(CDQ010 AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN CDQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(CDQ010 AS STRING) 
 END as shortness_of_breath_on_stairs_inclines, 

 FROM {{ ref('stg_cardiovascular_health_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CDQ_J.htm
        