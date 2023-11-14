SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXWBCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXWBCSI AS STRING) 
 END as white_blood_cell_count_1000_cells_ul, 

CASE
            WHEN LBXLYPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLYPCT AS STRING) 
 END as lymphocyte_percent, 

CASE
            WHEN LBXMOPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMOPCT AS STRING) 
 END as monocyte_percent, 

CASE
            WHEN LBXNEPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNEPCT AS STRING) 
 END as segmented_neutrophils_percent, 

CASE
            WHEN LBXEOPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEOPCT AS STRING) 
 END as eosinophils_percent, 

CASE
            WHEN LBXBAPCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBAPCT AS STRING) 
 END as basophils_percent, 

CASE
            WHEN LBDLYMNO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLYMNO AS STRING) 
 END as lymphocyte_number_1000_cells_ul, 

CASE
            WHEN LBDMONO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMONO AS STRING) 
 END as monocyte_number_1000_cells_ul, 

CASE
            WHEN LBDNENO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDNENO AS STRING) 
 END as segmented_neutrophils_num_1000_cell_ul, 

CASE
            WHEN LBDEONO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDEONO AS STRING) 
 END as eosinophils_number_1000_cells_ul, 

CASE
            WHEN LBDBANO IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBANO AS STRING) 
 END as basophils_number_1000_cells_ul, 

CASE
            WHEN LBXRBCSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRBCSI AS STRING) 
 END as red_blood_cell_count_million_cells_ul, 

CASE
            WHEN LBXHGB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHGB AS STRING) 
 END as hemoglobin_g_dl, 

CASE
            WHEN LBXHCT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCT AS STRING) 
 END as hematocrit, 

CASE
            WHEN LBXMCVSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMCVSI AS STRING) 
 END as mean_cell_volume_fl, 

CASE
            WHEN LBXMC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMC AS STRING) 
 END as mean_cell_hgb_conc_g_dl, 

CASE
            WHEN LBXMCHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMCHSI AS STRING) 
 END as mean_cell_hemoglobin_pg, 

CASE
            WHEN LBXRDW IS NULL THEN NULL 
ELSE SAFE_CAST(LBXRDW AS STRING) 
 END as red_cell_distribution_width, 

CASE
            WHEN LBXPLTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPLTSI AS STRING) 
 END as platelet_count_1000_cells_ul, 

CASE
            WHEN LBXMPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMPSI AS STRING) 
 END as mean_platelet_volume_fl, 

CASE
            WHEN LBXNRBC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNRBC AS STRING) 
 END as nucleated_red_blood_cells, 

 FROM {{ ref('stg_complete_blood_count_with_5_part_differential_in_whole_blood_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_CBC.htm
        