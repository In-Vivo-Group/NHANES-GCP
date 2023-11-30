SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_interview_technical_support_file_food_code_format_file_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/DRXFMT_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DRXFMT.htm
*/
