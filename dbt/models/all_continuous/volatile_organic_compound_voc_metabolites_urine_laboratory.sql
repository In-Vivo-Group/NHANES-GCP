SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NOT NULL THEN WTSA2YR 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights, 

CASE
        WHEN URX2MH IS NOT NULL THEN URX2MH 
WHEN URX2MH IS NULL THEN NULL 
ELSE NULL 
 END as 2_methylhippuric_acid_ng_ml, 

CASE
        WHEN URD2MHLC = 0 THEN 'At or above the detection limit' 
WHEN URD2MHLC = 1 THEN 'Below lower detection limit' 
WHEN URD2MHLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_methylhippuric_acid_comment_code, 

CASE
        WHEN URX34M IS NOT NULL THEN URX34M 
WHEN URX34M IS NULL THEN NULL 
ELSE NULL 
 END as 3_methipurc_acd_4_methipurc_acd_ng_ml, 

CASE
        WHEN URD34MLC = 0 THEN 'At or above the detection limit' 
WHEN URD34MLC = 1 THEN 'Below lower detection limit' 
WHEN URD34MLC IS NULL THEN NULL 
ELSE NULL 
 END as 3_methipurc_acd_4_methipurc_acid_comt, 

CASE
        WHEN URXAAM IS NOT NULL THEN URXAAM 
WHEN URXAAM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_carbamoylethyl_l_cys_ng_ml, 

CASE
        WHEN URDAAMLC = 0 THEN 'At or above the detection limit' 
WHEN URDAAMLC = 1 THEN 'Below lower detection limit' 
WHEN URDAAMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_carbamoylethyl_l_cys_comt, 

CASE
        WHEN URXAMC IS NOT NULL THEN URXAMC 
WHEN URXAMC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_n_methlcarbamoyl_l_cys_ng_ml, 

CASE
        WHEN URDAMCLC = 0 THEN 'At or above the detection limit' 
WHEN URDAMCLC = 1 THEN 'Below lower detection limit' 
WHEN URDAMCLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_n_methlcarbamoyl_l_cys_comt, 

CASE
        WHEN URXATC IS NOT NULL THEN URXATC 
WHEN URXATC IS NULL THEN NULL 
ELSE NULL 
 END as 2_amnothiazolne_4_carbxylic_acid_ng_ml, 

CASE
        WHEN URDATCLC = 0 THEN 'At or above the detection limit' 
WHEN URDATCLC = 1 THEN 'Below lower detection limit' 
WHEN URDATCLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_amnothiazolne_4_carbxylic_acid_comt, 

CASE
        WHEN URXBMA IS NOT NULL THEN URXBMA 
WHEN URXBMA IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_benzyl_l_cysteine_ng_ml, 

CASE
        WHEN URDBMALC = 0 THEN 'At or above the detection limit' 
WHEN URDBMALC = 1 THEN 'Below lower detection limit' 
WHEN URDBMALC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_benzyl_l_cysteine_comt, 

CASE
        WHEN URXBPM IS NOT NULL THEN URXBPM 
WHEN URXBPM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_n_propyl_l_cysteine_ng_ml, 

CASE
        WHEN URDBPMLC = 0 THEN 'At or above the detection limit' 
WHEN URDBPMLC = 1 THEN 'Below lower detection limit' 
WHEN URDBPMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_n_propyl_l_cysteine_comt, 

CASE
        WHEN URXCEM IS NOT NULL THEN URXCEM 
WHEN URXCEM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_carbxyethyl_l_cys_ng_ml, 

CASE
        WHEN URDCEMLC = 0 THEN 'At or above the detection limit' 
WHEN URDCEMLC = 1 THEN 'Below lower detection limit' 
WHEN URDCEMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_carbxyethyl_l_cys_comt, 

CASE
        WHEN URXCYHA IS NOT NULL THEN URXCYHA 
WHEN URXCYHA IS NULL THEN NULL 
ELSE NULL 
 END as cyha_cysteine_ng_ml, 

CASE
        WHEN URDCYALC = 0 THEN 'At or above the detection limit' 
WHEN URDCYALC = 1 THEN 'Below lower detection limit' 
WHEN URDCYALC IS NULL THEN NULL 
ELSE NULL 
 END as cyha_cysteine_comment_code, 

CASE
        WHEN URXCYM IS NOT NULL THEN URXCYM 
WHEN URXCYM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_ng_ml, 

CASE
        WHEN URDCYMLC = 0 THEN 'At or above the detection limit' 
WHEN URDCYMLC = 1 THEN 'Below lower detection limit' 
WHEN URDCYMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_comt, 

CASE
        WHEN URXDHB IS NOT NULL THEN URXDHB 
WHEN URXDHB IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_4_dihidxybutl_l_cys_ng_ml, 

CASE
        WHEN URDDHBLC = 0 THEN 'At or above the detection limit' 
WHEN URDDHBLC = 1 THEN 'Below lower detection limit' 
WHEN URDDHBLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_4_dihidxybutl_l_cys_comt, 

CASE
        WHEN URXGAM IS NOT NULL THEN URXGAM 
WHEN URXGAM IS NULL THEN NULL 
ELSE NULL 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_ng_ml, 

CASE
        WHEN URDGAMLC = 0 THEN 'At or above the detection limit' 
WHEN URDGAMLC = 1 THEN 'Below lower detection limit' 
WHEN URDGAMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_comt, 

CASE
        WHEN URXHEM IS NOT NULL THEN URXHEM 
WHEN URXHEM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxyethyl_l_cys_ng_ml, 

CASE
        WHEN URDHEMLC = 0 THEN 'At or above the detection limit' 
WHEN URDHEMLC = 1 THEN 'Below lower detection limit' 
WHEN URDHEMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxyethyl_l_cys_comt, 

CASE
        WHEN URXHP2 IS NOT NULL THEN URXHP2 
WHEN URXHP2 IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxypropyl_l_cys_ng_ml, 

CASE
        WHEN URDHP2LC = 0 THEN 'At or above the detection limit' 
WHEN URDHP2LC = 1 THEN 'Below lower detection limit' 
WHEN URDHP2LC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxypropyl_l_cys_comt, 

CASE
        WHEN URXHPM IS NOT NULL THEN URXHPM 
WHEN URXHPM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_hydroxypropyl_l_cys_ng_ml, 

CASE
        WHEN URDHPMLC = 0 THEN 'At or above the detection limit' 
WHEN URDHPMLC = 1 THEN 'Below lower detection limit' 
WHEN URDHPMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_hydroxypropyl_l_cys_comt, 

CASE
        WHEN URXIPM3 IS NOT NULL THEN URXIPM3 
WHEN URXIPM3 IS NULL THEN NULL 
ELSE NULL 
 END as ipm3_cysteine_ng_ml, 

CASE
        WHEN URDPM3LC = 0 THEN 'At or above the detection limit' 
WHEN URDPM3LC = 1 THEN 'Below lower detection limit' 
WHEN URDPM3LC IS NULL THEN NULL 
ELSE NULL 
 END as ipm3_cysteine_comment_code, 

CASE
        WHEN URXMAD IS NOT NULL THEN URXMAD 
WHEN URXMAD IS NULL THEN NULL 
ELSE NULL 
 END as mandelic_acid_ng_ml, 

CASE
        WHEN URDMADLC = 0 THEN 'At or above the detection limit' 
WHEN URDMADLC = 1 THEN 'Below lower detection limit' 
WHEN URDMADLC IS NULL THEN NULL 
ELSE NULL 
 END as mandelic_acid_comment_code, 

CASE
        WHEN URXMB3 IS NOT NULL THEN URXMB3 
WHEN URXMB3 IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_ng_ml, 

CASE
        WHEN URDMB3LC = 0 THEN 'At or above the detection limit' 
WHEN URDMB3LC = 1 THEN 'Below lower detection limit' 
WHEN URDMB3LC IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_comt, 

CASE
        WHEN URXPHE IS NOT NULL THEN URXPHE 
WHEN URXPHE IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_ng_ml, 

CASE
        WHEN URDPHELC = 0 THEN 'At or above the detection limit' 
WHEN URDPHELC = 1 THEN 'Below lower detection limit' 
WHEN URDPHELC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_comt, 

CASE
        WHEN URXPHG IS NOT NULL THEN URXPHG 
WHEN URXPHG IS NULL THEN NULL 
ELSE NULL 
 END as phenylglyoxylic_acid_ng_ml, 

CASE
        WHEN URDPHGLC = 0 THEN 'At or above the detection limit' 
WHEN URDPHGLC = 1 THEN 'Below lower detection limit' 
WHEN URDPHGLC IS NULL THEN NULL 
ELSE NULL 
 END as phenylglyoxylic_acid_comment_code, 

CASE
        WHEN URXPMM IS NOT NULL THEN URXPMM 
WHEN URXPMM IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_ng_ml, 

CASE
        WHEN URDPMMLC = 0 THEN 'At or above the detection limit' 
WHEN URDPMMLC = 1 THEN 'Below lower detection limit' 
WHEN URDPMMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_comt, 

CASE
        WHEN URXTTC IS NOT NULL THEN URXTTC 
WHEN URXTTC IS NULL THEN NULL 
ELSE NULL 
 END as 2_thioxothiazolidine_4_carboxylic_acid, 

CASE
        WHEN URDTTCLC = 0 THEN 'At or above the detection limit' 
WHEN URDTTCLC = 1 THEN 'Below lower detection limit' 
WHEN URDTTCLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_thoxothazlidne_4_carbxylic_comt, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_urine_laboratory') }}