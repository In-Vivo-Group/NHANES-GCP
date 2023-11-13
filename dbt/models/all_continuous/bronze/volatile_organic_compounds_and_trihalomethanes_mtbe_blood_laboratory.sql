SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE WTSVOC2Y 
 END as voc_subsample_weight, 

CASE
            WHEN LBX2DF IS NULL THEN NULL 
ELSE LBX2DF 
 END as blood_2_5_dimethylfuran_ng_ml, 

CASE
            WHEN LBD2DFLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBD2DFLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD2DFLC IS NULL THEN NULL 
ELSE LBD2DFLC 
 END as blood_2_5_dimethylfuran_comment_code, 

CASE
            WHEN LBX4CE = 0.028 THEN '0.028' -- categorize numeric values
WHEN LBX4CE IS NULL THEN NULL 
ELSE LBX4CE 
 END as blood_1_1_1_2_tetrachloroethane_ng_ml, 

CASE
            WHEN LBD4CELC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBD4CELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBD4CELC IS NULL THEN NULL 
ELSE LBD4CELC 
 END as blood_1_1_1_2_tetrachloroethane_cmt_code, 

CASE
            WHEN LBXV06 IS NULL THEN NULL 
ELSE LBXV06 
 END as blood_hexane_ng_ml, 

CASE
            WHEN LBDV06LC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV06LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV06LC IS NULL THEN NULL 
ELSE LBDV06LC 
 END as blood_hexane_comment_code, 

CASE
            WHEN LBXV07N IS NULL THEN NULL 
ELSE LBXV07N 
 END as blood_heptane_ng_ml, 

CASE
            WHEN LBDV07LC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV07LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV07LC IS NULL THEN NULL 
ELSE LBDV07LC 
 END as blood_heptane_comment_code, 

CASE
            WHEN LBXV08N IS NULL THEN NULL 
ELSE LBXV08N 
 END as blood_octane_ng_ml, 

CASE
            WHEN LBDV08LC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV08LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV08LC IS NULL THEN NULL 
ELSE LBDV08LC 
 END as blood_octane_comment_code, 

CASE
            WHEN LBXV1D IS NULL THEN NULL 
ELSE LBXV1D 
 END as blood_1_2_dichlorobenzene_ng_ml, 

CASE
            WHEN LBDV1DLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV1DLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV1DLC IS NULL THEN NULL 
ELSE LBDV1DLC 
 END as blood_1_2_dichlorobenzene_comment_code, 

CASE
            WHEN LBXV2A IS NULL THEN NULL 
ELSE LBXV2A 
 END as blood_1_2_dichloroethane_ng_ml, 

CASE
            WHEN LBDV2ALC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV2ALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV2ALC IS NULL THEN NULL 
ELSE LBDV2ALC 
 END as blood_1_2_dichloroethane_comment_code, 

CASE
            WHEN LBXV3B IS NULL THEN NULL 
ELSE LBXV3B 
 END as blood_1_3_dichlorobenzene_ng_ml, 

CASE
            WHEN LBDV3BLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV3BLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV3BLC IS NULL THEN NULL 
ELSE LBDV3BLC 
 END as blood_1_3_dichlorobenzene_comment_code, 

CASE
            WHEN LBXV4C IS NULL THEN NULL 
ELSE LBXV4C 
 END as blood_tetrachloroethene_ng_ml, 

CASE
            WHEN LBDV4CLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDV4CLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDV4CLC IS NULL THEN NULL 
ELSE LBDV4CLC 
 END as blood_tetrachloroethene_comment_code, 

CASE
            WHEN LBXVBF IS NULL THEN NULL 
ELSE LBXVBF 
 END as blood_bromoform_ng_ml, 

CASE
            WHEN LBDVBFLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVBFLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE LBDVBFLC 
 END as blood_bromoform_comment_code, 

CASE
            WHEN LBXVBM IS NULL THEN NULL 
ELSE LBXVBM 
 END as blood_bromodichloromethane_ng_ml, 

CASE
            WHEN LBDVBMLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVBMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE LBDVBMLC 
 END as blood_bromodichloromethane_comment_code, 

CASE
            WHEN LBXVBZ IS NULL THEN NULL 
ELSE LBXVBZ 
 END as blood_benzene_ng_ml, 

CASE
            WHEN LBDVBZLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVBZLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVBZLC IS NULL THEN NULL 
ELSE LBDVBZLC 
 END as blood_benzene_comment_code, 

CASE
            WHEN LBXVBZN IS NULL THEN NULL 
ELSE LBXVBZN 
 END as blood_benzonitrile_ng_ml, 

CASE
            WHEN LBDVZBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVZBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVZBLC IS NULL THEN NULL 
ELSE LBDVZBLC 
 END as blood_benzonitrile_comment_code, 

CASE
            WHEN LBXVC6 IS NULL THEN NULL 
ELSE LBXVC6 
 END as blood_cyclohexane_ng_ml, 

CASE
            WHEN LBDVC6LC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVC6LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVC6LC IS NULL THEN NULL 
ELSE LBDVC6LC 
 END as blood_cyclohexane_comment_code, 

CASE
            WHEN LBXVCB IS NULL THEN NULL 
ELSE LBXVCB 
 END as blood_chlorobenzene_ng_ml, 

CASE
            WHEN LBDVCBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVCBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCBLC IS NULL THEN NULL 
ELSE LBDVCBLC 
 END as blood_chlorobenzene_comment_code, 

CASE
            WHEN LBXVCF IS NULL THEN NULL 
ELSE LBXVCF 
 END as blood_chloroform_ng_ml, 

CASE
            WHEN LBDVCFLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVCFLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE LBDVCFLC 
 END as blood_chloroform_comment_code, 

CASE
            WHEN LBXVCM IS NULL THEN NULL 
ELSE LBXVCM 
 END as blood_dibromochloromethane_ng_ml, 

CASE
            WHEN LBDVCMLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVCMLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE LBDVCMLC 
 END as blood_dibromochloromethane_comment_code, 

CASE
            WHEN LBXVCT IS NULL THEN NULL 
ELSE LBXVCT 
 END as blood_carbon_tetrachloride_ng_ml, 

CASE
            WHEN LBDVCTLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVCTLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVCTLC IS NULL THEN NULL 
ELSE LBDVCTLC 
 END as blood_carbon_tetrachloride_comment_code, 

CASE
            WHEN LBXVDB IS NULL THEN NULL 
ELSE LBXVDB 
 END as blood_1_4_dichlorobenzene_ng_ml, 

CASE
            WHEN LBDVDBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVDBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVDBLC IS NULL THEN NULL 
ELSE LBDVDBLC 
 END as blood_1_4_dichlorobenzene_comment_code, 

CASE
            WHEN LBXVDE = 0.011 THEN '0.011' -- categorize numeric values
WHEN LBXVDE IS NULL THEN NULL 
ELSE LBXVDE 
 END as blood_1_2_dibromoethane_ng_ml, 

CASE
            WHEN LBDVDELC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVDELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVDELC IS NULL THEN NULL 
ELSE LBDVDELC 
 END as blood_1_2_dibromoethane_comment_code, 

CASE
            WHEN LBXVDEE IS NULL THEN NULL 
ELSE LBXVDEE 
 END as blood_diethyl_ether_ng_ml, 

CASE
            WHEN LBDVEELC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVEELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEELC IS NULL THEN NULL 
ELSE LBDVEELC 
 END as blood_diethyl_ether_comment_code, 

CASE
            WHEN LBXVEA IS NULL THEN NULL 
ELSE LBXVEA 
 END as blood_ethyl_acetate_ng_ml, 

CASE
            WHEN LBDVEALC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVEALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEALC IS NULL THEN NULL 
ELSE LBDVEALC 
 END as blood_ethyl_acetate_comment_code, 

CASE
            WHEN LBXVEB IS NULL THEN NULL 
ELSE LBXVEB 
 END as blood_ethylbenzene_ng_ml, 

CASE
            WHEN LBDVEBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVEBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVEBLC IS NULL THEN NULL 
ELSE LBDVEBLC 
 END as blood_ethylbenzene_comment_code, 

CASE
            WHEN LBXVEC IS NULL THEN NULL 
ELSE LBXVEC 
 END as blood_chloroethane_ng_ml, 

CASE
            WHEN LBDVECLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVECLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVECLC IS NULL THEN NULL 
ELSE LBDVECLC 
 END as blood_chloroethane_comment_code, 

CASE
            WHEN LBXVFN IS NULL THEN NULL 
ELSE LBXVFN 
 END as blood_furan_ng_ml, 

CASE
            WHEN LBDVFNLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVFNLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVFNLC IS NULL THEN NULL 
ELSE LBDVFNLC 
 END as blood_furan_comment_code, 

CASE
            WHEN LBXVIBN IS NULL THEN NULL 
ELSE LBXVIBN 
 END as blood_isobutyronitrile_ng_ml, 

CASE
            WHEN LBDVIBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVIBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVIBLC IS NULL THEN NULL 
ELSE LBDVIBLC 
 END as blood_isobutyronitrile_comment_code, 

CASE
            WHEN LBXVIPB IS NULL THEN NULL 
ELSE LBXVIPB 
 END as blood_isopropylbenzene_ng_ml, 

CASE
            WHEN LBDVIPLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVIPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVIPLC IS NULL THEN NULL 
ELSE LBDVIPLC 
 END as blood_isopropylbenzene_comment_code, 

CASE
            WHEN LBXVMC IS NULL THEN NULL 
ELSE LBXVMC 
 END as blood_methylene_chloride_ng_ml, 

CASE
            WHEN LBDVMCLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVMCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMCLC IS NULL THEN NULL 
ELSE LBDVMCLC 
 END as blood_methylene_chloride_comment_code, 

CASE
            WHEN LBXVME IS NULL THEN NULL 
ELSE LBXVME 
 END as blood_mtbe_ng_ml, 

CASE
            WHEN LBDVMELC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVMELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMELC IS NULL THEN NULL 
ELSE LBDVMELC 
 END as blood_mtbe_comment_code, 

CASE
            WHEN LBXVMCP IS NULL THEN NULL 
ELSE LBXVMCP 
 END as blood_methylcyclopentane_ng_ml, 

CASE
            WHEN LBDVMPLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVMPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMPLC IS NULL THEN NULL 
ELSE LBDVMPLC 
 END as blood_methylcyclopentane_comment_code, 

CASE
            WHEN LBXVMIK IS NULL THEN NULL 
ELSE LBXVMIK 
 END as blood_methyl_isobutyl_ketone_ng_ml, 

CASE
            WHEN LBDVMKLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVMKLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVMKLC IS NULL THEN NULL 
ELSE LBDVMKLC 
 END as blood_methyl_isobutyl_ketone_comt_code, 

CASE
            WHEN LBXVNB IS NULL THEN NULL 
ELSE LBXVNB 
 END as blood_nitrobenzene_ng_ml, 

CASE
            WHEN LBDVNBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVNBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVNBLC IS NULL THEN NULL 
ELSE LBDVNBLC 
 END as blood_nitrobenzene_comment_code, 

CASE
            WHEN LBXVOX IS NULL THEN NULL 
ELSE LBXVOX 
 END as blood_o_xylene_ng_ml, 

CASE
            WHEN LBDVOXLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVOXLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVOXLC IS NULL THEN NULL 
ELSE LBDVOXLC 
 END as blood_o_xylene_comment_code, 

CASE
            WHEN LBXVTC IS NULL THEN NULL 
ELSE LBXVTC 
 END as blood_trichloroethene_ng_ml, 

CASE
            WHEN LBDVTCLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVTCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTCLC IS NULL THEN NULL 
ELSE LBDVTCLC 
 END as blood_trichloroethene_comment_code, 

CASE
            WHEN LBXVTE IS NULL THEN NULL 
ELSE LBXVTE 
 END as blood_1_1_1_trichloroethane_ng_ml, 

CASE
            WHEN LBDVTELC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVTELC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTELC IS NULL THEN NULL 
ELSE LBDVTELC 
 END as blood_1_1_1_trichloroethane_comment_code, 

CASE
            WHEN LBXVTFT IS NULL THEN NULL 
ELSE LBXVTFT 
 END as blood_aaa_trifluorotoluene_ng_ml, 

CASE
            WHEN LBDVFTLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVFTLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVFTLC IS NULL THEN NULL 
ELSE LBDVFTLC 
 END as blood_aaa_trifluorotoluene_comment_code, 

CASE
            WHEN LBXVTHF IS NULL THEN NULL 
ELSE LBXVTHF 
 END as blood_tetrahydrofuran_ng_ml, 

CASE
            WHEN LBDVHTLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVHTLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVHTLC IS NULL THEN NULL 
ELSE LBDVHTLC 
 END as blood_tetrahydrofuran_comment_code, 

CASE
            WHEN LBXVTP IS NULL THEN NULL 
ELSE LBXVTP 
 END as blood_1_2_3_trichloropropane_ng_ml, 

CASE
            WHEN LBDVTPLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVTPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVTPLC IS NULL THEN NULL 
ELSE LBDVTPLC 
 END as blood_1_2_3_trichloropropane_comt_code, 

CASE
            WHEN LBXVVB IS NULL THEN NULL 
ELSE LBXVVB 
 END as blood_vinyl_bromide_ng_ml, 

CASE
            WHEN LBDVVBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVVBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVVBLC IS NULL THEN NULL 
ELSE LBDVVBLC 
 END as blood_vinyl_bromide_comment_code, 

CASE
            WHEN LBXVXY IS NULL THEN NULL 
ELSE LBXVXY 
 END as blood_m_p_xylene_ng_ml, 

CASE
            WHEN LBDVXYLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDVXYLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDVXYLC IS NULL THEN NULL 
ELSE LBDVXYLC 
 END as blood_m_p_xylene_comment_code, 

 FROM {{ ref('stg_volatile_organic_compounds_and_trihalomethanes_mtbe_blood_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VOCWB_J.htm
        