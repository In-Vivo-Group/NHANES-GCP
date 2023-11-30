SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SSGI1C1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1C1 AS FLOAT64) 
 END as antibody_con_in_dup_1_for_gi_1_ag, 

CASE
    WHEN SSGI1C2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1C2 AS FLOAT64) 
 END as antibody_con_in_dup_2_for_gi_1_ag, 

CASE
    WHEN SSGI1CM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1CM AS FLOAT64) 
 END as mean_antibody_concentration_for_gi_1_ag, 

CASE
    WHEN SSGI1OD1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1OD1 AS FLOAT64) 
 END as optical_density_in_dup_1_for_gi_1_ag, 

CASE
    WHEN SSGI1OD2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1OD2 AS FLOAT64) 
 END as optical_density_in_dup_2_for_gi_1_ag, 

CASE
    WHEN SSGI1ODM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI1ODM AS FLOAT64) 
 END as mean_optical_density_for_gi_1_antigen, 

CASE
    WHEN SSGI4C1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4C1 AS FLOAT64) 
 END as antibody_con_in_dup_1_for_gi_4_ag, 

CASE
    WHEN SSGI4C2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4C2 AS FLOAT64) 
 END as antibody_con_in_dup_2_for_gi_4_ag, 

CASE
    WHEN SSGI4CM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4CM AS FLOAT64) 
 END as mean_antibody_concentration_for_gi_4_ag, 

CASE
    WHEN SSGI4OD1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4OD1 AS FLOAT64) 
 END as optical_density_in_dup_1_for_gi_4_ag, 

CASE
    WHEN SSGI4OD2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4OD2 AS FLOAT64) 
 END as optical_density_in_dup_2_for_gi_4_ag, 

CASE
    WHEN SSGI4ODM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGI4ODM AS FLOAT64) 
 END as mean_optical_density_for_gi_4_ag, 

CASE
    WHEN SSGII3C1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3C1 AS FLOAT64) 
 END as antibody_con_in_dup_1_for_gii_3_ag, 

CASE
    WHEN SSGII3C2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3C2 AS FLOAT64) 
 END as antibody_con_in_dup_2_for_gii_3_ag, 

CASE
    WHEN SSGII3CM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3CM AS FLOAT64) 
 END as mean_antibody_con_for_gii_3_ag, 

CASE
    WHEN SSGII3O1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3O1 AS FLOAT64) 
 END as optical_density_in_dup_1_for_gii_3_ag, 

CASE
    WHEN SSGII3O2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3O2 AS FLOAT64) 
 END as optical_density_in_dup_2_for_gii_3_ag, 

CASE
    WHEN SSGII3OM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGII3OM AS FLOAT64) 
 END as mean_optical_density_for_gii_3_ag, 

CASE
    WHEN SSII4FC1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FC1 AS FLOAT64) 
 END as ab_dup_1_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4FC2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FC2 AS FLOAT64) 
 END as ab_dup_2_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4FCM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FCM AS FLOAT64) 
 END as mean_ab_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4FO1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FO1 AS FLOAT64) 
 END as od_dup_1_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4FO2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FO2 AS FLOAT64) 
 END as od_dup_2_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4FOM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4FOM AS FLOAT64) 
 END as mean_od_for_gii_4_farmington_hills_ag, 

CASE
    WHEN SSII4UC1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UC1 AS FLOAT64) 
 END as ab_con_in_dup_1_for_gii_4_us95_96_ag, 

CASE
    WHEN SSII4UC2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UC2 AS FLOAT64) 
 END as ab_con_in_dup_2_for_gii_4_us95_96_ag, 

CASE
    WHEN SSII4UCM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UCM AS FLOAT64) 
 END as mean_ab_conc_for_gii_4_us95_96_antigen, 

CASE
    WHEN SSII4UO1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UO1 AS FLOAT64) 
 END as od_in_dup_1_for_gii_4_us95_96_antigen, 

CASE
    WHEN SSII4UO2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UO2 AS FLOAT64) 
 END as od_in_dup_2_for_gii_4_us95_96_antigen, 

CASE
    WHEN SSII4UOM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4UOM AS FLOAT64) 
 END as mean_od_for_gii_4_us95_96_antigen, 

CASE
    WHEN SSII4NC1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NC1 AS FLOAT64) 
 END as ab_in_dup_1_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSII4NC2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NC2 AS FLOAT64) 
 END as ab_in_dup_2_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSII4NCM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NCM AS FLOAT64) 
 END as mean_ab_conc_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSII4NO1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NO1 AS FLOAT64) 
 END as od_in_dup_1_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSII4NO2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NO2 AS FLOAT64) 
 END as od_in_dup_2_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSII4NOM IS NULL THEN NULL 
ELSE SAFE_CAST(SSII4NOM AS FLOAT64) 
 END as mean_od_for_gii_4_new_orleans_ag, 

CASE
    WHEN SSGIV1C1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1C1 AS FLOAT64) 
 END as antibody_conc_in_dup_1_for_giv_1_ag, 

CASE
    WHEN SSGIV1C2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1C2 AS FLOAT64) 
 END as antibody_conc_in_dup_2_for_giv_1_ag, 

CASE
    WHEN SSGIV1CM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1CM AS FLOAT64) 
 END as mean_antibody_conc_for_giv_1_antigen, 

CASE
    WHEN SSGIV1O1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1O1 AS FLOAT64) 
 END as od_in_duplicate_1_for_giv_1_antigen, 

CASE
    WHEN SSGIV1O2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1O2 AS FLOAT64) 
 END as od_in_duplicate_2_for_giv_1_antigen, 

CASE
    WHEN SSGIV1OM IS NULL THEN NULL 
ELSE SAFE_CAST(SSGIV1OM AS FLOAT64) 
 END as mean_od_for_giv_1_antigen, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_norovirus_antibody_serum_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/SSNORO_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSNORO_A.htm
*/
