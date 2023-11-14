SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '6' THEN 'Dont go out in the sun' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034A,'.0','') AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DEQ034A IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034A AS STRING) 
 END as stay_in_the_shade, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034C,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034C IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034C AS STRING) 
 END as wear_a_long_sleeved_shirt, 

CASE
            WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(REPLACE(DEQ034D,'.0','') AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034D IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034D AS STRING) 
 END as use_sunscreen, 

CASE
            WHEN SAFE_CAST(DED120 AS FLOAT64) > 482.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED120 IS NULL THEN NULL 
ELSE SAFE_CAST(DED120 AS FLOAT64) 
 END as minutes_outdoors_9am_5pm_work_day, 

CASE
            WHEN SAFE_CAST(DED125 AS FLOAT64) > 482.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED125 IS NULL THEN NULL 
ELSE SAFE_CAST(DED125 AS FLOAT64) 
 END as minutes_outdoors_9am_5pm_not_work_day, 

 FROM {{ ref('stg_dermatology_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DEQ.htm
        