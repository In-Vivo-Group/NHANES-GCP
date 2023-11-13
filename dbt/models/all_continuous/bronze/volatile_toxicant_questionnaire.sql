SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE WTSVOC2Y 
 END as voc_subsample_weight, 

CASE
            WHEN VTQ210 = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ210 = 2 THEN 'No' -- categorize numeric values
WHEN VTQ210 = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ210 = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ210 IS NULL THEN NULL 
ELSE VTQ210 
 END as attached_garage, 

CASE
            WHEN VTQ200A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ200A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ200A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ200A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ200A IS NULL THEN NULL 
ELSE VTQ200A 
 END as store_paints_or_fuels_inside_home, 

CASE
            WHEN VTQ231A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ231A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ231A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ231A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ231A IS NULL THEN NULL 
ELSE VTQ231A 
 END as use_moth_balls_or_toilet_deodorizers, 

CASE
            WHEN VTQ233A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ233A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ233A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ233A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ233A IS NULL THEN NULL 
ELSE VTQ233A 
 END as past_3_days_inhale_smoke_for_10_minutes, 

CASE
            WHEN VTQ233B = 1 THEN 'Today' -- categorize numeric values
WHEN VTQ233B = 2 THEN 'Yesterday' -- categorize numeric values
WHEN VTQ233B = 3 THEN 'More than 2 days' -- categorize numeric values
WHEN VTQ233B = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ233B = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ233B IS NULL THEN NULL 
ELSE VTQ233B 
 END as when_did_you_last_inhale_smoke_for_10min, 

CASE
            WHEN VTQ241A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ241A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ241A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ241A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ241A IS NULL THEN NULL 
ELSE VTQ241A 
 END as did_you_cook_with_natural_gas, 

CASE
            WHEN VTD241B IS NULL THEN NULL 
ELSE VTD241B 
 END as long_ago_did_you_cook_with_natural_gas, 

CASE
            WHEN VTQ244A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ244A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ244A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ244A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ244A IS NULL THEN NULL 
ELSE VTQ244A 
 END as did_you_pump_gas_into_your_car, 

CASE
            WHEN VTD244B IS NULL THEN NULL 
ELSE VTD244B 
 END as long_ago_did_you_pump_gas_in_your_car, 

CASE
            WHEN VTQ251A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ251A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ251A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ251A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ251A IS NULL THEN NULL 
ELSE VTQ251A 
 END as spend_time_in_pool_hot_tub_steam_room, 

CASE
            WHEN VTD251B IS NULL THEN NULL 
ELSE VTD251B 
 END as how_long_ago_since_at_pool_hot_tub, 

CASE
            WHEN VTQ261A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ261A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ261A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ261A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ261A IS NULL THEN NULL 
ELSE VTQ261A 
 END as in_last_48_hrs_use_dry_cleaning_solvent, 

CASE
            WHEN VTD261B IS NULL THEN NULL 
ELSE VTD261B 
 END as long_since_use_dry_cleaning_solvents, 

CASE
            WHEN VTQ271A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ271A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ271A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ271A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ271A IS NULL THEN NULL 
ELSE VTQ271A 
 END as in_last_48_hrs_bathe_for_5_minutes, 

CASE
            WHEN VTD271B IS NULL THEN NULL 
ELSE VTD271B 
 END as how_long_in_hrs_since_you_bathed, 

CASE
            WHEN VTQ281A = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ281A = 2 THEN 'No' -- categorize numeric values
WHEN VTQ281A = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ281A = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ281A IS NULL THEN NULL 
ELSE VTQ281A 
 END as in_past_48_hrs_breathe_paint_fumes, 

CASE
            WHEN VTD281B IS NULL THEN NULL 
ELSE VTD281B 
 END as how_long_since_breathed_paint_fumes, 

CASE
            WHEN VTQ281C = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ281C = 2 THEN 'No' -- categorize numeric values
WHEN VTQ281C = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ281C = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ281C IS NULL THEN NULL 
ELSE VTQ281C 
 END as in_past_48_hrs_breathe_diesel_fumes, 

CASE
            WHEN VTD281D IS NULL THEN NULL 
ELSE VTD281D 
 END as how_long_since_breathed_diesel_fumes, 

CASE
            WHEN VTQ281E = 1 THEN 'Yes' -- categorize numeric values
WHEN VTQ281E = 2 THEN 'No' -- categorize numeric values
WHEN VTQ281E = 7 THEN 'Refused' -- categorize numeric values
WHEN VTQ281E = 9 THEN 'Dont know' -- categorize numeric values
WHEN VTQ281E IS NULL THEN NULL 
ELSE VTQ281E 
 END as breathe_fingernail_polish_fumes, 

CASE
            WHEN VTD281F IS NULL THEN NULL 
ELSE VTD281F 
 END as how_long_since_breathed_polish_fumes, 

 FROM {{ ref('stg_volatile_toxicant_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VTQ_J.htm
        