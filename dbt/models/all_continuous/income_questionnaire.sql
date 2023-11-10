SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN INQ020 = 1 THEN 'Yes' 
WHEN INQ020 = 2 THEN 'No' 
WHEN INQ020 = 7 THEN 'Refused' 
WHEN INQ020 = 9 THEN 'Don\'t know' 
WHEN INQ020 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_wages_salaries,
CASE
        WHEN INQ012 = 1 THEN 'Yes' 
WHEN INQ012 = 2 THEN 'No' 
WHEN INQ012 = 7 THEN 'Refused' 
WHEN INQ012 = 9 THEN 'Don\'t know' 
WHEN INQ012 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_self_employment,
CASE
        WHEN INQ030 = 1 THEN 'Yes' 
WHEN INQ030 = 2 THEN 'No' 
WHEN INQ030 = 7 THEN 'Refused' 
WHEN INQ030 = 9 THEN 'Don\'t know' 
WHEN INQ030 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_social_security_or_rr,
CASE
        WHEN INQ060 = 1 THEN 'Yes' 
WHEN INQ060 = 2 THEN 'No' 
WHEN INQ060 = 7 THEN 'Refused' 
WHEN INQ060 = 9 THEN 'Don\'t know' 
WHEN INQ060 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_other_disability_pension,
CASE
        WHEN INQ080 = 1 THEN 'Yes' 
WHEN INQ080 = 2 THEN 'No' 
WHEN INQ080 = 7 THEN 'Refused' 
WHEN INQ080 = 9 THEN 'Don\'t know' 
WHEN INQ080 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_retirement_survivor_pension,
CASE
        WHEN INQ090 = 1 THEN 'Yes' 
WHEN INQ090 = 2 THEN 'No' 
WHEN INQ090 = 7 THEN 'Refused' 
WHEN INQ090 = 9 THEN 'Don\'t know' 
WHEN INQ090 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_supplemental_security_income,
CASE
        WHEN INQ132 = 1 THEN 'Yes' 
WHEN INQ132 = 2 THEN 'No' 
WHEN INQ132 = 7 THEN 'Refused' 
WHEN INQ132 = 9 THEN 'Don\'t know' 
WHEN INQ132 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_state_county_cash_assistance,
CASE
        WHEN INQ140 = 1 THEN 'Yes' 
WHEN INQ140 = 2 THEN 'No' 
WHEN INQ140 = 7 THEN 'Refused' 
WHEN INQ140 = 9 THEN 'Don\'t know' 
WHEN INQ140 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_interest_dividends_or_rental,
CASE
        WHEN INQ150 = 1 THEN 'Yes' 
WHEN INQ150 = 2 THEN 'No' 
WHEN INQ150 = 7 THEN 'Refused' 
WHEN INQ150 = 9 THEN 'Don\'t know' 
WHEN INQ150 IS NULL THEN NULL 
ELSE NULL 
 END as income_from_other_sources,
CASE
        WHEN IND235 = 1 THEN '$0 - $399' 
WHEN IND235 = 2 THEN '$400 - $799' 
WHEN IND235 = 3 THEN '$800 - $1,249' 
WHEN IND235 = 4 THEN '$1,250 - $1,649' 
WHEN IND235 = 5 THEN '$1,650 - $2,099' 
WHEN IND235 = 6 THEN '$2,100 - $2,899' 
WHEN IND235 = 7 THEN '$2,900 - $3,749' 
WHEN IND235 = 8 THEN '$3,750 - $4,599' 
WHEN IND235 = 9 THEN '$4,600 - $5,399' 
WHEN IND235 = 10 THEN '$5,400 - $6,249' 
WHEN IND235 = 11 THEN '$6,250 - $8,399' 
WHEN IND235 = 12 THEN '$8,400 and over' 
WHEN IND235 = 77 THEN 'Refused' 
WHEN IND235 = 99 THEN 'Don\'t know' 
WHEN IND235 IS NULL THEN NULL 
ELSE NULL 
 END as monthly_family_income,
WHEN INDFMMPI IS NOT NULL THEN INDFMMPIWHEN INDFMMPI IS NULL THEN NULL 
ELSE NULL 
 END as family_monthly_poverty_level_index,
CASE
        WHEN INDFMMPC = 1 THEN 'Monthly poverty level index <= 1.30' 
WHEN INDFMMPC = 2 THEN '1.30 < Monthly poverty level index <= 1.85' 
WHEN INDFMMPC = 3 THEN 'Monthly poverty level index > 1.85' 
WHEN INDFMMPC = 7 THEN 'Refused' 
WHEN INDFMMPC = 9 THEN 'Don\'t know' 
WHEN INDFMMPC IS NULL THEN NULL 
ELSE NULL 
 END as family_monthly_poverty_level_category,
CASE
        WHEN INQ300 = '1' THEN 'Yes' 
WHEN INQ300 = '2' THEN 'No' 
WHEN INQ300 = '7' THEN 'Refused' 
WHEN INQ300 = '9' THEN 'Don\'t know' 
WHEN INQ300 IS NULL THEN NULL 
ELSE NULL 
 END as family_has_savings_more_than_20_000,
CASE
        WHEN IND310 = '1' THEN '$0 - $3,000' 
WHEN IND310 = '2' THEN '$3,001 - $5,000' 
WHEN IND310 = '3' THEN '$5,001 - $10,000' 
WHEN IND310 = '4' THEN '$10,001 - $15,000' 
WHEN IND310 = '5' THEN '$15,001 - $20,000' 
WHEN IND310 = '77' THEN 'Refused' 
WHEN IND310 = '99' THEN 'Don\'t know' 
WHEN IND310 IS NULL THEN NULL 
ELSE NULL 
 END as total_savings_cash_assets_for_the_family,
CASE
        WHEN INQ320 = '1' THEN 'In my car' 
WHEN INQ320 = '2' THEN 'In a car that belongs to someone I live with' 
WHEN INQ320 = '3' THEN 'In a car that belongs to someone who lives elsewhere' 
WHEN INQ320 = '4' THEN 'Walk' 
WHEN INQ320 = '5' THEN 'Ride bicycle' 
WHEN INQ320 = '6' THEN 'Bus, subway or other public transit' 
WHEN INQ320 = '7' THEN 'Taxi or other paid driver' 
WHEN INQ320 = '8' THEN 'Someone else delivers groceries' 
WHEN INQ320 = '9' THEN 'Other' 
WHEN INQ320 = '66' THEN 'No usual mode of traveling to store' 
WHEN INQ320 = '77' THEN 'Refused' 
WHEN INQ320 = '99' THEN 'Don\'t know' 
WHEN INQ320 IS NULL THEN NULL 
ELSE NULL 
 END as how_do_you_get_to_the_grocery_store,
 FROM {{ ref('stg_income_questionnaire') }}