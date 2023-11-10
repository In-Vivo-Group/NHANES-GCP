SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN IMQ011 = '1' THEN 'Yes, at least 2 doses' 
WHEN IMQ011 = '2' THEN 'Less than 2 doses' 
WHEN IMQ011 = '3' THEN 'No doses' 
WHEN IMQ011 = '7' THEN 'Refused' 
WHEN IMQ011 = '9' THEN 'Dont know' 
WHEN IMQ011 IS NULL THEN NULL 
ELSE NULL 
 END as received_hepatitis_a_vaccine, 

CASE
        WHEN IMQ020 = 1 THEN 'Yes at least 3 doses' 
WHEN IMQ020 = 2 THEN 'Less than 3 doses' 
WHEN IMQ020 = 3 THEN 'No doses' 
WHEN IMQ020 = 7 THEN 'Refused' 
WHEN IMQ020 = 9 THEN 'Dont know' 
WHEN IMQ020 IS NULL THEN NULL 
ELSE NULL 
 END as received_hepatitis_b_3_dose_series, 

CASE
        WHEN IMQ060 = '1' THEN 'Yes' 
WHEN IMQ060 = '2' THEN 'No' 
WHEN IMQ060 = '7' THEN 'Refused' 
WHEN IMQ060 = '9' THEN 'Dont know' 
WHEN IMQ060 IS NULL THEN NULL 
ELSE NULL 
 END as received_hpv_vaccine_females, 

CASE
        WHEN IMQ070 = '1' THEN 'Yes' 
WHEN IMQ070 = '2' THEN 'No' 
WHEN IMQ070 = '7' THEN 'Refused' 
WHEN IMQ070 = '9' THEN 'Dont know' 
WHEN IMQ070 IS NULL THEN NULL 
ELSE NULL 
 END as received_hpv_vaccine_males, 

CASE
        WHEN IMQ081A = '1' THEN 'CERVARIX' 
WHEN IMQ081A = '7' THEN 'Refused' 
WHEN IMQ081A = '9' THEN 'Dont know' 
WHEN IMQ081A IS NULL THEN NULL 
ELSE NULL 
 END as received_cervarix_females, 

CASE
        WHEN IMQ081B = '2' THEN 'GARDASIL' 
WHEN IMQ081B IS NULL THEN NULL 
ELSE NULL 
 END as received_gardasil_females, 

CASE
        WHEN IMQ081C = '3' THEN 'GARDASIL 9' 
WHEN IMQ081C IS NULL THEN NULL 
ELSE NULL 
 END as received_gardasil_9_females, 

CASE
        WHEN IMQ081D = '4' THEN 'GARDASIL (not sure wich one)' 
WHEN IMQ081D IS NULL THEN NULL 
ELSE NULL 
 END as received_unknown_gardasil_females, 

CASE
        WHEN IMQ090 IS NOT NULL THEN SAFE_CAST(IMQ090 AS FLOAT64) 
WHEN IMQ090 IS NOT NULL THEN SAFE_CAST(IMQ090 AS FLOAT64) 
WHEN IMQ090 IS NOT NULL THEN SAFE_CAST(IMQ090 AS FLOAT64) 
WHEN IMQ090 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_dose_hpv, 

CASE
        WHEN IMQ100 = '1' THEN '1 Dose' 
WHEN IMQ100 = '2' THEN '2 Doses' 
WHEN IMQ100 = '3' THEN '3 Doses' 
WHEN IMQ100 = '7' THEN 'Refused' 
WHEN IMQ100 = '9' THEN 'Dont know' 
WHEN IMQ100 IS NULL THEN NULL 
ELSE NULL 
 END as received_hpv_of_doses, 

 FROM {{ ref('stg_immunization_questionnaire') }}