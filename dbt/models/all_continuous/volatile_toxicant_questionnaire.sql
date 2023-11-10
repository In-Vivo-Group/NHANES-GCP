SELECT
SEQN as respondent_sequence_number,
WHEN WTSVOC2Y IS NOT NULL THEN WTSVOC2YWHEN WTSVOC2Y IS NULL THEN NULL 
ELSE NULL 
 END as voc_subsample_weight,
CASE
        WHEN VTQ210 = 1 THEN 'Yes' 
WHEN VTQ210 = 2 THEN 'No' 
WHEN VTQ210 = 7 THEN 'Refused' 
WHEN VTQ210 = 9 THEN 'Don\'t know' 
WHEN VTQ210 IS NULL THEN NULL 
ELSE NULL 
 END as attached_garage,
CASE
        WHEN VTQ200A = 1 THEN 'Yes' 
WHEN VTQ200A = 2 THEN 'No' 
WHEN VTQ200A = 7 THEN 'Refused' 
WHEN VTQ200A = 9 THEN 'Don\'t know' 
WHEN VTQ200A IS NULL THEN NULL 
ELSE NULL 
 END as store_paints_or_fuels_inside_home,
CASE
        WHEN VTQ231A = 1 THEN 'Yes' 
WHEN VTQ231A = 2 THEN 'No' 
WHEN VTQ231A = 7 THEN 'Refused' 
WHEN VTQ231A = 9 THEN 'Don\'t know' 
WHEN VTQ231A IS NULL THEN NULL 
ELSE NULL 
 END as use_moth_balls_or_toilet_deodorizers,
CASE
        WHEN VTQ233A = 1 THEN 'Yes' 
WHEN VTQ233A = 2 THEN 'No' 
WHEN VTQ233A = 7 THEN 'Refused' 
WHEN VTQ233A = 9 THEN 'Don\'t know' 
WHEN VTQ233A IS NULL THEN NULL 
ELSE NULL 
 END as past_3_days_inhale_smoke_for_10_minutes,
CASE
        WHEN VTQ233B = 1 THEN 'Today' 
WHEN VTQ233B = 2 THEN 'Yesterday' 
WHEN VTQ233B = 3 THEN 'More than 2 days' 
WHEN VTQ233B = 7 THEN 'Refused' 
WHEN VTQ233B = 9 THEN 'Don\'t know' 
WHEN VTQ233B IS NULL THEN NULL 
ELSE NULL 
 END as when_did_you_last_inhale_smoke_for_10min,
CASE
        WHEN VTQ241A = 1 THEN 'Yes' 
WHEN VTQ241A = 2 THEN 'No' 
WHEN VTQ241A = 7 THEN 'Refused' 
WHEN VTQ241A = 9 THEN 'Don\'t know' 
WHEN VTQ241A IS NULL THEN NULL 
ELSE NULL 
 END as did_you_cook_with_natural_gas,
WHEN VTD241B IS NOT NULL THEN VTD241BWHEN VTD241B IS NULL THEN NULL 
ELSE NULL 
 END as long_ago_did_you_cook_with_natural_gas,
CASE
        WHEN VTQ244A = 1 THEN 'Yes' 
WHEN VTQ244A = 2 THEN 'No' 
WHEN VTQ244A = 7 THEN 'Refused' 
WHEN VTQ244A = 9 THEN 'Don\'t know' 
WHEN VTQ244A IS NULL THEN NULL 
ELSE NULL 
 END as did_you_pump_gas_into_your_car,
WHEN VTD244B IS NOT NULL THEN VTD244BWHEN VTD244B IS NULL THEN NULL 
ELSE NULL 
 END as long_ago_did_you_pump_gas_in_your_car,
CASE
        WHEN VTQ251A = 1 THEN 'Yes' 
WHEN VTQ251A = 2 THEN 'No' 
WHEN VTQ251A = 7 THEN 'Refused' 
WHEN VTQ251A = 9 THEN 'Don\'t know' 
WHEN VTQ251A IS NULL THEN NULL 
ELSE NULL 
 END as spend_time_in_pool_hot_tub_steam_room,
WHEN VTD251B IS NOT NULL THEN VTD251BWHEN VTD251B IS NULL THEN NULL 
ELSE NULL 
 END as how_long_ago_since_at_pool_hot_tub,
CASE
        WHEN VTQ261A = 1 THEN 'Yes' 
WHEN VTQ261A = 2 THEN 'No' 
WHEN VTQ261A = 7 THEN 'Refused' 
WHEN VTQ261A = 9 THEN 'Don\'t know' 
WHEN VTQ261A IS NULL THEN NULL 
ELSE NULL 
 END as in_last_48_hrs_use_dry_cleaning_solvent,
WHEN VTD261B IS NOT NULL THEN VTD261BWHEN VTD261B IS NULL THEN NULL 
ELSE NULL 
 END as long_since_use_dry_cleaning_solvents,
CASE
        WHEN VTQ271A = 1 THEN 'Yes' 
WHEN VTQ271A = 2 THEN 'No' 
WHEN VTQ271A = 7 THEN 'Refused' 
WHEN VTQ271A = 9 THEN 'Don\'t know' 
WHEN VTQ271A IS NULL THEN NULL 
ELSE NULL 
 END as in_last_48_hrs_bathe_for_5_minutes,
WHEN VTD271B IS NOT NULL THEN VTD271BWHEN VTD271B IS NULL THEN NULL 
ELSE NULL 
 END as how_long_in_hrs_since_you_bathed,
CASE
        WHEN VTQ281A = 1 THEN 'Yes' 
WHEN VTQ281A = 2 THEN 'No' 
WHEN VTQ281A = 7 THEN 'Refused' 
WHEN VTQ281A = 9 THEN 'Don\'t know' 
WHEN VTQ281A IS NULL THEN NULL 
ELSE NULL 
 END as in_past_48_hrs_breathe_paint_fumes,
WHEN VTD281B IS NOT NULL THEN VTD281BWHEN VTD281B IS NULL THEN NULL 
ELSE NULL 
 END as how_long_since_breathed_paint_fumes,
CASE
        WHEN VTQ281C = 1 THEN 'Yes' 
WHEN VTQ281C = 2 THEN 'No' 
WHEN VTQ281C = 7 THEN 'Refused' 
WHEN VTQ281C = 9 THEN 'Don\'t know' 
WHEN VTQ281C IS NULL THEN NULL 
ELSE NULL 
 END as in_past_48_hrs_breathe_diesel_fumes,
WHEN VTD281D IS NOT NULL THEN VTD281DWHEN VTD281D IS NULL THEN NULL 
ELSE NULL 
 END as how_long_since_breathed_diesel_fumes,
CASE
        WHEN VTQ281E = 1 THEN 'Yes' 
WHEN VTQ281E = 2 THEN 'No' 
WHEN VTQ281E = 7 THEN 'Refused' 
WHEN VTQ281E = 9 THEN 'Don\'t know' 
WHEN VTQ281E IS NULL THEN NULL 
ELSE NULL 
 END as breathe_fingernail_polish_fumes,
WHEN VTD281F IS NOT NULL THEN VTD281FWHEN VTD281F IS NULL THEN NULL 
ELSE NULL 
 END as how_long_since_breathed_polish_fumes,
 FROM {{ ref('stg_volatile_toxicant_questionnaire') }}