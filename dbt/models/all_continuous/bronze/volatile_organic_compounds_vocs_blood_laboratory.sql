SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_weight, 

CASE
WHEN LBX2DF IS NULL THEN NULL 
ELSE SAFE_CAST(LBX2DF AS FLOAT64) 
 END as blood_2_5_dimethylfuran_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD2DFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD2DFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD2DFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD2DFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD2DFLC AS STRING) 
 END as blood_2_5_dimethylfuran_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBX4CE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.0283 AS FLOAT64),0) AS INT64) THEN '0.0283' -- categorize numeric values
WHEN LBX4CE IS NULL THEN NULL 
ELSE SAFE_CAST(LBX4CE AS STRING) 
 END as blood_1_1_1_2_tetrachloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4CELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4CELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBD4CELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBD4CELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBD4CELC AS STRING) 
 END as blood_1_1_1_2_tetrachloroethane_cmt_code, 

CASE
WHEN LBXV06 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV06 AS FLOAT64) 
 END as blood_hexane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV06LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV06LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV06LC AS STRING) 
 END as blood_hexane_comment_code, 

CASE
WHEN LBXV1A IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV1A AS FLOAT64) 
 END as blood_1_1_dichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV1ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV1ALC AS STRING) 
 END as blood_1_1_dichloroethane_comment_code, 

CASE
WHEN LBXV1D IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV1D AS FLOAT64) 
 END as blood_1_2_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV1DLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV1DLC AS STRING) 
 END as blood_1_2_dichlorobenzene_comment_code, 

CASE
WHEN LBXV1E IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV1E AS FLOAT64) 
 END as blood_1_1_dichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV1ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV1ELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV1ELC AS STRING) 
 END as blood_1_1_dichloroethene_comment_code, 

CASE
WHEN LBXV2A IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2A AS FLOAT64) 
 END as blood_1_2_dichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV2ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2ALC AS STRING) 
 END as blood_1_2_dichloroethane_comment_code, 

CASE
WHEN LBXV2C IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2C AS FLOAT64) 
 END as blood_cis_1_2_dichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV2CLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2CLC AS STRING) 
 END as blood_cis_1_2_dichloroethene_comt_code, 

CASE
WHEN LBXV2E IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2E AS FLOAT64) 
 END as blood_1_1_2_trichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV2ELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2ELC AS STRING) 
 END as blood_1_1_2_trichloroethene_comt_code, 

CASE
WHEN LBXV2T IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2T AS FLOAT64) 
 END as blood_trans_1_2_dichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV2TLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2TLC AS STRING) 
 END as blood_trans_1_2_dichloroethene_comt_code, 

CASE
WHEN LBXV3B IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV3B AS FLOAT64) 
 END as blood_1_3_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3BLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3BLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3BLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV3BLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV3BLC AS STRING) 
 END as blood_1_3_dichlorobenzene_comment_code, 

CASE
WHEN LBXV4C IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV4C AS FLOAT64) 
 END as blood_tetrachloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV4CLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV4CLC AS STRING) 
 END as blood_tetrachloroethene_comment_code, 

CASE
WHEN LBXV4E IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV4E AS FLOAT64) 
 END as blood_1_1_2_2_tetrachloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4ELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV4ELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV4ELC AS STRING) 
 END as blood_1_1_2_2_tetrachloroethane_cmt_code, 

CASE
WHEN LBXVBZ IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBZ AS FLOAT64) 
 END as blood_benzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBZLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBZLC AS STRING) 
 END as blood_benzene_comment_code, 

CASE
WHEN LBXVCB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCB AS FLOAT64) 
 END as blood_chlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCBLC AS STRING) 
 END as blood_chlorobenzene_comment_code, 

CASE
WHEN LBXVCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCT AS FLOAT64) 
 END as blood_carbon_tetrachloride_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCTLC AS STRING) 
 END as blood_carbon_tetrachloride_comment_code, 

CASE
WHEN LBXVDB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDB AS FLOAT64) 
 END as blood_1_4_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDBLC AS STRING) 
 END as blood_1_4_dichlorobenzene_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXVDE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.0106 AS FLOAT64),0) AS INT64) THEN '0.0106' -- categorize numeric values
WHEN LBXVDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDE AS STRING) 
 END as blood_1_2_dibromoethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDELC AS STRING) 
 END as blood_1_2_dibromoethane_comment_code, 

CASE
WHEN LBXVDM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDM AS FLOAT64) 
 END as blood_dibromomethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDMLC AS STRING) 
 END as blood_dibromomethane_comment_code, 

CASE
WHEN LBXVDP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDP AS FLOAT64) 
 END as blood_1_2_dichloropropane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDPLC AS STRING) 
 END as blood_1_2_dichloropropane_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXVDX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.3536 AS FLOAT64),0) AS INT64) THEN '0.3536' -- categorize numeric values
WHEN LBXVDX IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDX AS STRING) 
 END as blood_1_4_dioxane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDXLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDXLC AS STRING) 
 END as blood_1_4_dioxane_comment_code, 

CASE
WHEN LBXVEB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVEB AS FLOAT64) 
 END as blood_ethylbenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVEBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVEBLC AS STRING) 
 END as blood_ethylbenzene_comment_code, 

CASE
WHEN LBXVFN IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVFN AS FLOAT64) 
 END as blood_furan_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVFNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVFNLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVFNLC AS STRING) 
 END as blood_furan_comment_code, 

CASE
WHEN LBXVHE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVHE AS FLOAT64) 
 END as blood_hexachloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVHELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVHELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVHELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVHELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVHELC AS STRING) 
 END as blood_hexachloroethane_comment_code, 

CASE
WHEN LBXVIPB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVIPB AS FLOAT64) 
 END as blood_isopropylbenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVIPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVIPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVIPLC AS STRING) 
 END as blood_isopropylbenzene_comment_code, 

CASE
WHEN LBXVMC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVMC AS FLOAT64) 
 END as blood_methylene_chloride_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVMCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMCLC AS STRING) 
 END as blood_methylene_chloride_comment_code, 

CASE
WHEN LBXVNB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVNB AS FLOAT64) 
 END as blood_nitrobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVNBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVNBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVNBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVNBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVNBLC AS STRING) 
 END as blood_nitrobenzene_comment_code, 

CASE
WHEN LBXVOX IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVOX AS FLOAT64) 
 END as blood_o_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVOXLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVOXLC AS STRING) 
 END as blood_o_xylene_comment_code, 

CASE
WHEN LBXVTC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTC AS FLOAT64) 
 END as blood_trichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTCLC AS STRING) 
 END as blood_trichloroethene_comment_code, 

CASE
WHEN LBXVTE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTE AS FLOAT64) 
 END as blood_1_1_1_trichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTELC AS STRING) 
 END as blood_1_1_1_trichloroethane_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXVTP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.0283 AS FLOAT64),0) AS INT64) THEN '0.0283' -- categorize numeric values
WHEN LBXVTP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTP AS STRING) 
 END as blood_1_2_3_trichloropropane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTPLC AS STRING) 
 END as blood_1_2_3_trichloropropane_comt_code, 

CASE
WHEN LBXVXY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVXY AS FLOAT64) 
 END as blood_m_p_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVXYLC AS STRING) 
 END as blood_m_p_xylene_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXV2P AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.0707 AS FLOAT64),0) AS INT64) THEN '0.0707' -- categorize numeric values
WHEN LBXV2P IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV2P AS STRING) 
 END as blood_1_2_dibromo_3_chloropropane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2PLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2PLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV2PLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV2PLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV2PLC AS STRING) 
 END as blood_1_2_dibromo_3_chloropropane_comt, 

CASE
WHEN LBXVST IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVST AS FLOAT64) 
 END as blood_styrene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVSTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVSTLC AS STRING) 
 END as blood_styrene_comment_code, 

CASE
WHEN LBXVTO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTO AS FLOAT64) 
 END as blood_toluene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTOLC AS STRING) 
 END as blood_toluene_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_vocs_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/VOCWB_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/VOCWB_F.htm
*/
