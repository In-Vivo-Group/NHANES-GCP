SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXPRVFX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXPRVFX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DXXPRVFX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPRVFX AS STRING) 
 END as self_reported_fracture_age_20, 

CASE
    WHEN DXXFRAX1 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXFRAX1 AS FLOAT64) 
 END as hip_frax_previous_fracture, 

CASE
    WHEN DXXFRAX2 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXFRAX2 AS FLOAT64) 
 END as major_frax_previous_fracture, 

CASE
    WHEN DXXFRAX3 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXFRAX3 AS FLOAT64) 
 END as hip_frax_no_previous_fracture, 

CASE
    WHEN DXXFRAX4 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXFRAX4 AS FLOAT64) 
 END as major_frax_no_previous_fracture, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_frax_score_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DXXFRX_H.htm
*/
