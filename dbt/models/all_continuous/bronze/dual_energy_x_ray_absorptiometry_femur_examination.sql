SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXAFMRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Femur scan completed, all data are valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXAFMRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Femur scan completed, but all data are invalid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXAFMRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Femur not scanned, pregnant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXAFMRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Femur not scanned, weight > 450 lbs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXAFMRST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Femur not scanned, other reason' -- categorize numeric values
WHEN DXAFMRST IS NULL THEN NULL 
ELSE SAFE_CAST(DXAFMRST AS STRING) 
 END as femur_scan_status, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Body parts out of scan region' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Positioning problem' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXFMBCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (includes panniculus, participant motion, unknown artifact)' -- categorize numeric values
WHEN DXXFMBCC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXFMBCC AS STRING) 
 END as total_femur_bmd_invalidity_code, 

CASE
WHEN DXXOFBMD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXOFBMD AS FLOAT64) 
 END as total_femur_bmd, 

CASE
WHEN DXXOFBMC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXOFBMC AS FLOAT64) 
 END as total_femur_bmc, 

CASE
WHEN DXXOFA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXOFA AS FLOAT64) 
 END as total_femur_area, 

CASE
WHEN DXXNKBMD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXNKBMD AS FLOAT64) 
 END as femoral_neck_bmd, 

CASE
WHEN DXXNKBMC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXNKBMC AS FLOAT64) 
 END as femoral_neck_bmc, 

CASE
WHEN DXXNKA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXNKA AS FLOAT64) 
 END as femoral_neck_area, 

CASE
WHEN DXXTRBMD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTRBMD AS FLOAT64) 
 END as trochanter_bmd, 

CASE
WHEN DXXTRBMC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTRBMC AS FLOAT64) 
 END as trochanter_bmc, 

CASE
WHEN DXXTRA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXTRA AS FLOAT64) 
 END as trochanter_area, 

CASE
WHEN DXXINBMD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXINBMD AS FLOAT64) 
 END as intertrochanter_bmd, 

CASE
WHEN DXXINBMC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXINBMC AS FLOAT64) 
 END as intertrochanter_bmc, 

CASE
WHEN DXXINA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXINA AS FLOAT64) 
 END as intertrochanter_area, 

CASE
WHEN DXXWDBMD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXWDBMD AS FLOAT64) 
 END as wards_triangle_bmd, 

CASE
WHEN DXXWDBMC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXWDBMC AS FLOAT64) 
 END as wards_triangle_bmc, 

CASE
WHEN DXXWDA IS NULL THEN NULL 
ELSE SAFE_CAST(DXXWDA AS FLOAT64) 
 END as wards_triangle_area, 

CASE
WHEN DXAFMRK IS NULL THEN NULL 
ELSE SAFE_CAST(DXAFMRK AS FLOAT64) 
 END as calculated_k_for_femur, 

CASE
WHEN DXAFMRD0 IS NULL THEN NULL 
ELSE SAFE_CAST(DXAFMRD0 AS FLOAT64) 
 END as calculated_do_for_femur, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_femur_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DXXFEM_H.htm
*/
