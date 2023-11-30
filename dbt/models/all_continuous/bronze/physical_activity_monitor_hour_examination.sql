SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN REPLACE(PAXDAYH,'.0','') = '1' THEN '1st day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '2' THEN '2nd day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '3' THEN '3rd day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '4' THEN '4th day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '5' THEN '5th day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '6' THEN '6th day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '7' THEN '7th day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '8' THEN '8th day of wear' -- categorize string values 
WHEN REPLACE(PAXDAYH,'.0','') = '9' THEN '9th day of wear' -- categorize string values 
WHEN PAXDAYH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXDAYH AS STRING) 
 END as day_of_pam_measurements_for_this_hour, 

CASE
    WHEN REPLACE(PAXDAYWH,'.0','') = '1' THEN 'Sunday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '2' THEN 'Monday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '3' THEN 'Tuesday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '4' THEN 'Wednesday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '5' THEN 'Thursday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '6' THEN 'Friday' -- categorize string values 
WHEN REPLACE(PAXDAYWH,'.0','') = '7' THEN 'Saturday' -- categorize string values 
WHEN PAXDAYWH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXDAYWH AS STRING) 
 END as day_of_the_week_for_this_hour, 

CASE
    WHEN PAXSSNHP IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSSNHP AS FLOAT64) 
 END as starting_sample_number_for_the_hour, 

CASE
    WHEN PAXTMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXTMH AS FLOAT64) 
 END as total_minutes_with_data_for_this_hour, 

CASE
    WHEN PAXAISMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXAISMH AS FLOAT64) 
 END as hour_count_80hz_data_in_idle_sleep_mode, 

CASE
    WHEN PAXVMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXVMH AS FLOAT64) 
 END as hour_count_mins_valid_data_no_qc_flag, 

CASE
    WHEN PAXMTSH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXMTSH AS FLOAT64) 
 END as hour_sum_mims_triaxial_value, 

CASE
    WHEN PAXWWMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXWWMH AS FLOAT64) 
 END as hour_sum_valid_wake_wear_minutes, 

CASE
    WHEN PAXSWMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSWMH AS FLOAT64) 
 END as hour_sum_valid_sleep_wear_minutes, 

CASE
    WHEN PAXNWMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXNWMH AS FLOAT64) 
 END as hour_sum_valid_non_wear_minutes, 

CASE
    WHEN PAXUMH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXUMH AS FLOAT64) 
 END as hour_sum_valid_unknown_minutes, 

CASE
    WHEN PAXLXSH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXLXSH AS FLOAT64) 
 END as hour_sum_lux_values_for_valid_minutes, 

CASE
    WHEN PAXQFH IS NULL THEN NULL 
ELSE SAFE_CAST(PAXQFH AS FLOAT64) 
 END as hour_sum_data_quality_flag_count, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_physical_activity_monitor_hour_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAXHR_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAXHR_G.htm
*/
