SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN RXDUSE = '1' THEN 'Yes' 
WHEN RXDUSE = '2' THEN 'No' 
WHEN RXDUSE = '7' THEN 'Refused' 
WHEN RXDUSE = '9' THEN 'Don\'t know' 
WHEN RXDUSE IS NULL THEN NULL 
ELSE NULL 
 END as taken_prescription_medicine_past_month,
CASE
        WHEN RXDDRUG = 'Generic drug name' THEN 'Value was recorded' 
WHEN RXDDRUG = '55555' THEN 'Unknown' 
WHEN RXDDRUG = '77777' THEN 'Refused' 
WHEN RXDDRUG = '99999' THEN 'Don\'t know' 
WHEN RXDDRUG IS NULL THEN NULL 
ELSE NULL 
 END as generic_drug_name,
CASE
        WHEN RXDDRGID = 'Generic drug code' THEN 'Value was recorded' 
WHEN RXDDRGID IS NULL THEN NULL 
ELSE NULL 
 END as generic_drug_code,
CASE
        WHEN RXQSEEN = '1' THEN 'Yes' 
WHEN RXQSEEN = '2' THEN 'No' 
WHEN RXQSEEN = '3' THEN 'Only pharmacy print out seen' 
WHEN RXQSEEN IS NULL THEN NULL 
ELSE NULL 
 END as medicine_container_seen_by_interviewer,
WHEN RXDDAYS IS NOT NULL THEN SAFE_CAST(RXDDAYS AS FLOAT64)WHEN RXDDAYS IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_taken_medicine,
CASE
        WHEN RXDRSC1 = 'ICD-10-CM code 1' THEN 'Value was recorded' 
WHEN RXDRSC1 = '55555' THEN 'Unknown' 
WHEN RXDRSC1 = '77777' THEN 'Refused' 
WHEN RXDRSC1 = '99999' THEN 'Don\'t know' 
WHEN RXDRSC1 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_1,
CASE
        WHEN RXDRSC2 = 'ICD-10-CM code 2' THEN 'Value was recorded' 
WHEN RXDRSC2 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_2,
CASE
        WHEN RXDRSC3 = 'ICD-10-CM code 3' THEN 'Value was recorded' 
WHEN RXDRSC3 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_3,
CASE
        WHEN RXDRSD1 = 'ICD-10-CM code 1 description' THEN 'Value was recorded' 
WHEN RXDRSD1 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_1_description,
CASE
        WHEN RXDRSD2 = 'ICD-10-CM code 2 description' THEN 'Value was recorded' 
WHEN RXDRSD2 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_2_description,
CASE
        WHEN RXDRSD3 = 'ICD-10-CM code 3 description' THEN 'Value was recorded' 
WHEN RXDRSD3 IS NULL THEN NULL 
ELSE NULL 
 END as icd_10_cm_code_3_description,
WHEN RXDCOUNT IS NOT NULL THEN SAFE_CAST(RXDCOUNT AS FLOAT64)WHEN RXDCOUNT IS NULL THEN NULL 
ELSE NULL 
 END as number_of_prescription_medicines_taken,
 FROM {{ ref('stg_prescription_medications_questionnaire') }}