SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN RXDUSE = '1' THEN 'Yes' -- categorize string values 
WHEN RXDUSE = '2' THEN 'No' -- categorize string values 
WHEN RXDUSE = '7' THEN 'Refused' -- categorize string values 
WHEN RXDUSE = '9' THEN 'Dont know' -- categorize string values 
WHEN RXDUSE IS NULL THEN NULL 
ELSE RXDUSE 
 END as taken_prescription_medicine_past_month, 

CASE
            WHEN RXDDRUG = 'Generic drug name' THEN 'Value was recorded' -- categorize string values 
WHEN RXDDRUG = '55555' THEN 'Unknown' -- categorize string values 
WHEN RXDDRUG = '77777' THEN 'Refused' -- categorize string values 
WHEN RXDDRUG = '99999' THEN 'Dont know' -- categorize string values 
WHEN RXDDRUG IS NULL THEN NULL 
ELSE RXDDRUG 
 END as generic_drug_name, 

CASE
            WHEN RXDDRGID = 'Generic drug code' THEN 'Value was recorded' -- categorize string values 
WHEN RXDDRGID IS NULL THEN NULL 
ELSE RXDDRGID 
 END as generic_drug_code, 

CASE
            WHEN RXQSEEN = '1' THEN 'Yes' -- categorize string values 
WHEN RXQSEEN = '2' THEN 'No' -- categorize string values 
WHEN RXQSEEN = '3' THEN 'Only pharmacy print out seen' -- categorize string values 
WHEN RXQSEEN IS NULL THEN NULL 
ELSE RXQSEEN 
 END as medicine_container_seen_by_interviewer, 

CASE
            WHEN SAFE_CAST(RXDDAYS AS FLOAT64) > 21900.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RXDDAYS IS NULL THEN NULL 
ELSE RXDDAYS 
 END as number_of_days_taken_medicine, 

CASE
            WHEN RXDRSC1 = 'ICD-10-CM code 1' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSC1 = '55555' THEN 'Unknown' -- categorize string values 
WHEN RXDRSC1 = '77777' THEN 'Refused' -- categorize string values 
WHEN RXDRSC1 = '99999' THEN 'Dont know' -- categorize string values 
WHEN RXDRSC1 IS NULL THEN NULL 
ELSE RXDRSC1 
 END as icd_10_cm_code_1, 

CASE
            WHEN RXDRSC2 = 'ICD-10-CM code 2' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSC2 IS NULL THEN NULL 
ELSE RXDRSC2 
 END as icd_10_cm_code_2, 

CASE
            WHEN RXDRSC3 = 'ICD-10-CM code 3' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSC3 IS NULL THEN NULL 
ELSE RXDRSC3 
 END as icd_10_cm_code_3, 

CASE
            WHEN RXDRSD1 = 'ICD-10-CM code 1 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD1 IS NULL THEN NULL 
ELSE RXDRSD1 
 END as icd_10_cm_code_1_description, 

CASE
            WHEN RXDRSD2 = 'ICD-10-CM code 2 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD2 IS NULL THEN NULL 
ELSE RXDRSD2 
 END as icd_10_cm_code_2_description, 

CASE
            WHEN RXDRSD3 = 'ICD-10-CM code 3 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD3 IS NULL THEN NULL 
ELSE RXDRSD3 
 END as icd_10_cm_code_3_description, 

CASE
            WHEN RXDCOUNT IS NOT NULL THEN SAFE_CAST(RXDCOUNT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RXDCOUNT IS NULL THEN NULL 
ELSE RXDCOUNT 
 END as number_of_prescription_medicines_taken, 

 FROM {{ ref('stg_prescription_medications_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/RXQ_RX_J.htm
        