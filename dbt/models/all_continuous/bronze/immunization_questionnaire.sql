SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN IMQ011 = '1' THEN 'Yes, at least 2 doses' -- categorize string values 
WHEN IMQ011 = '2' THEN 'Less than 2 doses' -- categorize string values 
WHEN IMQ011 = '3' THEN 'No doses' -- categorize string values 
WHEN IMQ011 = '7' THEN 'Refused' -- categorize string values 
WHEN IMQ011 = '9' THEN 'Dont know' -- categorize string values 
WHEN IMQ011 IS NULL THEN NULL 
ELSE IMQ011 
 END as received_hepatitis_a_vaccine, 

CASE
            WHEN IMQ020 = 1 THEN 'Yes at least 3 doses' -- categorize numeric values
WHEN IMQ020 = 2 THEN 'Less than 3 doses' -- categorize numeric values
WHEN IMQ020 = 3 THEN 'No doses' -- categorize numeric values
WHEN IMQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN IMQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN IMQ020 IS NULL THEN NULL 
ELSE IMQ020 
 END as received_hepatitis_b_3_dose_series, 

IMQ050 as IMQ050, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN IMQ060 = '1' THEN 'Yes' -- categorize string values 
WHEN IMQ060 = '2' THEN 'No' -- categorize string values 
WHEN IMQ060 = '7' THEN 'Refused' -- categorize string values 
WHEN IMQ060 = '9' THEN 'Dont know' -- categorize string values 
WHEN IMQ060 IS NULL THEN NULL 
ELSE IMQ060 
 END as received_hpv_vaccine_females, 

CASE
            WHEN IMQ070 = '1' THEN 'Yes' -- categorize string values 
WHEN IMQ070 = '2' THEN 'No' -- categorize string values 
WHEN IMQ070 = '7' THEN 'Refused' -- categorize string values 
WHEN IMQ070 = '9' THEN 'Dont know' -- categorize string values 
WHEN IMQ070 IS NULL THEN NULL 
ELSE IMQ070 
 END as received_hpv_vaccine_males, 

CASE
            WHEN IMQ081A = '1' THEN 'CERVARIX' -- categorize string values 
WHEN IMQ081A = '7' THEN 'Refused' -- categorize string values 
WHEN IMQ081A = '9' THEN 'Dont know' -- categorize string values 
WHEN IMQ081A IS NULL THEN NULL 
ELSE IMQ081A 
 END as received_cervarix_females, 

CASE
            WHEN IMQ081B = '2' THEN 'GARDASIL' -- categorize string values 
WHEN IMQ081B IS NULL THEN NULL 
ELSE IMQ081B 
 END as received_gardasil_females, 

CASE
            WHEN IMQ081C = '3' THEN 'GARDASIL 9' -- categorize string values 
WHEN IMQ081C IS NULL THEN NULL 
ELSE IMQ081C 
 END as received_gardasil_9_females, 

CASE
            WHEN IMQ081D = '4' THEN 'GARDASIL (not sure wich one)' -- categorize string values 
WHEN IMQ081D IS NULL THEN NULL 
ELSE IMQ081D 
 END as received_unknown_gardasil_females, 

CASE
            WHEN SAFE_CAST(IMQ090 AS FLOAT64) > 57.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN IMQ090 IS NULL THEN NULL 
ELSE IMQ090 
 END as age_first_dose_hpv, 

CASE
            WHEN IMQ100 = '1' THEN '1 Dose' -- categorize string values 
WHEN IMQ100 = '2' THEN '2 Doses' -- categorize string values 
WHEN IMQ100 = '3' THEN '3 Doses' -- categorize string values 
WHEN IMQ100 = '7' THEN 'Refused' -- categorize string values 
WHEN IMQ100 = '9' THEN 'Dont know' -- categorize string values 
WHEN IMQ100 IS NULL THEN NULL 
ELSE IMQ100 
 END as received_hpv_of_doses, 

 FROM {{ ref('stg_immunization_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/IMQ_J.htm
        