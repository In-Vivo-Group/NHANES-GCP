SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN FFQ_VAR IS NULL THEN NULL 
ELSE SAFE_CAST(FFQ_VAR AS FLOAT64) 
 END as the_variable_id_from_dietcalc, 

CASE
    WHEN FFQ_FOOD IS NULL THEN NULL 
ELSE SAFE_CAST(FFQ_FOOD AS FLOAT64) 
 END as the_food_id_from_dietcalc, 

CASE
    WHEN FFQ_FREQ IS NULL THEN NULL 
ELSE SAFE_CAST(FFQ_FREQ AS FLOAT64) 
 END as daily_intake_frequency_for_this_food, 

CASE
    WHEN REPLACE(FFQ_CODE,'.0','') = '0' THEN 'Daily food frequency based on actual questionnaire response' -- categorize string values 
WHEN REPLACE(FFQ_CODE,'.0','') = '1' THEN 'Daily food frequency was imputed due to missing code' -- categorize string values 
WHEN REPLACE(FFQ_CODE,'.0','') = '2' THEN 'Daily food frequency was imputed due to scanning error' -- categorize string values 
WHEN REPLACE(FFQ_CODE,'.0','') = '3' THEN 'Daily food frequency was imputed due to coding error' -- categorize string values 
WHEN FFQ_CODE IS NULL THEN NULL 
ELSE SAFE_CAST(FFQ_CODE AS STRING) 
 END as daily_intake_frequency_imputation_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_food_frequency_questionnaire_output_from_dietcalc_software_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/FFQDC_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/FFQDC_C.htm
*/
