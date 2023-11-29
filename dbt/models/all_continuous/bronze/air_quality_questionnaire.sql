SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ685 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ685 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ685 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'SP never thought/not informed bad air quality' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ685 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ685 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN PAQ685 IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ685 AS STRING) 
 END as bad_air_quality_change_activities, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN 'Wore a mask' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont Know' -- categorize numeric values
WHEN PAQ690A IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690A AS STRING) 
 END as wore_a_mask, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN 'Spent less time outdoors' -- categorize numeric values
WHEN PAQ690B IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690B AS STRING) 
 END as spent_less_time_outdoors, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN 'Avoided roads that have heavy traffic' -- categorize numeric values
WHEN PAQ690C IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690C AS STRING) 
 END as avoided_roads_that_have_heavy_traffic, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN 'Did less strenuous activities' -- categorize numeric values
WHEN PAQ690D IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690D AS STRING) 
 END as did_less_strenuous_activities, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN 'Took medication' -- categorize numeric values
WHEN PAQ690E IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690E AS STRING) 
 END as took_medication, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN 'Closed windows of your house' -- categorize numeric values
WHEN PAQ690F IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690F AS STRING) 
 END as closed_windows_of_your_house, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN 'Drove my car less' -- categorize numeric values
WHEN PAQ690G IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690G AS STRING) 
 END as drove_my_car_less, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN 'Canceled outdoors activities' -- categorize numeric values
WHEN PAQ690H IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690H AS STRING) 
 END as canceled_outdoor_activities, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN 'Exercised indoors instead of outside' -- categorize numeric values
WHEN PAQ690I IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690I AS STRING) 
 END as exercised_indoors_instead_of_outdoors, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(19 AS FLOAT64),0) AS INT64) THEN 'Used buses, trains, or subways' -- categorize numeric values
WHEN PAQ690J IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690J AS STRING) 
 END as used_buses_trains_or_subways, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690K AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN 'Use or change air filter/air cleaner' -- categorize numeric values
WHEN PAQ690K IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690K AS STRING) 
 END as use_or_change_air_filter_air_cleaner, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ690O AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(71 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN PAQ690O IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ690O AS STRING) 
 END as other, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_air_quality_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/AQQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/AQQ_E.htm
*/
