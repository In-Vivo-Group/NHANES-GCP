SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PAXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PAXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSTS AS STRING) 
 END as physical_activity_monitor_data_status, 

CASE
    WHEN REPLACE(PAXSENID,'.0','') = 'PAM device ID' THEN 'Value was recorded' -- categorize string values 
WHEN PAXSENID IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSENID AS STRING) 
 END as pam_device_id, 

CASE
    WHEN REPLACE(PAXFDAY,'.0','') = '1' THEN 'Sunday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '2' THEN 'Monday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '3' THEN 'Tuesday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '4' THEN 'Wednesday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '5' THEN 'Thursday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '6' THEN 'Friday' -- categorize string values 
WHEN REPLACE(PAXFDAY,'.0','') = '7' THEN 'Saturday' -- categorize string values 
WHEN PAXFDAY IS NULL THEN NULL 
ELSE SAFE_CAST(PAXFDAY AS STRING) 
 END as day_of_the_week_measurement_started, 

CASE
    WHEN REPLACE(PAXLDAY,'.0','') = '1' THEN '1st day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '2' THEN '2nd day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '3' THEN '3rd day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '4' THEN '4th day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '5' THEN '5th day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '6' THEN '6th day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '7' THEN '7th day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '8' THEN '8th day of wear' -- categorize string values 
WHEN REPLACE(PAXLDAY,'.0','') = '9' THEN '9th day of wear' -- categorize string values 
WHEN PAXLDAY IS NULL THEN NULL 
ELSE SAFE_CAST(PAXLDAY AS STRING) 
 END as the_last_day_when_the_measurements_taken, 

CASE
    WHEN REPLACE(PAXFTIME,'.0','') = 'First data timestamp in GT3X (HH:MM:SS)' THEN 'Value was recorded' -- categorize string values 
WHEN PAXFTIME IS NULL THEN NULL 
ELSE SAFE_CAST(PAXFTIME AS STRING) 
 END as first_data_timestamp_in_gt3x_hh_mm_ss, 

CASE
    WHEN REPLACE(PAXETLDY,'.0','') = 'Timestamp at end of last day (HH:MM:SS)' THEN 'Value was recorded' -- categorize string values 
WHEN PAXETLDY IS NULL THEN NULL 
ELSE SAFE_CAST(PAXETLDY AS STRING) 
 END as timestamp_at_end_of_last_day_hh_mm_ss, 

CASE
    WHEN REPLACE(PAXHAND,'.0','') = '1' THEN 'Yes (non-dominant hand)' -- categorize string values 
WHEN REPLACE(PAXHAND,'.0','') = '2' THEN 'No (dominant hand)' -- categorize string values 
WHEN REPLACE(PAXHAND,'.0','') = '9' THEN 'Unknown' -- categorize string values 
WHEN PAXHAND IS NULL THEN NULL 
ELSE SAFE_CAST(PAXHAND AS STRING) 
 END as pam_worn_on_non_dominant_hand, 

CASE
    WHEN REPLACE(PAXORENT,'.0','') = '1' THEN 'Dorsal' -- categorize string values 
WHEN REPLACE(PAXORENT,'.0','') = '2' THEN 'Palmar' -- categorize string values 
WHEN PAXORENT IS NULL THEN NULL 
ELSE SAFE_CAST(PAXORENT AS STRING) 
 END as wrist_pam_orientation, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_physical_activity_monitor_header_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAXHD_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAXHD_G.htm
*/
