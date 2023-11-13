SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN PAQ605 = '1' THEN 'Yes' -- categorize string values 
WHEN PAQ605 = '2' THEN 'No' -- categorize string values 
WHEN PAQ605 = '7' THEN 'Refused' -- categorize string values 
WHEN PAQ605 = '9' THEN 'Dont know' -- categorize string values 
WHEN PAQ605 IS NULL THEN NULL 
ELSE PAQ605 
 END as vigorous_work_activity, 

CASE
            WHEN SAFE_CAST(PAQ610 AS FLOAT64) > 7.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAQ610 IS NULL THEN NULL 
ELSE PAQ610 
 END as number_of_days_vigorous_work, 

CASE
            WHEN SAFE_CAST(PAD615 AS FLOAT64) > 840.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD615 IS NULL THEN NULL 
ELSE PAD615 
 END as minutes_vigorous_intensity_work, 

CASE
            WHEN PAQ620 = '1' THEN 'Yes' -- categorize string values 
WHEN PAQ620 = '2' THEN 'No' -- categorize string values 
WHEN PAQ620 = '7' THEN 'Refused' -- categorize string values 
WHEN PAQ620 = '9' THEN 'Dont know' -- categorize string values 
WHEN PAQ620 IS NULL THEN NULL 
ELSE PAQ620 
 END as moderate_work_activity, 

CASE
            WHEN SAFE_CAST(PAQ625 AS FLOAT64) > 7.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAQ625 IS NULL THEN NULL 
ELSE PAQ625 
 END as number_of_days_moderate_work, 

CASE
            WHEN SAFE_CAST(PAD630 AS FLOAT64) > 840.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD630 IS NULL THEN NULL 
ELSE PAD630 
 END as minutes_moderate_intensity_work, 

CASE
            WHEN PAQ635 = '1' THEN 'Yes' -- categorize string values 
WHEN PAQ635 = '2' THEN 'No' -- categorize string values 
WHEN PAQ635 = '7' THEN 'Refused' -- categorize string values 
WHEN PAQ635 = '9' THEN 'Dont know' -- categorize string values 
WHEN PAQ635 IS NULL THEN NULL 
ELSE PAQ635 
 END as walk_or_bicycle, 

CASE
            WHEN SAFE_CAST(PAQ640 AS FLOAT64) > 7.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAQ640 IS NULL THEN NULL 
ELSE PAQ640 
 END as number_of_days_walk_or_bicycle, 

CASE
            WHEN SAFE_CAST(PAD645 AS FLOAT64) > 660.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD645 IS NULL THEN NULL 
ELSE PAD645 
 END as minutes_walk_bicycle_for_transportation, 

CASE
            WHEN PAQ650 = '1' THEN 'Yes' -- categorize string values 
WHEN PAQ650 = '2' THEN 'No' -- categorize string values 
WHEN PAQ650 = '7' THEN 'Refused' -- categorize string values 
WHEN PAQ650 = '9' THEN 'Dont know' -- categorize string values 
WHEN PAQ650 IS NULL THEN NULL 
ELSE PAQ650 
 END as vigorous_recreational_activities, 

CASE
            WHEN SAFE_CAST(PAQ655 AS FLOAT64) > 7.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAQ655 IS NULL THEN NULL 
ELSE PAQ655 
 END as days_vigorous_recreational_activities, 

CASE
            WHEN SAFE_CAST(PAD660 AS FLOAT64) > 480.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD660 IS NULL THEN NULL 
ELSE PAD660 
 END as minutes_vigorous_recreational_activities, 

CASE
            WHEN PAQ665 = '1' THEN 'Yes' -- categorize string values 
WHEN PAQ665 = '2' THEN 'No' -- categorize string values 
WHEN PAQ665 = '7' THEN 'Refused' -- categorize string values 
WHEN PAQ665 = '9' THEN 'Dont know' -- categorize string values 
WHEN PAQ665 IS NULL THEN NULL 
ELSE PAQ665 
 END as moderate_recreational_activities, 

CASE
            WHEN SAFE_CAST(PAQ670 AS FLOAT64) > 7.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAQ670 IS NULL THEN NULL 
ELSE PAQ670 
 END as days_moderate_recreational_activities, 

CASE
            WHEN SAFE_CAST(PAD675 AS FLOAT64) > 540.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD675 IS NULL THEN NULL 
ELSE PAD675 
 END as minutes_moderate_recreational_activities, 

CASE
            WHEN SAFE_CAST(PAD680 AS FLOAT64) > 1320.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN PAD680 IS NULL THEN NULL 
ELSE PAD680 
 END as minutes_sedentary_activity, 

 FROM {{ ref('stg_physical_activity_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PAQ_J.htm
        