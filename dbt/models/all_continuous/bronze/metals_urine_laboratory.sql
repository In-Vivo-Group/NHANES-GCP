SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSA2YR = 0 THEN NULL --remove no lab specimen samples from data 
WHEN WTSA2YR IS NULL THEN NULL 
ELSE WTSA2YR 
 END as subsample_a_weights, 

CASE
            WHEN URXUBA IS NULL THEN NULL 
ELSE URXUBA 
 END as barium_urine_ug_l, 

CASE
            WHEN URDUBALC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUBALC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUBALC IS NULL THEN NULL 
ELSE URDUBALC 
 END as urinary_barium_comment_code, 

CASE
            WHEN URXUCD IS NULL THEN NULL 
ELSE URXUCD 
 END as cadmium_urine_ug_l, 

CASE
            WHEN URDUCDLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUCDLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCDLC IS NULL THEN NULL 
ELSE URDUCDLC 
 END as urinary_cadmium_comment_code, 

CASE
            WHEN URXUCO IS NULL THEN NULL 
ELSE URXUCO 
 END as cobalt_urine_ug_l, 

CASE
            WHEN URDUCOLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUCOLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCOLC IS NULL THEN NULL 
ELSE URDUCOLC 
 END as urinary_cobalt_comment_code, 

CASE
            WHEN URXUCS IS NULL THEN NULL 
ELSE URXUCS 
 END as cesium_urine_ug_l, 

CASE
            WHEN URDUCSLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUCSLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUCSLC IS NULL THEN NULL 
ELSE URDUCSLC 
 END as urinary_cesium_comment_code, 

CASE
            WHEN URXUMO IS NULL THEN NULL 
ELSE URXUMO 
 END as molybdenum_urine_ug_l, 

CASE
            WHEN URDUMOLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUMOLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUMOLC IS NULL THEN NULL 
ELSE URDUMOLC 
 END as urinary_molybdenum_comment_code, 

CASE
            WHEN URXUMN IS NOT NULL THEN SAFE_CAST(URXUMN AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUMN IS NULL THEN NULL 
ELSE URXUMN 
 END as manganese_urine_ug_l, 

CASE
            WHEN URDUMNLC = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN URDUMNLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUMNLC IS NULL THEN NULL 
ELSE URDUMNLC 
 END as urinary_mn_comment_code, 

CASE
            WHEN URXUPB IS NULL THEN NULL 
ELSE URXUPB 
 END as lead_urine_ug_l, 

CASE
            WHEN URDUPBLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUPBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUPBLC IS NULL THEN NULL 
ELSE URDUPBLC 
 END as urinary_lead_comment_code, 

CASE
            WHEN URXUSB IS NULL THEN NULL 
ELSE URXUSB 
 END as antimony_urine_ug_l, 

CASE
            WHEN URDUSBLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUSBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUSBLC IS NULL THEN NULL 
ELSE URDUSBLC 
 END as urinary_antimony_comment_code, 

CASE
            WHEN URXUSN IS NOT NULL THEN SAFE_CAST(URXUSN AS FLOAT64) -- correct wrong data types for numerical data 
WHEN URXUSN IS NULL THEN NULL 
ELSE URXUSN 
 END as tin_urine_ug_l, 

CASE
            WHEN URDUSNLC = '0' THEN 'At or above the detection limit' -- categorize string values 
WHEN URDUSNLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN URDUSNLC IS NULL THEN NULL 
ELSE URDUSNLC 
 END as usn_comment_code, 

CASE
            WHEN URXUTL IS NULL THEN NULL 
ELSE URXUTL 
 END as thallium_urine_ug_l, 

CASE
            WHEN URDUTLLC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUTLLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTLLC IS NULL THEN NULL 
ELSE URDUTLLC 
 END as urinary_thallium_comment_code, 

CASE
            WHEN URXUTU IS NULL THEN NULL 
ELSE URXUTU 
 END as tungsten_urine_ug_l, 

CASE
            WHEN URDUTULC = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN URDUTULC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUTULC IS NULL THEN NULL 
ELSE URDUTULC 
 END as urinary_tungsten_comment_code, 

 FROM {{ ref('stg_metals_urine_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UM_J.htm
        