SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN WTSA2YRWHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URXUBA IS NOT NULL THEN URXUBAWHEN URXUBA IS NULL THEN NULL 
ELSE NULL 
 END as barium_urine_ug_l,
CASE
        WHEN URDUBALC = 0 THEN 'At or above the detection limit' 
WHEN URDUBALC = 1 THEN 'Below lower detection limit' 
WHEN URDUBALC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_barium_comment_code,
WHEN URXUCD IS NOT NULL THEN URXUCDWHEN URXUCD IS NULL THEN NULL 
ELSE NULL 
 END as cadmium_urine_ug_l,
CASE
        WHEN URDUCDLC = 0 THEN 'At or above the detection limit' 
WHEN URDUCDLC = 1 THEN 'Below lower detection limit' 
WHEN URDUCDLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_cadmium_comment_code,
WHEN URXUCO IS NOT NULL THEN URXUCOWHEN URXUCO IS NULL THEN NULL 
ELSE NULL 
 END as cobalt_urine_ug_l,
CASE
        WHEN URDUCOLC = 0 THEN 'At or above the detection limit' 
WHEN URDUCOLC = 1 THEN 'Below lower detection limit' 
WHEN URDUCOLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_cobalt_comment_code,
WHEN URXUCS IS NOT NULL THEN URXUCSWHEN URXUCS IS NULL THEN NULL 
ELSE NULL 
 END as cesium_urine_ug_l,
CASE
        WHEN URDUCSLC = 0 THEN 'At or above the detection limit' 
WHEN URDUCSLC = 1 THEN 'Below lower detection limit' 
WHEN URDUCSLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_cesium_comment_code,
WHEN URXUMO IS NOT NULL THEN URXUMOWHEN URXUMO IS NULL THEN NULL 
ELSE NULL 
 END as molybdenum_urine_ug_l,
CASE
        WHEN URDUMOLC = 0 THEN 'At or above the detection limit' 
WHEN URDUMOLC = 1 THEN 'Below lower detection limit' 
WHEN URDUMOLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_molybdenum_comment_code,
WHEN URXUMN IS NOT NULL THEN SAFE_CAST(URXUMN AS FLOAT64)WHEN URXUMN IS NULL THEN NULL 
ELSE NULL 
 END as manganese_urine_ug_l,
CASE
        WHEN URDUMNLC = '0' THEN 'At or above the detection limit' 
WHEN URDUMNLC = '1' THEN 'Below lower detection limit' 
WHEN URDUMNLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_mn_comment_code,
WHEN URXUPB IS NOT NULL THEN URXUPBWHEN URXUPB IS NULL THEN NULL 
ELSE NULL 
 END as lead_urine_ug_l,
CASE
        WHEN URDUPBLC = 0 THEN 'At or above the detection limit' 
WHEN URDUPBLC = 1 THEN 'Below lower detection limit' 
WHEN URDUPBLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_lead_comment_code,
WHEN URXUSB IS NOT NULL THEN URXUSBWHEN URXUSB IS NULL THEN NULL 
ELSE NULL 
 END as antimony_urine_ug_l,
CASE
        WHEN URDUSBLC = 0 THEN 'At or above the detection limit' 
WHEN URDUSBLC = 1 THEN 'Below lower detection limit' 
WHEN URDUSBLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_antimony_comment_code,
WHEN URXUSN IS NOT NULL THEN SAFE_CAST(URXUSN AS FLOAT64)WHEN URXUSN IS NULL THEN NULL 
ELSE NULL 
 END as tin_urine_ug_l,
CASE
        WHEN URDUSNLC = '0' THEN 'At or above the detection limit' 
WHEN URDUSNLC = '1' THEN 'Below lower detection limit' 
WHEN URDUSNLC IS NULL THEN NULL 
ELSE NULL 
 END as usn_comment_code,
WHEN URXUTL IS NOT NULL THEN URXUTLWHEN URXUTL IS NULL THEN NULL 
ELSE NULL 
 END as thallium_urine_ug_l,
CASE
        WHEN URDUTLLC = 0 THEN 'At or above the detection limit' 
WHEN URDUTLLC = 1 THEN 'Below lower detection limit' 
WHEN URDUTLLC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_thallium_comment_code,
WHEN URXUTU IS NOT NULL THEN URXUTUWHEN URXUTU IS NULL THEN NULL 
ELSE NULL 
 END as tungsten_urine_ug_l,
CASE
        WHEN URDUTULC = 0 THEN 'At or above the detection limit' 
WHEN URDUTULC = 1 THEN 'Below lower detection limit' 
WHEN URDUTULC IS NULL THEN NULL 
ELSE NULL 
 END as urinary_tungsten_comment_code,
 FROM {{ ref('stg_metals_urine_laboratory') }}