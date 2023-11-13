SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WTFOL2YR AS FLOAT64) > 903457.15327 THEN NULL -- remove missing, dont know, categories in float field  
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE WTFOL2YR 
 END as folate_and_folate_forms_weight, 

CASE
            WHEN LBDFOTSI IS NULL THEN NULL 
ELSE LBDFOTSI 
 END as serum_total_folate_nmol_l, 

CASE
            WHEN LBDFOT IS NULL THEN NULL 
ELSE LBDFOT 
 END as serum_total_folate_ng_ml, 

CASE
            WHEN LBXSF1SI IS NULL THEN NULL 
ELSE LBXSF1SI 
 END as lab_5_methyl_tetrahydrofolate_nmol_l, 

CASE
            WHEN LBDSF1LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF1LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF1LC IS NULL THEN NULL 
ELSE LBDSF1LC 
 END as lab_5_methyl_tetrahydrofolate_cmt, 

CASE
            WHEN LBXSF2SI IS NULL THEN NULL 
ELSE LBXSF2SI 
 END as folic_acid_nmol_l, 

CASE
            WHEN LBDSF2LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF2LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF2LC IS NULL THEN NULL 
ELSE LBDSF2LC 
 END as folic_acid_cmt, 

CASE
            WHEN LBXSF3SI IS NULL THEN NULL 
ELSE LBXSF3SI 
 END as lab_5_formyl_tetrahydrofolate_nmol_l, 

CASE
            WHEN LBDSF3LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF3LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF3LC IS NULL THEN NULL 
ELSE LBDSF3LC 
 END as lab_5_formyl_tetrahydrofolate_cmt, 

CASE
            WHEN LBXSF4SI IS NULL THEN NULL 
ELSE LBXSF4SI 
 END as tetrahydrofolate_nmol_l, 

CASE
            WHEN LBDSF4LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF4LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF4LC IS NULL THEN NULL 
ELSE LBDSF4LC 
 END as tetrahydrofolate_cmt, 

CASE
            WHEN LBXSF5SI IS NULL THEN NULL 
ELSE LBXSF5SI 
 END as lab_5_10_methenyl_tetrahydrofolate_nmol_l, 

CASE
            WHEN LBDSF5LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF5LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF5LC IS NULL THEN NULL 
ELSE LBDSF5LC 
 END as lab_5_10_methenyl_tetrahydrofolate_cmt, 

CASE
            WHEN LBXSF6SI IS NULL THEN NULL 
ELSE LBXSF6SI 
 END as mefox_oxidation_product_nmol_l, 

CASE
            WHEN LBDSF6LC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN LBDSF6LC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDSF6LC IS NULL THEN NULL 
ELSE LBDSF6LC 
 END as mefox_oxidation_product_cmt, 

 FROM {{ ref('stg_folate_forms_total_individual_serum_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FOLFMS_J.htm
        