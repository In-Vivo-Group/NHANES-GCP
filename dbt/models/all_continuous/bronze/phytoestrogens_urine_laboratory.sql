SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as environmental_a_2_year_weights, 

CASE
    WHEN URXDAZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXDAZ AS FLOAT64) 
 END as daidzein_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDAZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDAZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDDAZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDAZLC AS STRING) 
 END as daidzein_comment_code, 

CASE
    WHEN URXDMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXDMA AS FLOAT64) 
 END as o_desmethylangolensin_o_dma_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDDMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDMALC AS STRING) 
 END as o_dma_comment_code, 

CASE
    WHEN URXEQU IS NULL THEN NULL 
ELSE SAFE_CAST(URXEQU AS FLOAT64) 
 END as equol_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEQULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEQULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDEQULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDEQULC AS STRING) 
 END as equol_comment_code, 

CASE
    WHEN URXETD IS NULL THEN NULL 
ELSE SAFE_CAST(URXETD AS FLOAT64) 
 END as enterodiol_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDETDLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDETDLC AS STRING) 
 END as enterodiol_comment_code, 

CASE
    WHEN URXETL IS NULL THEN NULL 
ELSE SAFE_CAST(URXETL AS FLOAT64) 
 END as enterolactone_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETLLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDETLLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDETLLC AS STRING) 
 END as enterolactone_comment_code, 

CASE
    WHEN URXGNS IS NULL THEN NULL 
ELSE SAFE_CAST(URXGNS AS FLOAT64) 
 END as genistein_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGNSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit;' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGNSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below the lower detection limit;' -- categorize numeric values
WHEN URDGNSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDGNSLC AS STRING) 
 END as genistein_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as environmental_b_2_year_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_phytoestrogens_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PHYTO_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PHYTO_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PHYTO_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L06PHY_C.htm
*/
