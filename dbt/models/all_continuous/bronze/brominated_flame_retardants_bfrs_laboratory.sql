SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_b, 

CASE
    WHEN LBXBB1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBB1 AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hexabromobiphenyl, 

CASE
    WHEN LBXBB1LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBB1LA AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hexbrombiphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBB1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBB1LC AS STRING) 
 END as lab_2_2_4_4_5_5_hexabromobiphenyl_comment, 

CASE
    WHEN LBXBR1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR1 AS FLOAT64) 
 END as lab_2_2_4_tribromodiphenyl_ether, 

CASE
    WHEN LBXBR1LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR1LA AS FLOAT64) 
 END as lab_2_2_4_tribromodiphenyl_ether_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR1LC AS STRING) 
 END as lab_2_2_4_tribromodiphenyl_ether_comment, 

CASE
    WHEN LBXBR2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR2 AS FLOAT64) 
 END as lab_2_4_4_tribromodiphenyl_ether, 

CASE
    WHEN LBXBR2LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR2LA AS FLOAT64) 
 END as lab_2_4_4_tribromodiphenyl_ether_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR2LC AS STRING) 
 END as lab_2_4_4_tribromodiphenyl_ether_comment, 

CASE
    WHEN LBXBR3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR3 AS FLOAT64) 
 END as lab_2_2_4_4_tetrabromodiphenyl_ether, 

CASE
    WHEN LBXBR3LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR3LA AS FLOAT64) 
 END as lab_2_2_4_4_tetrabromphenyl_ether_lipid_ad, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR3LC AS STRING) 
 END as lab_2_2_4_4_tetrabromphenyl_ether_comment, 

CASE
    WHEN LBXBR4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR4 AS FLOAT64) 
 END as lab_2_2_3_4_4_pentabromodiphenyl_ether, 

CASE
    WHEN LBXBR4LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR4LA AS FLOAT64) 
 END as lab_2_2_3_4_4_pentabromphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR4LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR4LC AS STRING) 
 END as lab_2_2_3_4_4_pentabromphenyl_ether_comt, 

CASE
    WHEN LBXBR5 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR5 AS FLOAT64) 
 END as lab_2_2_4_4_5_pentabromodiphenyl_ether, 

CASE
    WHEN LBXBR5LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR5LA AS FLOAT64) 
 END as lab_2_2_4_4_5_pentabromphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR5LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR5LC AS STRING) 
 END as lab_2_2_4_4_5_pentabromphenyl_ether_comt, 

CASE
    WHEN LBXBR6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR6 AS FLOAT64) 
 END as lab_2_2_4_4_6_pentabromodiphenyl_ether, 

CASE
    WHEN LBXBR6LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR6LA AS FLOAT64) 
 END as lab_2_2_4_4_6_pentabromdphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR6LC AS STRING) 
 END as lab_2_2_4_4_6_pentabromdphenyl_ether_comt, 

CASE
    WHEN LBXBR7 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR7 AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hexabromodiphenyl_ether, 

CASE
    WHEN LBXBR7LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR7LA AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hexabromphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR7LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR7LC AS STRING) 
 END as lab_2_2_4_4_5_5_hexabromphenyl_ether_comt, 

CASE
    WHEN LBXBR8 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR8 AS FLOAT64) 
 END as lab_2_2_4_4_5_6_hexabromodiphenyl_ether, 

CASE
    WHEN LBXBR8LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR8LA AS FLOAT64) 
 END as lab_2_2_4_4_5_6_hexabromphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR8LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR8LC AS STRING) 
 END as lab_2_2_4_4_5_6_hexabromphenyl_ether_comt, 

CASE
    WHEN LBXBR9 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR9 AS FLOAT64) 
 END as lab_2_2_3_4_4_5_6_heptabromodiphenyl_ethr, 

CASE
    WHEN LBXBR9LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR9LA AS FLOAT64) 
 END as lab_2_2_3_4_4_5_6_heptabrophenl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR9LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR9LC AS STRING) 
 END as lab_2_2_3_4_4_5_6_heptabrophenl_ether_cmt, 

CASE
    WHEN LBXBR66 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR66 AS FLOAT64) 
 END as lab_2_3_4_4_tetrabromodiphenyl_ether, 

CASE
    WHEN LBXBR66L IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBR66L AS FLOAT64) 
 END as lab_2_3_4_4_tetrabromodiphenyl_lipid_adj, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR66C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR66C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR66C IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR66C AS STRING) 
 END as lab_2_3_4_4_tetrabromodiphenyl_ether_comt, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_brominated_flame_retardants_bfrs_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L28PBE_C.htm
*/
