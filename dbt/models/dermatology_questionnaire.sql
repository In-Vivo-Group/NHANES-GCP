SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN DED031 = 1 THEN 'Get a severe sunburn with blisters' 
WHEN DED031 = 2 THEN 'A severe sunburn for a few days with peeling' 
WHEN DED031 = 3 THEN 'Mildly burned with some tanning' 
WHEN DED031 = 4 THEN 'Turning darker without a sunburn' 
WHEN DED031 = 5 THEN 'Nothing would happen in half an hour' 
WHEN DED031 = 6 THEN 'Other' 
WHEN DED031 = 77 THEN 'Refused' 
WHEN DED031 = 99 THEN 'Don't know' 
WHEN DED031 IS NULL THEN NULL 
ELSE NULL 
 END as skin_reaction_to_sun_after_non_exposure,
CASE
    WHEN DEQ034A = 1 THEN 'Always' 
WHEN DEQ034A = 2 THEN 'Most of the time' 
WHEN DEQ034A = 3 THEN 'Sometimes' 
WHEN DEQ034A = 4 THEN 'Rarely, or' 
WHEN DEQ034A = 5 THEN 'Never?' 
WHEN DEQ034A = 6 THEN 'Don't go out in the sun' 
WHEN DEQ034A = 77 THEN 'Refused' 
WHEN DEQ034A = 99 THEN 'Don't know' 
WHEN DEQ034A IS NULL THEN NULL 
ELSE NULL 
 END as stay_in_the_shade,
CASE
    WHEN DEQ034C = 1 THEN 'Always' 
WHEN DEQ034C = 2 THEN 'Most of the time' 
WHEN DEQ034C = 3 THEN 'Sometimes' 
WHEN DEQ034C = 4 THEN 'Rarely, or' 
WHEN DEQ034C = 5 THEN 'Never?' 
WHEN DEQ034C = 7 THEN 'Refused' 
WHEN DEQ034C = 9 THEN 'Don't know' 
WHEN DEQ034C IS NULL THEN NULL 
ELSE NULL 
 END as wear_a_long_sleeved_shirt,
CASE
    WHEN DEQ034D = 1 THEN 'Always' 
WHEN DEQ034D = 2 THEN 'Most of the time' 
WHEN DEQ034D = 3 THEN 'Sometimes' 
WHEN DEQ034D = 4 THEN 'Rarely, or' 
WHEN DEQ034D = 5 THEN 'Never?' 
WHEN DEQ034D = 7 THEN 'Refused' 
WHEN DEQ034D = 9 THEN 'Don't know' 
WHEN DEQ034D IS NULL THEN NULL 
ELSE NULL 
 END as use_sunscreen,
CASE
    WHEN DEQ038G = 1 THEN 'Enter number' 
WHEN DEQ038G = 2 THEN 'Never' 
WHEN DEQ038G = 7 THEN 'Refused' 
WHEN DEQ038G = 9 THEN 'Don't know' 
WHEN DEQ038G IS NULL THEN NULL 
ELSE NULL 
 END as in_past_yr_did_you_have_sunburn,
WHEN DEQ038Q IS NOT NULL THEN SAFE_CAST(DEQ038Q AS FLOAT64)WHEN DEQ038Q IS NULL THEN NULL 
ELSE NULL 
 END as of_times_in_past_yr_you_had_a_sunburn,
WHEN DED120 IS NOT NULL THEN SAFE_CAST(DED120 AS FLOAT64)WHEN DED120 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_outdoors_9am_5pm_work_day,
WHEN DED125 IS NOT NULL THEN SAFE_CAST(DED125 AS FLOAT64)WHEN DED125 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_outdoors_9am_5pm_not_work_day,
 FROM {ref('stg_dermatology_questionnaire'})