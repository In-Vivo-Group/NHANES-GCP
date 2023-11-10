SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) 
WHEN WTFOL2YR IS NOT NULL THEN SAFE_CAST(WTFOL2YR AS FLOAT64) 
WHEN WTFOL2YR IS NULL THEN NULL 
ELSE NULL 
 END as folate_and_folate_forms_weight, 

CASE
        WHEN LBDFOTSI IS NOT NULL THEN LBDFOTSI 
WHEN LBDFOTSI IS NULL THEN NULL 
ELSE NULL 
 END as serum_total_folate_nmol_l, 

CASE
        WHEN LBDFOT IS NOT NULL THEN LBDFOT 
WHEN LBDFOT IS NULL THEN NULL 
ELSE NULL 
 END as serum_total_folate_ng_ml, 

CASE
        WHEN LBXSF1SI IS NOT NULL THEN LBXSF1SI 
WHEN LBXSF1SI IS NULL THEN NULL 
ELSE NULL 
 END as 5_methyl_tetrahydrofolate_nmol_l, 

CASE
        WHEN LBDSF1LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF1LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF1LC IS NULL THEN NULL 
ELSE NULL 
 END as 5_methyl_tetrahydrofolate_cmt, 

CASE
        WHEN LBXSF2SI IS NOT NULL THEN LBXSF2SI 
WHEN LBXSF2SI IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_nmol_l, 

CASE
        WHEN LBDSF2LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF2LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF2LC IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_cmt, 

CASE
        WHEN LBXSF3SI IS NOT NULL THEN LBXSF3SI 
WHEN LBXSF3SI IS NULL THEN NULL 
ELSE NULL 
 END as 5_formyl_tetrahydrofolate_nmol_l, 

CASE
        WHEN LBDSF3LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF3LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF3LC IS NULL THEN NULL 
ELSE NULL 
 END as 5_formyl_tetrahydrofolate_cmt, 

CASE
        WHEN LBXSF4SI IS NOT NULL THEN LBXSF4SI 
WHEN LBXSF4SI IS NULL THEN NULL 
ELSE NULL 
 END as tetrahydrofolate_nmol_l, 

CASE
        WHEN LBDSF4LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF4LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF4LC IS NULL THEN NULL 
ELSE NULL 
 END as tetrahydrofolate_cmt, 

CASE
        WHEN LBXSF5SI IS NOT NULL THEN LBXSF5SI 
WHEN LBXSF5SI IS NULL THEN NULL 
ELSE NULL 
 END as 5_10_methenyl_tetrahydrofolate_nmol_l, 

CASE
        WHEN LBDSF5LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF5LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF5LC IS NULL THEN NULL 
ELSE NULL 
 END as 5_10_methenyl_tetrahydrofolate_cmt, 

CASE
        WHEN LBXSF6SI IS NOT NULL THEN LBXSF6SI 
WHEN LBXSF6SI IS NULL THEN NULL 
ELSE NULL 
 END as mefox_oxidation_product_nmol_l, 

CASE
        WHEN LBDSF6LC = 0 THEN 'At or above the detection limit' 
WHEN LBDSF6LC = 1 THEN 'Below lower detection limit' 
WHEN LBDSF6LC IS NULL THEN NULL 
ELSE NULL 
 END as mefox_oxidation_product_cmt, 

 FROM {{ ref('stg_folate_forms_total_individual_serum_laboratory') }}