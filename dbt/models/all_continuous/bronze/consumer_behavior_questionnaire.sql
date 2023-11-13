SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(CBD071 AS FLOAT64) > 4285.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD071 IS NULL THEN NULL 
ELSE CBD071 
 END as money_spent_at_supermarket_grocery_store, 

CASE
            WHEN SAFE_CAST(CBD091 AS FLOAT64) > 857.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD091 IS NULL THEN NULL 
ELSE CBD091 
 END as money_spent_on_nonfood_items, 

CASE
            WHEN SAFE_CAST(CBD111 AS FLOAT64) > 3000.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD111 IS NULL THEN NULL 
ELSE CBD111 
 END as money_spent_on_food_at_other_stores, 

CASE
            WHEN SAFE_CAST(CBD121 AS FLOAT64) > 5200.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD121 IS NULL THEN NULL 
ELSE CBD121 
 END as money_spent_on_eating_out, 

CASE
            WHEN SAFE_CAST(CBD131 AS FLOAT64) > 950.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD131 IS NULL THEN NULL 
ELSE CBD131 
 END as money_spent_on_carryout_delivered_foods, 

 FROM {{ ref('stg_consumer_behavior_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CBQ_J.htm
        