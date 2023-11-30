SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN REPLACE(LBXBVPH,'.0','') = 'PH of Bacterial Vaginosis Specimen' THEN 'Value was recorded' -- categorize string values 
WHEN LBXBVPH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBVPH AS STRING) 
 END as ph_of_bacterial_vaginosis_specimen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Uninterpretable' -- categorize numeric values
WHEN LBXTV IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTV AS STRING) 
 END as trichomonas_vaginalis, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Lack of lactobacillis/abnormal epithelial cells' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Lack of lactobacillis/abnormal epithelial cells and abnormal bacteria' -- categorize numeric values
WHEN LBXBV IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBV AS STRING) 
 END as bacterial_vaginosis, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_bacterial_vaginosis_bv_trichomonas_vaginalis_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L34_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L34_B.htm
*/
