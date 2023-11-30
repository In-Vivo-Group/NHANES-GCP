SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Negative Screening HCV Antibody' -- categorize numeric values
WHEN LBXHCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCR AS STRING) 
 END as hepatitis_c_rna, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Genotype 1a' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Genotype 1b' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Gen1 other than a/b/not determined' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Genotype 2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Genotype 3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Genotype 4' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Genotype 5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Genotype 6' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Genotype undetermined' -- categorize numeric values
WHEN LBXHCG IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCG AS STRING) 
 END as hepatitis_c_genotype, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_hepatitis_c_rna_hcv_rna_and_hepatitis_c_genotype_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HEPC_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HEPC_H.htm
*/
