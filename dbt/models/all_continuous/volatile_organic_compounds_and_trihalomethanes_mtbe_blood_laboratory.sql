SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSVOC2Y IS NOT NULL THEN WTSVOC2Y 
WHEN WTSVOC2Y IS NOT NULL THEN WTSVOC2Y 
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE NULL 
 END as voc_subsample_weight, 

CASE
        WHEN LBX2DF IS NOT NULL THEN LBX2DF 
WHEN LBX2DF IS NULL THEN NULL 
ELSE NULL 
 END as blood_2_5_dimethylfuran_ng_ml, 

CASE
        WHEN LBD2DFLC = 0 THEN 'At or above detection limit' 
WHEN LBD2DFLC = 1 THEN 'Below lower detection limit' 
WHEN LBD2DFLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_2_5_dimethylfuran_comment_code, 

CASE
        WHEN LBX4CE = 0.028 THEN '0.028' 
WHEN LBX4CE IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_1_1_2_tetrachloroethane_ng_ml, 

CASE
        WHEN LBD4CELC = 0 THEN 'At or above detection limit' 
WHEN LBD4CELC = 1 THEN 'Below lower detection limit' 
WHEN LBD4CELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_1_1_2_tetrachloroethane_cmt_code, 

CASE
        WHEN LBXV06 IS NOT NULL THEN LBXV06 
WHEN LBXV06 IS NULL THEN NULL 
ELSE NULL 
 END as blood_hexane_ng_ml, 

CASE
        WHEN LBDV06LC = 0 THEN 'At or above detection limit' 
WHEN LBDV06LC = 1 THEN 'Below lower detection limit' 
WHEN LBDV06LC IS NULL THEN NULL 
ELSE NULL 
 END as blood_hexane_comment_code, 

CASE
        WHEN LBXV07N IS NOT NULL THEN LBXV07N 
WHEN LBXV07N IS NULL THEN NULL 
ELSE NULL 
 END as blood_heptane_ng_ml, 

CASE
        WHEN LBDV07LC = 0 THEN 'At or above detection limit' 
WHEN LBDV07LC = 1 THEN 'Below lower detection limit' 
WHEN LBDV07LC IS NULL THEN NULL 
ELSE NULL 
 END as blood_heptane_comment_code, 

CASE
        WHEN LBXV08N IS NOT NULL THEN LBXV08N 
WHEN LBXV08N IS NULL THEN NULL 
ELSE NULL 
 END as blood_octane_ng_ml, 

CASE
        WHEN LBDV08LC = 0 THEN 'At or above detection limit' 
WHEN LBDV08LC = 1 THEN 'Below lower detection limit' 
WHEN LBDV08LC IS NULL THEN NULL 
ELSE NULL 
 END as blood_octane_comment_code, 

CASE
        WHEN LBXV1D IS NOT NULL THEN LBXV1D 
WHEN LBXV1D IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dichlorobenzene_ng_ml, 

CASE
        WHEN LBDV1DLC = 0 THEN 'At or above detection limit' 
WHEN LBDV1DLC = 1 THEN 'Below lower detection limit' 
WHEN LBDV1DLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dichlorobenzene_comment_code, 

CASE
        WHEN LBXV2A IS NOT NULL THEN LBXV2A 
WHEN LBXV2A IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dichloroethane_ng_ml, 

CASE
        WHEN LBDV2ALC = 0 THEN 'At or above detection limit' 
WHEN LBDV2ALC = 1 THEN 'Below lower detection limit' 
WHEN LBDV2ALC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dichloroethane_comment_code, 

CASE
        WHEN LBXV3B IS NOT NULL THEN LBXV3B 
WHEN LBXV3B IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_3_dichlorobenzene_ng_ml, 

CASE
        WHEN LBDV3BLC = 0 THEN 'At or above detection limit' 
WHEN LBDV3BLC = 1 THEN 'Below lower detection limit' 
WHEN LBDV3BLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_3_dichlorobenzene_comment_code, 

CASE
        WHEN LBXV4C IS NOT NULL THEN LBXV4C 
WHEN LBXV4C IS NULL THEN NULL 
ELSE NULL 
 END as blood_tetrachloroethene_ng_ml, 

CASE
        WHEN LBDV4CLC = 0 THEN 'At or above detection limit' 
WHEN LBDV4CLC = 1 THEN 'Below lower detection limit' 
WHEN LBDV4CLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_tetrachloroethene_comment_code, 

CASE
        WHEN LBXVBF IS NOT NULL THEN LBXVBF 
WHEN LBXVBF IS NULL THEN NULL 
ELSE NULL 
 END as blood_bromoform_ng_ml, 

CASE
        WHEN LBDVBFLC = 0 THEN 'At or above detection limit' 
WHEN LBDVBFLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_bromoform_comment_code, 

CASE
        WHEN LBXVBM IS NOT NULL THEN LBXVBM 
WHEN LBXVBM IS NULL THEN NULL 
ELSE NULL 
 END as blood_bromodichloromethane_ng_ml, 

CASE
        WHEN LBDVBMLC = 0 THEN 'At or above detection limit' 
WHEN LBDVBMLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_bromodichloromethane_comment_code, 

CASE
        WHEN LBXVBZ IS NOT NULL THEN LBXVBZ 
WHEN LBXVBZ IS NULL THEN NULL 
ELSE NULL 
 END as blood_benzene_ng_ml, 

CASE
        WHEN LBDVBZLC = 0 THEN 'At or above detection limit' 
WHEN LBDVBZLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVBZLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_benzene_comment_code, 

CASE
        WHEN LBXVBZN IS NOT NULL THEN LBXVBZN 
WHEN LBXVBZN IS NULL THEN NULL 
ELSE NULL 
 END as blood_benzonitrile_ng_ml, 

CASE
        WHEN LBDVZBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVZBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVZBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_benzonitrile_comment_code, 

CASE
        WHEN LBXVC6 IS NOT NULL THEN LBXVC6 
WHEN LBXVC6 IS NULL THEN NULL 
ELSE NULL 
 END as blood_cyclohexane_ng_ml, 

CASE
        WHEN LBDVC6LC = 0 THEN 'At or above detection limit' 
WHEN LBDVC6LC = 1 THEN 'Below lower detection limit' 
WHEN LBDVC6LC IS NULL THEN NULL 
ELSE NULL 
 END as blood_cyclohexane_comment_code, 

CASE
        WHEN LBXVCB IS NOT NULL THEN LBXVCB 
WHEN LBXVCB IS NULL THEN NULL 
ELSE NULL 
 END as blood_chlorobenzene_ng_ml, 

CASE
        WHEN LBDVCBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVCBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVCBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_chlorobenzene_comment_code, 

CASE
        WHEN LBXVCF IS NOT NULL THEN LBXVCF 
WHEN LBXVCF IS NULL THEN NULL 
ELSE NULL 
 END as blood_chloroform_ng_ml, 

CASE
        WHEN LBDVCFLC = 0 THEN 'At or above detection limit' 
WHEN LBDVCFLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_chloroform_comment_code, 

CASE
        WHEN LBXVCM IS NOT NULL THEN LBXVCM 
WHEN LBXVCM IS NULL THEN NULL 
ELSE NULL 
 END as blood_dibromochloromethane_ng_ml, 

CASE
        WHEN LBDVCMLC = 0 THEN 'At or above detection limit' 
WHEN LBDVCMLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_dibromochloromethane_comment_code, 

CASE
        WHEN LBXVCT IS NOT NULL THEN LBXVCT 
WHEN LBXVCT IS NULL THEN NULL 
ELSE NULL 
 END as blood_carbon_tetrachloride_ng_ml, 

CASE
        WHEN LBDVCTLC = 0 THEN 'At or above detection limit' 
WHEN LBDVCTLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVCTLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_carbon_tetrachloride_comment_code, 

CASE
        WHEN LBXVDB IS NOT NULL THEN LBXVDB 
WHEN LBXVDB IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_4_dichlorobenzene_ng_ml, 

CASE
        WHEN LBDVDBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVDBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVDBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_4_dichlorobenzene_comment_code, 

CASE
        WHEN LBXVDE = 0.011 THEN '0.011' 
WHEN LBXVDE IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dibromoethane_ng_ml, 

CASE
        WHEN LBDVDELC = 0 THEN 'At or above detection limit' 
WHEN LBDVDELC = 1 THEN 'Below lower detection limit' 
WHEN LBDVDELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_dibromoethane_comment_code, 

CASE
        WHEN LBXVDEE IS NOT NULL THEN LBXVDEE 
WHEN LBXVDEE IS NULL THEN NULL 
ELSE NULL 
 END as blood_diethyl_ether_ng_ml, 

CASE
        WHEN LBDVEELC = 0 THEN 'At or above detection limit' 
WHEN LBDVEELC = 1 THEN 'Below lower detection limit' 
WHEN LBDVEELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_diethyl_ether_comment_code, 

CASE
        WHEN LBXVEA IS NOT NULL THEN LBXVEA 
WHEN LBXVEA IS NULL THEN NULL 
ELSE NULL 
 END as blood_ethyl_acetate_ng_ml, 

CASE
        WHEN LBDVEALC = 0 THEN 'At or above detection limit' 
WHEN LBDVEALC = 1 THEN 'Below lower detection limit' 
WHEN LBDVEALC IS NULL THEN NULL 
ELSE NULL 
 END as blood_ethyl_acetate_comment_code, 

CASE
        WHEN LBXVEB IS NOT NULL THEN LBXVEB 
WHEN LBXVEB IS NULL THEN NULL 
ELSE NULL 
 END as blood_ethylbenzene_ng_ml, 

CASE
        WHEN LBDVEBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVEBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVEBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_ethylbenzene_comment_code, 

CASE
        WHEN LBXVEC IS NOT NULL THEN LBXVEC 
WHEN LBXVEC IS NULL THEN NULL 
ELSE NULL 
 END as blood_chloroethane_ng_ml, 

CASE
        WHEN LBDVECLC = 0 THEN 'At or above detection limit' 
WHEN LBDVECLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVECLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_chloroethane_comment_code, 

CASE
        WHEN LBXVFN IS NOT NULL THEN LBXVFN 
WHEN LBXVFN IS NULL THEN NULL 
ELSE NULL 
 END as blood_furan_ng_ml, 

CASE
        WHEN LBDVFNLC = 0 THEN 'At or above detection limit' 
WHEN LBDVFNLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVFNLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_furan_comment_code, 

CASE
        WHEN LBXVIBN IS NOT NULL THEN LBXVIBN 
WHEN LBXVIBN IS NULL THEN NULL 
ELSE NULL 
 END as blood_isobutyronitrile_ng_ml, 

CASE
        WHEN LBDVIBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVIBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVIBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_isobutyronitrile_comment_code, 

CASE
        WHEN LBXVIPB IS NOT NULL THEN LBXVIPB 
WHEN LBXVIPB IS NULL THEN NULL 
ELSE NULL 
 END as blood_isopropylbenzene_ng_ml, 

CASE
        WHEN LBDVIPLC = 0 THEN 'At or above detection limit' 
WHEN LBDVIPLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVIPLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_isopropylbenzene_comment_code, 

CASE
        WHEN LBXVMC IS NOT NULL THEN LBXVMC 
WHEN LBXVMC IS NULL THEN NULL 
ELSE NULL 
 END as blood_methylene_chloride_ng_ml, 

CASE
        WHEN LBDVMCLC = 0 THEN 'At or above detection limit' 
WHEN LBDVMCLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVMCLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_methylene_chloride_comment_code, 

CASE
        WHEN LBXVME IS NOT NULL THEN LBXVME 
WHEN LBXVME IS NULL THEN NULL 
ELSE NULL 
 END as blood_mtbe_ng_ml, 

CASE
        WHEN LBDVMELC = 0 THEN 'At or above detection limit' 
WHEN LBDVMELC = 1 THEN 'Below lower detection limit' 
WHEN LBDVMELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_mtbe_comment_code, 

CASE
        WHEN LBXVMCP IS NOT NULL THEN LBXVMCP 
WHEN LBXVMCP IS NULL THEN NULL 
ELSE NULL 
 END as blood_methylcyclopentane_ng_ml, 

CASE
        WHEN LBDVMPLC = 0 THEN 'At or above detection limit' 
WHEN LBDVMPLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVMPLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_methylcyclopentane_comment_code, 

CASE
        WHEN LBXVMIK IS NOT NULL THEN LBXVMIK 
WHEN LBXVMIK IS NULL THEN NULL 
ELSE NULL 
 END as blood_methyl_isobutyl_ketone_ng_ml, 

CASE
        WHEN LBDVMKLC = 0 THEN 'At or above detection limit' 
WHEN LBDVMKLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVMKLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_methyl_isobutyl_ketone_comt_code, 

CASE
        WHEN LBXVNB IS NOT NULL THEN LBXVNB 
WHEN LBXVNB IS NULL THEN NULL 
ELSE NULL 
 END as blood_nitrobenzene_ng_ml, 

CASE
        WHEN LBDVNBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVNBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVNBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_nitrobenzene_comment_code, 

CASE
        WHEN LBXVOX IS NOT NULL THEN LBXVOX 
WHEN LBXVOX IS NULL THEN NULL 
ELSE NULL 
 END as blood_o_xylene_ng_ml, 

CASE
        WHEN LBDVOXLC = 0 THEN 'At or above detection limit' 
WHEN LBDVOXLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVOXLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_o_xylene_comment_code, 

CASE
        WHEN LBXVTC IS NOT NULL THEN LBXVTC 
WHEN LBXVTC IS NULL THEN NULL 
ELSE NULL 
 END as blood_trichloroethene_ng_ml, 

CASE
        WHEN LBDVTCLC = 0 THEN 'At or above detection limit' 
WHEN LBDVTCLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVTCLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_trichloroethene_comment_code, 

CASE
        WHEN LBXVTE IS NOT NULL THEN LBXVTE 
WHEN LBXVTE IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_1_1_trichloroethane_ng_ml, 

CASE
        WHEN LBDVTELC = 0 THEN 'At or above detection limit' 
WHEN LBDVTELC = 1 THEN 'Below lower detection limit' 
WHEN LBDVTELC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_1_1_trichloroethane_comment_code, 

CASE
        WHEN LBXVTFT IS NOT NULL THEN LBXVTFT 
WHEN LBXVTFT IS NULL THEN NULL 
ELSE NULL 
 END as blood_aaa_trifluorotoluene_ng_ml, 

CASE
        WHEN LBDVFTLC = 0 THEN 'At or above detection limit' 
WHEN LBDVFTLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVFTLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_aaa_trifluorotoluene_comment_code, 

CASE
        WHEN LBXVTHF IS NOT NULL THEN LBXVTHF 
WHEN LBXVTHF IS NULL THEN NULL 
ELSE NULL 
 END as blood_tetrahydrofuran_ng_ml, 

CASE
        WHEN LBDVHTLC = 0 THEN 'At or above detection limit' 
WHEN LBDVHTLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVHTLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_tetrahydrofuran_comment_code, 

CASE
        WHEN LBXVTP IS NOT NULL THEN LBXVTP 
WHEN LBXVTP IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_3_trichloropropane_ng_ml, 

CASE
        WHEN LBDVTPLC = 0 THEN 'At or above detection limit' 
WHEN LBDVTPLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVTPLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_1_2_3_trichloropropane_comt_code, 

CASE
        WHEN LBXVVB IS NOT NULL THEN LBXVVB 
WHEN LBXVVB IS NULL THEN NULL 
ELSE NULL 
 END as blood_vinyl_bromide_ng_ml, 

CASE
        WHEN LBDVVBLC = 0 THEN 'At or above detection limit' 
WHEN LBDVVBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVVBLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_vinyl_bromide_comment_code, 

CASE
        WHEN LBXVXY IS NOT NULL THEN LBXVXY 
WHEN LBXVXY IS NULL THEN NULL 
ELSE NULL 
 END as blood_m_p_xylene_ng_ml, 

CASE
        WHEN LBDVXYLC = 0 THEN 'At or above detection limit' 
WHEN LBDVXYLC = 1 THEN 'Below lower detection limit' 
WHEN LBDVXYLC IS NULL THEN NULL 
ELSE NULL 
 END as blood_m_p_xylene_comment_code, 

 FROM {{ ref('stg_volatile_organic_compounds_and_trihalomethanes_mtbe_blood_laboratory') }}