SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXIGE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIGE AS FLOAT64) 
 END as serum_total_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIGELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIGELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIGELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIGELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIGELC AS STRING) 
 END as serum_total_ige_antibody_comment_code, 

CASE
    WHEN LBXID2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXID2 AS FLOAT64) 
 END as d_farinae_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDID2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDID2LC AS STRING) 
 END as d_farinae_ige_antibody_comment_code, 

CASE
    WHEN LBXID1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXID1 AS FLOAT64) 
 END as d_pteronyssinus_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDID1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDID1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDID1LC AS STRING) 
 END as d_pteronyssin_ige_antibody_comment_code, 

CASE
    WHEN LBXIE1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIE1 AS FLOAT64) 
 END as cat_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIE1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIE1LC AS STRING) 
 END as cat_ige_antibody_comment_code, 

CASE
    WHEN LBXIE5 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIE5 AS FLOAT64) 
 END as dog_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIE5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIE5LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIE5LC AS STRING) 
 END as dog_ige_antibody_comment_code, 

CASE
    WHEN LBXII6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXII6 AS FLOAT64) 
 END as cockroach_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDII6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDII6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDII6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDII6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDII6LC AS STRING) 
 END as cockroach_ige_antibody_comment_code, 

CASE
    WHEN LBXIM6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIM6 AS FLOAT64) 
 END as alternaria_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIM6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIM6LC AS STRING) 
 END as alternaria_ige_comment_code, 

CASE
    WHEN LBXF13 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXF13 AS FLOAT64) 
 END as peanut_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF13LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF13LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF13LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDF13LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDF13LC AS STRING) 
 END as peanut_ige_antibody_comment_code, 

CASE
    WHEN LBXIF1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIF1 AS FLOAT64) 
 END as egg_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIF1LC AS STRING) 
 END as egg_ige_antibody_comment_code, 

CASE
    WHEN LBXIF2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIF2 AS FLOAT64) 
 END as milk_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIF2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIF2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIF2LC AS STRING) 
 END as milk_ige_antibody_comment_code, 

CASE
    WHEN LBXIW1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIW1 AS FLOAT64) 
 END as ragweed_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIW1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIW1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIW1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIW1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIW1LC AS STRING) 
 END as ragweed_ige_antibody_comment_code, 

CASE
    WHEN LBXIG5 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIG5 AS FLOAT64) 
 END as rye_grass_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIG5LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIG5LC AS STRING) 
 END as rye_grass_ige_antibody_comment_code, 

CASE
    WHEN LBXIG2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIG2 AS FLOAT64) 
 END as bermuda_grass_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIG2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIG2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIG2LC AS STRING) 
 END as bermuda_grass_ige_antibody_comment_code, 

CASE
    WHEN LBXIT7 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIT7 AS FLOAT64) 
 END as oak_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIT7LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIT7LC AS STRING) 
 END as oak_ige_antibody_comment_code, 

CASE
    WHEN LBXIT3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIT3 AS FLOAT64) 
 END as birch_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIT3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIT3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIT3LC AS STRING) 
 END as birch_ige_antibody_comment_code, 

CASE
    WHEN LBXF24 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXF24 AS FLOAT64) 
 END as shrimp_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF24LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF24LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDF24LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDF24LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDF24LC AS STRING) 
 END as shrimp_ige_antibody_comment_code, 

CASE
    WHEN LBXIM3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXIM3 AS FLOAT64) 
 END as aspergillus_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDIM3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDIM3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDIM3LC AS STRING) 
 END as aspergillus_ige_comment_code, 

CASE
    WHEN LBXW11 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXW11 AS FLOAT64) 
 END as thistle_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDW11LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDW11LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDW11LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDW11LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDW11LC AS STRING) 
 END as thistle_ige_antibody_comment_code, 

CASE
    WHEN LBXE72 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXE72 AS FLOAT64) 
 END as mouse_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE72LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE72LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE72LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDE72LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDE72LC AS STRING) 
 END as mouse_ige_comment_code, 

CASE
    WHEN LBXE74 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXE74 AS FLOAT64) 
 END as rat_ige_antibody_ku_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE74LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE74LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDE74LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Above upper detection limit' -- categorize numeric values
WHEN LBDE74LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDE74LC AS STRING) 
 END as rat_ige_antibody_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_allergen_specific_ige_s_total_ige_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/AL_IGE_D.htm
*/
