SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXDUSE AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXDUSE AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXDUSE AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXDUSE AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN RXDUSE IS NULL THEN NULL 
ELSE SAFE_CAST(RXDUSE AS STRING) 
 END as taken_prescription_medicine_past_month, 

CASE
WHEN REPLACE(RXDDRUG,'.0','') = 'Generic drug name' THEN 'Value was recorded' -- categorize string values 
WHEN REPLACE(RXDDRUG,'.0','') = '55555' THEN 'Unknown' -- categorize string values 
WHEN REPLACE(RXDDRUG,'.0','') = '77777' THEN 'Refused' -- categorize string values 
WHEN REPLACE(RXDDRUG,'.0','') = '99999' THEN 'Dont know' -- categorize string values 
WHEN RXDDRUG IS NULL THEN NULL 
ELSE SAFE_CAST(RXDDRUG AS STRING) 
 END as generic_drug_name, 

CASE
WHEN REPLACE(RXDDRGID,'.0','') = 'Generic drug code' THEN 'Value was recorded' -- categorize string values 
WHEN RXDDRGID IS NULL THEN NULL 
ELSE SAFE_CAST(RXDDRGID AS STRING) 
 END as generic_drug_code, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXQSEEN AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXQSEEN AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RXQSEEN AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Only pharmacy print out seen' -- categorize string values 
WHEN RXQSEEN IS NULL THEN NULL 
ELSE SAFE_CAST(RXQSEEN AS STRING) 
 END as medicine_container_seen_by_interviewer, 

CASE
WHEN SAFE_CAST(RXDDAYS AS FLOAT64) > 21911.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN RXDDAYS IS NULL THEN NULL 
ELSE SAFE_CAST(RXDDAYS AS FLOAT64) 
 END as number_of_days_taken_medicine, 

CASE
WHEN REPLACE(RXDRSC1,'.0','') = 'ICD-10-CM code 1' THEN 'Value was recorded' -- categorize string values 
WHEN REPLACE(RXDRSC1,'.0','') = '55555' THEN 'Unknown' -- categorize string values 
WHEN REPLACE(RXDRSC1,'.0','') = '77777' THEN 'Refused' -- categorize string values 
WHEN REPLACE(RXDRSC1,'.0','') = '99999' THEN 'Dont know' -- categorize string values 
WHEN RXDRSC1 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSC1 AS STRING) 
 END as icd_10_cm_code_1, 

CASE
WHEN REPLACE(RXDRSC2,'.0','') = 'ICD-10-CM code 2' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSC2 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSC2 AS STRING) 
 END as icd_10_cm_code_2, 

CASE
WHEN REPLACE(RXDRSC3,'.0','') = 'ICD-10-CM code 3' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSC3 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSC3 AS STRING) 
 END as icd_10_cm_code_3, 

CASE
WHEN REPLACE(RXDRSD1,'.0','') = 'ICD-10-CM code 1 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD1 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSD1 AS STRING) 
 END as icd_10_cm_code_1_description, 

CASE
WHEN REPLACE(RXDRSD2,'.0','') = 'ICD-10-CM code 2 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD2 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSD2 AS STRING) 
 END as icd_10_cm_code_2_description, 

CASE
WHEN REPLACE(RXDRSD3,'.0','') = 'ICD-10-CM code 3 description' THEN 'Value was recorded' -- categorize string values 
WHEN RXDRSD3 IS NULL THEN NULL 
ELSE SAFE_CAST(RXDRSD3 AS STRING) 
 END as icd_10_cm_code_3_description, 

CASE
WHEN RXDCOUNT IS NOT NULL THEN SAFE_CAST(RXDCOUNT AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RXDCOUNT IS NULL THEN NULL 
ELSE SAFE_CAST(RXDCOUNT AS FLOAT64) 
 END as number_of_prescription_medicines_taken, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXD030 IS NULL THEN NULL 
ELSE SAFE_CAST(RXD030 AS STRING) 
 END as taken_prescription_medicine_past_month_RXD030, 

CASE
WHEN REPLACE(RXD240B,'.0','') = 'Standard generic ingredient name' THEN 'Value was recorded' -- categorize string values 
WHEN REPLACE(RXD240B,'.0','') = '55555' THEN 'Unknown' -- categorize string values 
WHEN REPLACE(RXD240B,'.0','') = '77777' THEN 'Refused' -- categorize string values 
WHEN REPLACE(RXD240B,'.0','') = '99999' THEN 'Dont know' -- categorize string values 
WHEN RXD240B IS NULL THEN NULL 
ELSE SAFE_CAST(RXD240B AS STRING) 
 END as standard_generic_ingredient_name, 

CASE
WHEN REPLACE(NHCODE,'.0','') = 'Standard generic ingredient code' THEN 'Value was recorded' -- categorize string values 
WHEN NHCODE IS NULL THEN NULL 
ELSE SAFE_CAST(NHCODE AS STRING) 
 END as standard_generic_ingredient_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN RXQ250 IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ250 AS STRING) 
 END as medicine_container_seen_by_interviewer_RXQ250, 

CASE
WHEN RXD260 IS NULL THEN NULL 
ELSE SAFE_CAST(RXD260 AS STRING) 
 END as number_of_days_taken_medicine_RXD260, 

CASE
WHEN REPLACE(FDACODE1,'.0','') = 'FDA/NDC drug class code 1' THEN 'Value was recorded' -- categorize string values 
WHEN REPLACE(FDACODE1,'.0','') = '99999' THEN 'Unknown drug-no code' -- categorize string values 
WHEN FDACODE1 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE1 AS STRING) 
 END as fda_ndc_drug_class_code_1, 

CASE
WHEN REPLACE(FDACODE2,'.0','') = 'FDA/NDC drug class code 2' THEN 'Value was recorded' -- categorize string values 
WHEN FDACODE2 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE2 AS STRING) 
 END as fda_ndc_drug_class_code_2, 

CASE
WHEN REPLACE(FDACODE3,'.0','') = 'FDA/NDC drug class code 3' THEN 'Value was recorded' -- categorize string values 
WHEN FDACODE3 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE3 AS STRING) 
 END as fda_ndc_drug_class_code_3, 

CASE
WHEN REPLACE(FDACODE4,'.0','') = 'FDA/NDC drug class code 4' THEN 'Value was recorded' -- categorize string values 
WHEN FDACODE4 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE4 AS STRING) 
 END as fda_ndc_drug_class_code_4, 

CASE
WHEN REPLACE(FDACODE5,'.0','') = 'FDA/NDC drug class code 5' THEN 'Value was recorded' -- categorize string values 
WHEN FDACODE5 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE5 AS STRING) 
 END as fda_ndc_drug_class_code_5, 

CASE
WHEN REPLACE(FDACODE6,'.0','') = 'FDA/NDC drug class code 6' THEN 'Value was recorded' -- categorize string values 
WHEN FDACODE6 IS NULL THEN NULL 
ELSE SAFE_CAST(FDACODE6 AS STRING) 
 END as fda_ndc_drug_class_code_6, 

CASE
WHEN RXD295 IS NULL THEN NULL 
ELSE SAFE_CAST(RXD295 AS STRING) 
 END as number_of_prescription_medicines_taken_RXD295, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Less than 1 canister,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Maybe' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Does not use this form of medication' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ280 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ280 AS STRING) 
 END as of_beta_agonist_canisters_past_month, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_prescription_medications_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/RXQ_RX_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_RXQ_RX.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/RXQ_RX_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/RXQ_RX_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/RXQ_RX_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/RXQ_RX_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/RXQ_RX_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/RXQ_RX_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/RXQ_RX_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/RXQ_RX_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/RXQ_RX.htm
*/
