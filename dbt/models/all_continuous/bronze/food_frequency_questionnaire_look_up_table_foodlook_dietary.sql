SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_food_frequency_questionnaire_look_up_table_foodlook_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/FOODLK_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/FOODLK_C.htm
*/
