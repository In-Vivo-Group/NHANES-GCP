SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE WTSB2YR 
 END as environmental_b_2_year_weights, 

CASE
    WHEN URXBCPP IS NULL THEN NULL 
ELSE URXBCPP 
 END as bis_1_chloro_2_propyl_phosphate, 

CASE
    WHEN URDBCPLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDBCPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBCPLC IS NULL THEN NULL 
ELSE URDBCPLC 
 END as bis_1_chloro_2_propyl_phosphate_comt, 

CASE
    WHEN URXBCEP IS NULL THEN NULL 
ELSE URXBCEP 
 END as bis_2_chloroethyl_phosphate, 

CASE
    WHEN URDCEPLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDCEPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCEPLC IS NULL THEN NULL 
ELSE URDCEPLC 
 END as bis_2_chloroethyl_phosphate_comt_code, 

CASE
    WHEN URXBDCP IS NULL THEN NULL 
ELSE URXBDCP 
 END as bis_1_3_dichloro_2_propyl_phosphate, 

CASE
    WHEN URDBDCLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDBDCLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBDCLC IS NULL THEN NULL 
ELSE URDBDCLC 
 END as bis_1_3_dichloro_2_propyl_phosph_comt, 

CASE
    WHEN URXDBUP IS NULL THEN NULL 
ELSE URXDBUP 
 END as dibutyl_phosphate, 

CASE
    WHEN URDDUPLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDDUPLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDUPLC IS NULL THEN NULL 
ELSE URDDUPLC 
 END as dibutyl_phosphate_comment_code, 

CASE
    WHEN URXDPHP IS NULL THEN NULL 
ELSE URXDPHP 
 END as diphenyl_phosphate, 

CASE
    WHEN URDDPHLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDDPHLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDDPHLC IS NULL THEN NULL 
ELSE URDDPHLC 
 END as diphenyl_phosphate_comment_code, 

CASE
    WHEN URXTBBA IS NULL THEN NULL 
ELSE URXTBBA 
 END as laboratory_2_3_4_5_tetrabromobenzoic_acid, 

CASE
    WHEN URDBBALC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDBBALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBBALC IS NULL THEN NULL 
ELSE URDBBALC 
 END as laboratory_2_3_4_5_tetrabromobenzoic_acid_comt_code, 

 FROM {{ ref('stg_flame_retardants_urine_laboratory') }}

-- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FR_J.htm
