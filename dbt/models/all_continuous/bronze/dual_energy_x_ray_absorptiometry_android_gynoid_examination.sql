SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Trunk scan completed, trunk scan is valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Trunk scan completed, but trunk scan is invalid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not scanned, pregnancy' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not scanned, weight > 300 lbs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Not scanned, other reason' -- categorize numeric values
WHEN DXATRST IS NULL THEN NULL 
ELSE SAFE_CAST(DXATRST AS STRING) 
 END as trunk_a_g_region_scan_status, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Objects not removed' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Non-removable objects such as implants' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Hip arm overlap' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXATRTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN DXATRTV IS NULL THEN NULL 
ELSE SAFE_CAST(DXATRTV AS STRING) 
 END as trunk_tissue_invalidity_code, 

CASE
WHEN DXXANFM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANFM AS FLOAT64) 
 END as android_fat_mass, 

CASE
WHEN DXXANLM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANLM AS FLOAT64) 
 END as android_lean_mass, 

CASE
WHEN DXXANTOM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANTOM AS FLOAT64) 
 END as android_total_mass, 

CASE
WHEN DXXGYFM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXGYFM AS FLOAT64) 
 END as gynoid_fat_mass, 

CASE
WHEN DXXGYLM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXGYLM AS FLOAT64) 
 END as gynoid_lean_mass, 

CASE
WHEN DXXGYTOM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXGYTOM AS FLOAT64) 
 END as gynoid_total_mass, 

CASE
WHEN DXXAGRAT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAGRAT AS FLOAT64) 
 END as android_to_gynoid_ratio, 

CASE
WHEN DXXAPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAPFAT AS FLOAT64) 
 END as android_percent_fat, 

CASE
WHEN DXXGPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXGPFAT AS FLOAT64) 
 END as gynoid_percent_fat, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_android_gynoid_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DXXAG_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DXXAG_C.htm
*/
