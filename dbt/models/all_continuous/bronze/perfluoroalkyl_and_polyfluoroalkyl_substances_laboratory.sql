SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as subsample_b_weights, 

CASE
WHEN LBXPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFDE AS FLOAT64) 
 END as perfluorodecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFDEL AS STRING) 
 END as perfluorodecanoic_acid_comment_code, 

CASE
WHEN LBXPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFHS AS STRING) 
 END as perfluorohexane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_comt_code, 

CASE
WHEN LBXMPAH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMPAH AS STRING) 
 END as lab_2_n_methyl_pfosa_acetic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMPAHL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMPAHL AS STRING) 
 END as lab_2_n_methyl_pfosa_acetic_acid_comt_code, 

CASE
WHEN LBXPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFNA AS STRING) 
 END as perfluorononanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFNAL AS STRING) 
 END as perfluorononanoic_acid_comment_code, 

CASE
WHEN LBXPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPFUA AS STRING) 
 END as perfluoroundecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_comment_code, 

CASE
WHEN LBXNFOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNFOA AS STRING) 
 END as n_perfluorooctanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNFOAL AS STRING) 
 END as n_perfluorooctanoic_acid_comment_code, 

CASE
WHEN LBXBFOA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBFOA AS STRING) 
 END as br_perfluorooctanoic_acid_iso_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBFOAL AS STRING) 
 END as br_perfluorooctanoic_acid_iso_comt_code, 

CASE
WHEN LBXNFOS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNFOS AS STRING) 
 END as n_perfluorooctane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDNFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNFOSL AS STRING) 
 END as n_perfluorooctane_sulfonic_comt_code, 

CASE
WHEN LBXMFOS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMFOS AS STRING) 
 END as sm_pfos_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMFOSL AS STRING) 
 END as sm_pfos_comment_code, 

CASE
WHEN WTSSBH2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSSBH2Y AS STRING) 
 END as surplus_specimen_b_13_14_2_year_weights, 

CASE
WHEN SSCLPF IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLPF AS STRING) 
 END as lab_9_chlorohexadecafluoro3oxanonane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLPFL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCLPFL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCLPFL IS NULL THEN NULL 
ELSE SAFE_CAST(SSCLPFL AS STRING) 
 END as lab_9_chlorohexadecafluoro_ng_ml_comt_code, 

CASE
WHEN SSDONA IS NULL THEN NULL 
ELSE SAFE_CAST(SSDONA AS STRING) 
 END as adona_8dioxa3hperfluorononanoate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDONAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSDONAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDONAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSDONAL AS STRING) 
 END as adona_perfluorononanoate_comt_code, 

CASE
WHEN SSGENX IS NULL THEN NULL 
ELSE SAFE_CAST(SSGENX AS STRING) 
 END as genx_hfpo_da_propanoateammonium_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGENXL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSGENXL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSGENXL IS NULL THEN NULL 
ELSE SAFE_CAST(SSGENXL AS STRING) 
 END as genx_hfpo_da_propanoateammonium_cmt_code, 

CASE
WHEN SSPFBA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBA AS STRING) 
 END as perflurobutanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFBAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBAL AS STRING) 
 END as perflurobutanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSFPEA IS NULL THEN NULL 
ELSE SAFE_CAST(SSFPEA AS STRING) 
 END as perfluoropentanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFPEAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFPEAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSFPEAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSFPEAL AS STRING) 
 END as perfluoropentanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSPFHA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHA AS STRING) 
 END as perfluorohexanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHAL AS STRING) 
 END as perfluorohexanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSPFHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHP AS STRING) 
 END as perfluoroheptanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHPL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHPL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHPL AS STRING) 
 END as perfluoroheptanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSNFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFOA AS STRING) 
 END as linear_perfluorooctanoate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSNFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFOAL AS STRING) 
 END as linear_perfluorooctanoate_comt_code, 

CASE
WHEN SSBFOA IS NULL THEN NULL 
ELSE SAFE_CAST(SSBFOA AS STRING) 
 END as branch_isomers_perfluorooctanoate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSBFOAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSBFOAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSBFOAL AS STRING) 
 END as br_isomers_perfluorooctanoate_comt_code, 

CASE
WHEN SSPFNA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFNA AS STRING) 
 END as perfluorononanoic_acid_ng_ml_SSPFNA, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFNAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFNAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFNAL AS STRING) 
 END as perfluorononanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSPFDE IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDE AS STRING) 
 END as pefluorodecanoic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFDEL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFDEL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFDEL AS STRING) 
 END as pefluorodecanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSPFUA IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFUA AS STRING) 
 END as perfluoroundecanoic_acid_ng_ml_SSPFUA, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFUAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFUAL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFUAL AS STRING) 
 END as perfluoroundecanoic_acid_ng_ml_comt_code, 

CASE
WHEN SSPFBS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBS AS STRING) 
 END as perfluorobutane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFBSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFBSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFBSL AS STRING) 
 END as perfluorobutane_sulfonic_acid_comt_code, 

CASE
WHEN SSPFHS IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHS AS STRING) 
 END as perfluorohexane_sulfonic_acid_ng_ml_SSPFHS, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSPFHSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSPFHSL AS STRING) 
 END as perfluorohexane_sulfonic_acid_comt_code_SSPFHSL, 

CASE
WHEN SSFHPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHPS AS STRING) 
 END as perfluoroheptane_sulfonic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHPSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSFHPSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSFHPSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSFHPSL AS STRING) 
 END as perfluoroheptane_sulfonic_acid_comt_code, 

CASE
WHEN SSNFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFOS AS STRING) 
 END as linear_perfluorooctane_sulfonate_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSNFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSNFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFOSL AS STRING) 
 END as lin_perfluorooctane_sulfonate_comt_code, 

CASE
WHEN SSMFOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMFOS AS STRING) 
 END as monomethyl_branch_isomers_pfos_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SSMFOSL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSMFOSL IS NULL THEN NULL 
ELSE SAFE_CAST(SSMFOSL AS STRING) 
 END as monomethyl_branched_isomers_pfos_cmt_cd, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PFAS_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SSPFSU_H.htm
*/
