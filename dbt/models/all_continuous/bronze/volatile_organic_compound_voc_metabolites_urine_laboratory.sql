SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSA2YR AS FLOAT64) 
 END as subsample_a_weights, 

CASE
WHEN URX2MH IS NULL THEN NULL 
ELSE SAFE_CAST(URX2MH AS FLOAT64) 
 END as lab_2_methylhippuric_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2MHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2MHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD2MHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD2MHLC AS STRING) 
 END as lab_2_methylhippuric_acid_comment_code, 

CASE
WHEN URX34M IS NULL THEN NULL 
ELSE SAFE_CAST(URX34M AS FLOAT64) 
 END as lab_3_methipurc_acd_4_methipurc_acd_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD34MLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD34MLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD34MLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD34MLC AS STRING) 
 END as lab_3_methipurc_acd_4_methipurc_acid_comt, 

CASE
WHEN URXAAM IS NULL THEN NULL 
ELSE SAFE_CAST(URXAAM AS FLOAT64) 
 END as n_ace_s_2_carbamoylethyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAAMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAAMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAAMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAAMLC AS STRING) 
 END as n_ace_s_2_carbamoylethyl_l_cys_comt, 

CASE
WHEN URXAMC IS NULL THEN NULL 
ELSE SAFE_CAST(URXAMC AS FLOAT64) 
 END as n_ace_s_n_methlcarbamoyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAMCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAMCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAMCLC AS STRING) 
 END as n_ace_s_n_methlcarbamoyl_l_cys_comt, 

CASE
WHEN URXATC IS NULL THEN NULL 
ELSE SAFE_CAST(URXATC AS FLOAT64) 
 END as lab_2_amnothiazolne_4_carbxylic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDATCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDATCLC AS STRING) 
 END as lab_2_amnothiazolne_4_carbxylic_acid_comt, 

CASE
WHEN URXBMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXBMA AS FLOAT64) 
 END as n_acetyl_s_benzyl_l_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBMALC AS STRING) 
 END as n_acetyl_s_benzyl_l_cysteine_comt, 

CASE
WHEN URXBPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXBPM AS FLOAT64) 
 END as n_acetyl_s_n_propyl_l_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBPMLC AS STRING) 
 END as n_acetyl_s_n_propyl_l_cysteine_comt, 

CASE
WHEN URXCEM IS NULL THEN NULL 
ELSE SAFE_CAST(URXCEM AS FLOAT64) 
 END as n_acetyl_s_2_carbxyethyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCEMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCEMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCEMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCEMLC AS STRING) 
 END as n_acetyl_s_2_carbxyethyl_l_cys_comt, 

CASE
WHEN URXCYHA IS NULL THEN NULL 
ELSE SAFE_CAST(URXCYHA AS FLOAT64) 
 END as cyha_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCYALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCYALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCYALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCYALC AS STRING) 
 END as cyha_cysteine_comment_code, 

CASE
WHEN URXCYM IS NULL THEN NULL 
ELSE SAFE_CAST(URXCYM AS FLOAT64) 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCYMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCYMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCYMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCYMLC AS STRING) 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_comt, 

CASE
WHEN URXDHB IS NULL THEN NULL 
ELSE SAFE_CAST(URXDHB AS FLOAT64) 
 END as n_ace_s_3_4_dihidxybutl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDHBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDHBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDHBLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDHBLC AS STRING) 
 END as n_ace_s_3_4_dihidxybutl_l_cys_comt, 

CASE
WHEN URXGAM IS NULL THEN NULL 
ELSE SAFE_CAST(URXGAM AS FLOAT64) 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGAMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDGAMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDGAMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDGAMLC AS STRING) 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_comt, 

CASE
WHEN URXHEM IS NULL THEN NULL 
ELSE SAFE_CAST(URXHEM AS FLOAT64) 
 END as n_ace_s_2_hydroxyethyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHEMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHEMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHEMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHEMLC AS STRING) 
 END as n_ace_s_2_hydroxyethyl_l_cys_comt, 

CASE
WHEN URXHP2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXHP2 AS FLOAT64) 
 END as n_ace_s_2_hydroxypropyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHP2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHP2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHP2LC AS STRING) 
 END as n_ace_s_2_hydroxypropyl_l_cys_comt, 

CASE
WHEN URXHPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXHPM AS FLOAT64) 
 END as n_ace_s_3_hydroxypropyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHPMLC AS STRING) 
 END as n_ace_s_3_hydroxypropyl_l_cys_comt, 

CASE
WHEN URXIPM3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXIPM3 AS FLOAT64) 
 END as ipm3_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPM3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPM3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPM3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPM3LC AS STRING) 
 END as ipm3_cysteine_comment_code, 

CASE
WHEN URXMAD IS NULL THEN NULL 
ELSE SAFE_CAST(URXMAD AS FLOAT64) 
 END as mandelic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMADLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMADLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMADLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMADLC AS STRING) 
 END as mandelic_acid_comment_code, 

CASE
WHEN URXMB3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMB3 AS FLOAT64) 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMB3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMB3LC AS STRING) 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_comt, 

CASE
WHEN URXPHE IS NULL THEN NULL 
ELSE SAFE_CAST(URXPHE AS FLOAT64) 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPHELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPHELC AS STRING) 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_comt, 

CASE
WHEN URXPHG IS NULL THEN NULL 
ELSE SAFE_CAST(URXPHG AS FLOAT64) 
 END as phenylglyoxylic_acid_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPHGLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPHGLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPHGLC AS STRING) 
 END as phenylglyoxylic_acid_comment_code, 

CASE
WHEN URXPMM IS NULL THEN NULL 
ELSE SAFE_CAST(URXPMM AS FLOAT64) 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPMMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPMMLC AS STRING) 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_comt, 

CASE
WHEN URXTTC IS NULL THEN NULL 
ELSE SAFE_CAST(URXTTC AS FLOAT64) 
 END as lab_2_thioxothiazolidine_4_carboxylic_acid, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTTCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTTCLC AS STRING) 
 END as lab_2_thoxothazlidne_4_carbxylic_comt, 

CASE
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSAPRP IS NOT NULL THEN SAFE_CAST(WTSAPRP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN WTSAPRP IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAPRP AS FLOAT64) 
 END as subsample_a_weights_pre_pandemic, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URX1DC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8.9 AS FLOAT64),0) AS INT64) THEN '8.9' -- categorize numeric values
WHEN URX1DC IS NULL THEN NULL 
ELSE SAFE_CAST(URX1DC AS STRING) 
 END as n_acel_s_1_2_dichlorovinl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1DCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD1DCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD1DCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD1DCLC AS STRING) 
 END as n_acel_s_1_2_dichlorovinl_l_cys_comt, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URX2DC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9.8 AS FLOAT64),0) AS INT64) THEN '9.8' -- categorize numeric values
WHEN URX2DC IS NULL THEN NULL 
ELSE SAFE_CAST(URX2DC AS STRING) 
 END as n_acel_s_2_2_dichlorvinyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2DCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD2DCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD2DCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD2DCLC AS STRING) 
 END as n_acel_s_2_2_dichlorvinyl_l_cys_comt, 

CASE
WHEN URXDPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXDPM AS FLOAT64) 
 END as n_ace_s_dimethylphenyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDPMLC AS STRING) 
 END as n_ace_s_dimethylphenyl_l_cys_comt, 

CASE
WHEN URXIPM1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXIPM1 AS FLOAT64) 
 END as ipm1_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPM1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPM1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPM1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPM1LC AS STRING) 
 END as ipm1_cysteine_comment_code, 

CASE
WHEN URXMB1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMB1 AS FLOAT64) 
 END as n_a_s_1_hydrxmet_2_prpn_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMB1LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMB1LC AS STRING) 
 END as n_a_s_1_hydrxmet_2_prpn_l_cys_comt, 

CASE
WHEN URXMB2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXMB2 AS FLOAT64) 
 END as n_ac_s_2_hydrxy_3_butenyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMB2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMB2LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMB2LC AS STRING) 
 END as n_ac_s_2_hydrxy_3_butenyl_l_cys_comt, 

CASE
WHEN URXPMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXPMA AS FLOAT64) 
 END as n_acetyl_s_phenyl_l_cysteine_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPMALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPMALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPMALC AS STRING) 
 END as n_acetyl_s_phenyl_l_cysteine_comt, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXTCV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2.12 AS FLOAT64),0) AS INT64) THEN '2.12' -- categorize numeric values
WHEN URXTCV IS NULL THEN NULL 
ELSE SAFE_CAST(URXTCV AS STRING) 
 END as n_acetyl_s_trichlorovinyl_l_cys_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCVLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCVLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTCVLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTCVLC AS STRING) 
 END as n_acetyl_s_trichlorovinyl_l_cys_comt, 

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
 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_urine_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UVOC_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_UVOC.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UVOC_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UVOC_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/UVOC_G.htm
*/
