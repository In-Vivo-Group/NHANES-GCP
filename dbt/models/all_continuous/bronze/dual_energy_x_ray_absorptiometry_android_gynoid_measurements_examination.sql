SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Whole body scan completed; android/gynoid region is valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Whole body scan completed, but android or gynoid region is invalid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Whole body not scanned, pregnancy' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Whole body not scanned, weight > 450 lbs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Whole body not scanned, height > 65â' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAGST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Whole body not scanned, other reason' -- categorize numeric values
WHEN DXXAGST IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAGST AS STRING) 
 END as android_gynoid_region_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXVATV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXVATV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Invalid' -- categorize numeric values
WHEN DXXVATV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXVATV AS STRING) 
 END as vat_and_sat_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXANTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXANTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Invalid' -- categorize numeric values
WHEN DXXANTV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANTV AS STRING) 
 END as android_region_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXGYTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXGYTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Invalid' -- categorize numeric values
WHEN DXXGYTV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXGYTV AS STRING) 
 END as gynoid_region_invalidity_code, 

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

CASE
    WHEN DXXSATA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSATA AS FLOAT64) 
 END as subcutaneous_fat_area, 

CASE
    WHEN DXXSATM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSATM AS FLOAT64) 
 END as subcutaneous_fat_mass, 

CASE
    WHEN DXXSATV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSATV AS FLOAT64) 
 END as subcutaneous_fat_volume, 

CASE
    WHEN DXXTATA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTATA AS FLOAT64) 
 END as total_abdominal_fat_area, 

CASE
    WHEN DXXTATM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTATM AS FLOAT64) 
 END as total_abdominal_fat_mass, 

CASE
    WHEN DXXTATV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTATV AS FLOAT64) 
 END as total_abdominal_fat_volume, 

CASE
    WHEN DXXVFATA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXVFATA AS FLOAT64) 
 END as visceral_adipose_tissue_area, 

CASE
    WHEN DXXVFATM IS NULL THEN NULL 
ELSE SAFE_CAST(DXXVFATM AS FLOAT64) 
 END as visceral_adipose_tissue_mass, 

CASE
    WHEN DXXVFATV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXVFATV AS FLOAT64) 
 END as visceral_adipose_tissue_volume, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_android_gynoid_measurements_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DXXAG_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DXXAG_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DXXAG_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DXXAG_G.htm
*/
