SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_2_yr_mec_weight, 

CASE
WHEN WTSVOC4Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC4Y AS FLOAT64) 
 END as voc_subsample_4_yr_mec_weight, 

CASE
WHEN LBXWBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWBF AS FLOAT64) 
 END as water_bromoform_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWBFLC AS STRING) 
 END as water_bromoform_comment_code, 

CASE
WHEN LBXWCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWCF AS FLOAT64) 
 END as water_chloroform_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWCFLC AS STRING) 
 END as water_chloroform_comment_code, 

CASE
WHEN LBXWBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWBM AS FLOAT64) 
 END as water_bromodichloromethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWBMLC AS STRING) 
 END as water_bromodichloromethane_comment_code, 

CASE
WHEN LBXWCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWCM AS FLOAT64) 
 END as water_dibromochloromethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWCMLC AS STRING) 
 END as water_dibromochloromethane_comment_code, 

CASE
WHEN LBXWME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWME AS FLOAT64) 
 END as water_mtbe_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDWMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDWMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDWMELC AS STRING) 
 END as water_mtbe_comment_code, 

CASE
WHEN LBXV4C IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV4C AS FLOAT64) 
 END as blood_tetrachloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV4CLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDV4CLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV4CLC AS STRING) 
 END as blood_tetrachloroethene_comment_code, 

CASE
WHEN LBXVBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBF AS FLOAT64) 
 END as blood_bromoform_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBFLC AS STRING) 
 END as blood_bromoform_comment_code, 

CASE
WHEN LBXVBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBM AS FLOAT64) 
 END as blood_bromodichloromethane_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBMLC AS STRING) 
 END as blood_bromodichloromethane_comment_code, 

CASE
WHEN LBXVBZ IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBZ AS FLOAT64) 
 END as blood_benzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBZLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBZLC AS STRING) 
 END as blood_benzene_comment_code, 

CASE
WHEN LBXVCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCF AS FLOAT64) 
 END as blood_chloroform_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCFLC AS STRING) 
 END as blood_chloroform_comment_code, 

CASE
WHEN LBXVCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCM AS FLOAT64) 
 END as blood_dibromochloromethane_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCMLC AS STRING) 
 END as blood_dibromochloromethane_comment_code, 

CASE
WHEN LBXVCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCT AS FLOAT64) 
 END as blood_carbon_tetrachloride_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCTLC AS STRING) 
 END as blood_carbon_tetrachloride_comment_code, 

CASE
WHEN LBXVDB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVDB AS FLOAT64) 
 END as blood_1_4_dichlorobenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVDBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVDBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVDBLC AS STRING) 
 END as blood_1_4_dichlorobenzene_comment_code, 

CASE
WHEN LBXVEB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVEB AS FLOAT64) 
 END as blood_ethylbenzene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVEBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVEBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVEBLC AS STRING) 
 END as blood_ethylbenzene_comment_code, 

CASE
WHEN LBXVME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVME AS FLOAT64) 
 END as blood_mtbe_pg_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMELC AS STRING) 
 END as blood_mtbe_comment_code, 

CASE
WHEN LBXVOX IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVOX AS FLOAT64) 
 END as blood_o_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVOXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVOXLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVOXLC AS STRING) 
 END as blood_o_xylene_comment_code, 

CASE
WHEN LBXVST IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVST AS FLOAT64) 
 END as blood_styrene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVSTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVSTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVSTLC AS STRING) 
 END as blood_styrene_comment_code, 

CASE
WHEN LBXVTC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTC AS FLOAT64) 
 END as blood_trichloroethene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTCLC AS STRING) 
 END as blood_trichloroethene_comment_code, 

CASE
WHEN LBXVTO IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVTO AS FLOAT64) 
 END as blood_toluene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVTOLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVTOLC AS STRING) 
 END as blood_toluene_comment_code, 

CASE
WHEN LBXVXY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVXY AS FLOAT64) 
 END as blood_m_p_xylene_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVXYLC AS STRING) 
 END as blood_m_p_xylene_comment_code, 

CASE
WHEN LBXV3A IS NULL THEN NULL 
ELSE SAFE_CAST(LBXV3A AS FLOAT64) 
 END as blood_1_1_1_trichloroethane_ng_ml, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Detectable Result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below Detectable Limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDV3ALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Detectable Result and Exceeds the Calibrated Range of Assay' -- categorize numeric values
WHEN LBDV3ALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDV3ALC AS STRING) 
 END as blood_1_1_1_trichloroethane_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_blood_water_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L04VOC_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB04.htm
*/
