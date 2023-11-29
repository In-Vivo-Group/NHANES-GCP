SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Indeterminate' -- categorize numeric values
WHEN LBDHCV IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCV AS STRING) 
 END as hepatitis_c_antibody_confirmed, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXHCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCR AS STRING) 
 END as hepatitis_c_rna_hcv_rna, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Genotype 1a' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Genotype 1b' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXHCG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Genotype 1 other than 1a/1b/or with subtype not determined' -- categorize numeric values
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
 FROM {{ ref('stg_hepatitis_c_confirmed_antibody_rna_hcv_rna_genotype_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HEPC_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HEPC_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HEPC_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HEPC_D.htm
*/
