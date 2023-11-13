SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URX2MH IS NULL THEN NULL 
ELSE URX2MH 
 END as lab_2_methylhippuric_acid_ng_ml, 

CASE
            WHEN URD2MHLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URD2MHLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD2MHLC IS NULL THEN NULL 
ELSE URD2MHLC 
 END as lab_2_methylhippuric_acid_comment_code, 

CASE
            WHEN URX34M IS NULL THEN NULL 
ELSE URX34M 
 END as lab_3_methipurc_acd_4_methipurc_acd_ng_ml, 

CASE
            WHEN URD34MLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URD34MLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD34MLC IS NULL THEN NULL 
ELSE URD34MLC 
 END as lab_3_methipurc_acd_4_methipurc_acid_comt, 

CASE
            WHEN URXAAM IS NULL THEN NULL 
ELSE URXAAM 
 END as n_ace_s_2_carbamoylethyl_l_cys_ng_ml, 

CASE
            WHEN URDAAMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDAAMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAAMLC IS NULL THEN NULL 
ELSE URDAAMLC 
 END as n_ace_s_2_carbamoylethyl_l_cys_comt, 

CASE
            WHEN URXAMC IS NULL THEN NULL 
ELSE URXAMC 
 END as n_ace_s_n_methlcarbamoyl_l_cys_ng_ml, 

CASE
            WHEN URDAMCLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDAMCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAMCLC IS NULL THEN NULL 
ELSE URDAMCLC 
 END as n_ace_s_n_methlcarbamoyl_l_cys_comt, 

CASE
            WHEN URXATC IS NULL THEN NULL 
ELSE URXATC 
 END as lab_2_amnothiazolne_4_carbxylic_acid_ng_ml, 

CASE
            WHEN URDATCLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDATCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDATCLC IS NULL THEN NULL 
ELSE URDATCLC 
 END as lab_2_amnothiazolne_4_carbxylic_acid_comt, 

CASE
            WHEN URXBMA IS NULL THEN NULL 
ELSE URXBMA 
 END as n_acetyl_s_benzyl_l_cysteine_ng_ml, 

CASE
            WHEN URDBMALC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDBMALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBMALC IS NULL THEN NULL 
ELSE URDBMALC 
 END as n_acetyl_s_benzyl_l_cysteine_comt, 

CASE
            WHEN URXBPM IS NULL THEN NULL 
ELSE URXBPM 
 END as n_acetyl_s_n_propyl_l_cysteine_ng_ml, 

CASE
            WHEN URDBPMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDBPMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBPMLC IS NULL THEN NULL 
ELSE URDBPMLC 
 END as n_acetyl_s_n_propyl_l_cysteine_comt, 

CASE
            WHEN URXCEM IS NULL THEN NULL 
ELSE URXCEM 
 END as n_acetyl_s_2_carbxyethyl_l_cys_ng_ml, 

CASE
            WHEN URDCEMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDCEMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCEMLC IS NULL THEN NULL 
ELSE URDCEMLC 
 END as n_acetyl_s_2_carbxyethyl_l_cys_comt, 

CASE
            WHEN URXCYHA IS NULL THEN NULL 
ELSE URXCYHA 
 END as cyha_cysteine_ng_ml, 

CASE
            WHEN URDCYALC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDCYALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCYALC IS NULL THEN NULL 
ELSE URDCYALC 
 END as cyha_cysteine_comment_code, 

CASE
            WHEN URXCYM IS NULL THEN NULL 
ELSE URXCYM 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_ng_ml, 

CASE
            WHEN URDCYMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDCYMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCYMLC IS NULL THEN NULL 
ELSE URDCYMLC 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_comt, 

CASE
            WHEN URXDHB IS NULL THEN NULL 
ELSE URXDHB 
 END as n_ace_s_3_4_dihidxybutl_l_cys_ng_ml, 

CASE
            WHEN URDDHBLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDDHBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDHBLC IS NULL THEN NULL 
ELSE URDDHBLC 
 END as n_ace_s_3_4_dihidxybutl_l_cys_comt, 

CASE
            WHEN URXGAM IS NULL THEN NULL 
ELSE URXGAM 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_ng_ml, 

CASE
            WHEN URDGAMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDGAMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDGAMLC IS NULL THEN NULL 
ELSE URDGAMLC 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_comt, 

CASE
            WHEN URXHEM IS NULL THEN NULL 
ELSE URXHEM 
 END as n_ace_s_2_hydroxyethyl_l_cys_ng_ml, 

CASE
            WHEN URDHEMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDHEMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHEMLC IS NULL THEN NULL 
ELSE URDHEMLC 
 END as n_ace_s_2_hydroxyethyl_l_cys_comt, 

CASE
            WHEN URXHP2 IS NULL THEN NULL 
ELSE URXHP2 
 END as n_ace_s_2_hydroxypropyl_l_cys_ng_ml, 

CASE
            WHEN URDHP2LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDHP2LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHP2LC IS NULL THEN NULL 
ELSE URDHP2LC 
 END as n_ace_s_2_hydroxypropyl_l_cys_comt, 

CASE
            WHEN URXHPM IS NULL THEN NULL 
ELSE URXHPM 
 END as n_ace_s_3_hydroxypropyl_l_cys_ng_ml, 

CASE
            WHEN URDHPMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDHPMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHPMLC IS NULL THEN NULL 
ELSE URDHPMLC 
 END as n_ace_s_3_hydroxypropyl_l_cys_comt, 

CASE
            WHEN URXIPM3 IS NULL THEN NULL 
ELSE URXIPM3 
 END as ipm3_cysteine_ng_ml, 

CASE
            WHEN URDPM3LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDPM3LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPM3LC IS NULL THEN NULL 
ELSE URDPM3LC 
 END as ipm3_cysteine_comment_code, 

CASE
            WHEN URXMAD IS NULL THEN NULL 
ELSE URXMAD 
 END as mandelic_acid_ng_ml, 

CASE
            WHEN URDMADLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDMADLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMADLC IS NULL THEN NULL 
ELSE URDMADLC 
 END as mandelic_acid_comment_code, 

CASE
            WHEN URXMB3 IS NULL THEN NULL 
ELSE URXMB3 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_ng_ml, 

CASE
            WHEN URDMB3LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDMB3LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMB3LC IS NULL THEN NULL 
ELSE URDMB3LC 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_comt, 

CASE
            WHEN URXPHE IS NULL THEN NULL 
ELSE URXPHE 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_ng_ml, 

CASE
            WHEN URDPHELC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDPHELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPHELC IS NULL THEN NULL 
ELSE URDPHELC 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_comt, 

CASE
            WHEN URXPHG IS NULL THEN NULL 
ELSE URXPHG 
 END as phenylglyoxylic_acid_ng_ml, 

CASE
            WHEN URDPHGLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDPHGLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPHGLC IS NULL THEN NULL 
ELSE URDPHGLC 
 END as phenylglyoxylic_acid_comment_code, 

CASE
            WHEN URXPMM IS NULL THEN NULL 
ELSE URXPMM 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_ng_ml, 

CASE
            WHEN URDPMMLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDPMMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPMMLC IS NULL THEN NULL 
ELSE URDPMMLC 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_comt, 

CASE
            WHEN URXTTC IS NULL THEN NULL 
ELSE URXTTC 
 END as lab_2_thioxothiazolidine_4_carboxylic_acid, 

CASE
            WHEN URDTTCLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDTTCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTTCLC IS NULL THEN NULL 
ELSE URDTTCLC 
 END as lab_2_thoxothazlidne_4_carbxylic_comt, 

 FROM {{ ref('stg_volatile_organic_compound_voc_metabolites_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UVOC_J.htm
        