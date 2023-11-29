SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as two_year_c_subsample_weights, 

CASE
WHEN URXMU1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU1 AS FLOAT64) 
 END as lab_1_methyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU1LC AS STRING) 
 END as lab_1_methyluric_acid_comment_code, 

CASE
WHEN URXMU2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU2 AS FLOAT64) 
 END as lab_3_methyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU2LC AS STRING) 
 END as lab_3_methyluric_acid_comment_code, 

CASE
WHEN URXMU3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU3 AS FLOAT64) 
 END as lab_7_methyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU3LC AS STRING) 
 END as lab_7_methyluric_acid_comment_code, 

CASE
WHEN URXMU4 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU4 AS FLOAT64) 
 END as lab_1_3_dimethyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU4LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU4LC AS STRING) 
 END as lab_1_3_dimethyluric_acid_comment_code, 

CASE
WHEN URXMU5 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU5 AS FLOAT64) 
 END as lab_1_7_dimethyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU5LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU5LC AS STRING) 
 END as lab_1_7_dimethyluric_acid_comment_code, 

CASE
WHEN URXMU6 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU6 AS FLOAT64) 
 END as lab_3_7_dimethyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU6LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU6LC AS STRING) 
 END as lab_3_7_dimethyluric_acid_comment_code, 

CASE
WHEN URXMU7 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMU7 AS FLOAT64) 
 END as lab_1_3_7_trimethyluric_acid_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMU7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMU7LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMU7LC AS STRING) 
 END as lab_1_3_7_trimethyluric_acid_comment_code, 

CASE
WHEN URXMX1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX1 AS FLOAT64) 
 END as lab_1_methylxanthine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX1LC AS STRING) 
 END as lab_1_methylxanthine_comment_code, 

CASE
WHEN URXMX2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX2 AS FLOAT64) 
 END as lab_3_methylxanthine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX2LC AS STRING) 
 END as lab_3_methylxanthine_comment_code, 

CASE
WHEN URXMX3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX3 AS FLOAT64) 
 END as lab_7_methylxanthine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX3LC AS STRING) 
 END as lab_7_methylxanthine_comment_code, 

CASE
WHEN URXMX4 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX4 AS FLOAT64) 
 END as lab_1_3_dimethylxanthine_theophylline_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX4LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX4LC AS STRING) 
 END as lab_1_3_dimethylxanthine_comment_code, 

CASE
WHEN URXMX5 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX5 AS FLOAT64) 
 END as lab_1_7_dimethylxanthine_paraxanthine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX5LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX5LC AS STRING) 
 END as lab_1_7_dimethylxanthine_comment_code, 

CASE
WHEN URXMX6 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX6 AS FLOAT64) 
 END as lab_3_7_dimethylxanthine_theobromine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX6LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX6LC AS STRING) 
 END as lab_3_7_dimethylxanthine_comment_code, 

CASE
WHEN URXMX7 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMX7 AS FLOAT64) 
 END as lab_1_3_7_trimethylxanthine_caffeine_umol_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMX7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMX7LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMX7LC AS STRING) 
 END as lab_1_3_7_trimethylxanthine_comment_code, 

CASE
WHEN URXAMU IS NULL THEN NULL 
ELSE SAFE_CAST(URXAMU AS FLOAT64) 
 END as lab_5_actylamino_6_amno_3_methyluracil_um_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAMULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAMULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAMULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAMULC AS STRING) 
 END as lab_5_actylamno_6_amno_3_methylucl_cmnt_code, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_caffeine_caffeine_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CAFE_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/CAFE_F.htm
*/
