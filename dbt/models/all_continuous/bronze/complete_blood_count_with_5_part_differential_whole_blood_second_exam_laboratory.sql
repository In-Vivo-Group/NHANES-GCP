SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_first_and_second_exam, 

CASE
    WHEN LB2WBCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2WBCSI AS FLOAT64) 
 END as white_blood_cell_count_1000_cells_ul, 

CASE
    WHEN LB2LYPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LYPCT AS FLOAT64) 
 END as lymphocyte_percent, 

CASE
    WHEN LB2MOPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MOPCT AS FLOAT64) 
 END as monocyte_percent, 

CASE
    WHEN LB2NEPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2NEPCT AS FLOAT64) 
 END as segmented_neutrophils_percent, 

CASE
    WHEN LB2EOPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2EOPCT AS FLOAT64) 
 END as eosinophils_percent, 

CASE
    WHEN LB2BAPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BAPCT AS FLOAT64) 
 END as basophils_percent, 

CASE
    WHEN LB2LYMNO IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LYMNO AS FLOAT64) 
 END as lymphocyte_number_1000_cells_ul, 

CASE
    WHEN LB2MONO IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MONO AS FLOAT64) 
 END as monocyte_number_1000_cells_ul, 

CASE
    WHEN LB2NENO IS NULL THEN NULL 
ELSE SAFE_CAST(LB2NENO AS FLOAT64) 
 END as segmented_neutrophils_num_1000_cell_ul, 

CASE
    WHEN LB2EONO IS NULL THEN NULL 
ELSE SAFE_CAST(LB2EONO AS FLOAT64) 
 END as eosinophils_number_1000_cells_ul, 

CASE
    WHEN LB2BANO IS NULL THEN NULL 
ELSE SAFE_CAST(LB2BANO AS FLOAT64) 
 END as basophils_number_1000_cells_ul, 

CASE
    WHEN LB2RBCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RBCSI AS FLOAT64) 
 END as red_blood_cell_count_million_cells_ul, 

CASE
    WHEN LB2HGB IS NULL THEN NULL 
ELSE SAFE_CAST(LB2HGB AS FLOAT64) 
 END as hemoglobin_g_dl, 

CASE
    WHEN LB2HCT IS NULL THEN NULL 
ELSE SAFE_CAST(LB2HCT AS FLOAT64) 
 END as hematocrit, 

CASE
    WHEN LB2MCVSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MCVSI AS FLOAT64) 
 END as mean_cell_volume_fl, 

CASE
    WHEN LB2MCHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MCHSI AS FLOAT64) 
 END as mean_cell_hemoglobin_pg, 

CASE
    WHEN LB2MC IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MC AS FLOAT64) 
 END as mchc_g_dl, 

CASE
    WHEN LB2RDW IS NULL THEN NULL 
ELSE SAFE_CAST(LB2RDW AS FLOAT64) 
 END as red_cell_distribution_width, 

CASE
    WHEN LB2PLTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2PLTSI AS FLOAT64) 
 END as platelet_count_1000_cells_ul, 

CASE
    WHEN LB2MPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2MPSI AS FLOAT64) 
 END as mean_platelet_volume_fl, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_complete_blood_count_with_5_part_differential_whole_blood_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L25_2_B.htm
*/
