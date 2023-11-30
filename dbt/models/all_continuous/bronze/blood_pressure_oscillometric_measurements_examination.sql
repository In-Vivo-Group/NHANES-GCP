SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN REPLACE(BPAOARM,'.0','') = 'L' THEN 'Left' -- categorize string values 
WHEN REPLACE(BPAOARM,'.0','') = 'R' THEN 'Right' -- categorize string values 
WHEN BPAOARM IS NULL THEN NULL 
ELSE SAFE_CAST(BPAOARM AS STRING) 
 END as arm_selected_oscillometric, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BPAOCSZ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '17-21.9 (bladder size = 9.20 x 16.68 cm)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BPAOCSZ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '22-31.9 (bladder size = 12.49 x 23.52 cm)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BPAOCSZ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '32-41.9 (bladder size = 14.98 x 31.19 cm)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BPAOCSZ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '42-50 (bladder size = 17.98 x 37.89 cm)' -- categorize numeric values
WHEN BPAOCSZ IS NULL THEN NULL 
ELSE SAFE_CAST(BPAOCSZ AS STRING) 
 END as coded_cuff_size_oscillometric, 

CASE
    WHEN BPAOMNTS IS NULL THEN NULL 
ELSE SAFE_CAST(BPAOMNTS AS FLOAT64) 
 END as minutes_between_mercury_oscillometric, 

CASE
    WHEN BPXOSY1 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOSY1 AS FLOAT64) 
 END as systolic_1st_oscillometric_reading, 

CASE
    WHEN BPXODI1 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXODI1 AS FLOAT64) 
 END as diastolic_1st_oscillometric_reading, 

CASE
    WHEN BPXOSY2 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOSY2 AS FLOAT64) 
 END as systolic_2nd_oscillometric_reading, 

CASE
    WHEN BPXODI2 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXODI2 AS FLOAT64) 
 END as diastolic_2nd_oscillometric_reading, 

CASE
    WHEN BPXOSY3 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOSY3 AS FLOAT64) 
 END as systolic_3rd_oscillometric_reading, 

CASE
    WHEN BPXODI3 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXODI3 AS FLOAT64) 
 END as diastolic_3rd_oscillometric_reading, 

CASE
    WHEN BPXOPLS1 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOPLS1 AS FLOAT64) 
 END as pulse_1st_oscillometric_reading, 

CASE
    WHEN BPXOPLS2 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOPLS2 AS FLOAT64) 
 END as pulse_2nd_oscillometric_reading, 

CASE
    WHEN BPXOPLS3 IS NULL THEN NULL 
ELSE SAFE_CAST(BPXOPLS3 AS FLOAT64) 
 END as pulse_3rd_oscillometric_reading, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_blood_pressure_oscillometric_measurements_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BPXO_J.htm
*/
