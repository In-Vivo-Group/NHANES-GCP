SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN URXVOL1 IS NULL THEN NULL 
ELSE URXVOL1 
 END as the_volume_of_urine_collection_1_ml, 

CASE
            WHEN URDFLOW1 IS NULL THEN NULL 
ELSE URDFLOW1 
 END as urine_1_flow_rate_ml_min, 

CASE
            WHEN URDTIME1 IS NULL THEN NULL 
ELSE URDTIME1 
 END as minutes_b_w_last_urination_urine_1, 

CASE
            WHEN URXVOL2 IS NULL THEN NULL 
ELSE URXVOL2 
 END as the_volume_of_urine_collection_2_ml, 

CASE
            WHEN URDFLOW2 IS NULL THEN NULL 
ELSE URDFLOW2 
 END as urine_2_flow_rate_ml_min, 

CASE
            WHEN URDTIME2 IS NULL THEN NULL 
ELSE URDTIME2 
 END as minutes_b_w_urine_1_urine_2, 

CASE
            WHEN URXVOL3 IS NULL THEN NULL 
ELSE URXVOL3 
 END as the_volume_of_urine_collection_3_ml, 

CASE
            WHEN URDFLOW3 IS NULL THEN NULL 
ELSE URDFLOW3 
 END as urine_3_flow_rate_ml_min, 

CASE
            WHEN URDTIME3 IS NULL THEN NULL 
ELSE URDTIME3 
 END as minutes_b_w_urine_2_urine_3, 

 FROM {{ ref('stg_urine_flow_rate_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UCFLOW_J.htm
        