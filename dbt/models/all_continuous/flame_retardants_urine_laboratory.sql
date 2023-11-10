SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN WTSB2YR IS NOT NULL THEN WTSB2YR 
WHEN WTSB2YR IS NOT NULL THEN WTSB2YR 
WHEN WTSB2YR IS NULL THEN NULL 
ELSE NULL 
 END as environmental_b_2_year_weights, 

CASE
        WHEN URXBCPP IS NOT NULL THEN URXBCPP 
WHEN URXBCPP IS NULL THEN NULL 
ELSE NULL 
 END as bis_1_chloro_2_propyl_phosphate, 

CASE
        WHEN URDBCPLC = 0 THEN 'At or above the detection limit' 
WHEN URDBCPLC = 1 THEN 'Below lower detection limit' 
WHEN URDBCPLC IS NULL THEN NULL 
ELSE NULL 
 END as bis_1_chloro_2_propyl_phosphate_comt, 

CASE
        WHEN URXBCEP IS NOT NULL THEN URXBCEP 
WHEN URXBCEP IS NULL THEN NULL 
ELSE NULL 
 END as bis_2_chloroethyl_phosphate, 

CASE
        WHEN URDCEPLC = 0 THEN 'At or above the detection limit' 
WHEN URDCEPLC = 1 THEN 'Below lower detection limit' 
WHEN URDCEPLC IS NULL THEN NULL 
ELSE NULL 
 END as bis_2_chloroethyl_phosphate_comt_code, 

CASE
        WHEN URXBDCP IS NOT NULL THEN URXBDCP 
WHEN URXBDCP IS NULL THEN NULL 
ELSE NULL 
 END as bis_1_3_dichloro_2_propyl_phosphate, 

CASE
        WHEN URDBDCLC = 0 THEN 'At or above the detection limit' 
WHEN URDBDCLC = 1 THEN 'Below lower detection limit' 
WHEN URDBDCLC IS NULL THEN NULL 
ELSE NULL 
 END as bis_1_3_dichloro_2_propyl_phosph_comt, 

CASE
        WHEN URXDBUP IS NOT NULL THEN URXDBUP 
WHEN URXDBUP IS NULL THEN NULL 
ELSE NULL 
 END as dibutyl_phosphate, 

CASE
        WHEN URDDUPLC = 0 THEN 'At or above the detection limit' 
WHEN URDDUPLC = 1 THEN 'Below lower detection limit' 
WHEN URDDUPLC IS NULL THEN NULL 
ELSE NULL 
 END as dibutyl_phosphate_comment_code, 

CASE
        WHEN URXDPHP IS NOT NULL THEN URXDPHP 
WHEN URXDPHP IS NULL THEN NULL 
ELSE NULL 
 END as diphenyl_phosphate, 

CASE
        WHEN URDDPHLC = 0 THEN 'At or above the detection limit' 
WHEN URDDPHLC = 1 THEN 'Below lower detection limit' 
WHEN URDDPHLC IS NULL THEN NULL 
ELSE NULL 
 END as diphenyl_phosphate_comment_code, 

CASE
        WHEN URXTBBA IS NOT NULL THEN URXTBBA 
WHEN URXTBBA IS NULL THEN NULL 
ELSE NULL 
 END as 2_3_4_5_tetrabromobenzoic_acid, 

CASE
        WHEN URDBBALC = 0 THEN 'At or above the detection limit' 
WHEN URDBBALC = 1 THEN 'Below lower detection limit' 
WHEN URDBBALC IS NULL THEN NULL 
ELSE NULL 
 END as 2_3_4_5_tetrabromobenzoic_acid_comt_code, 

 FROM {{ ref('stg_flame_retardants_urine_laboratory') }}