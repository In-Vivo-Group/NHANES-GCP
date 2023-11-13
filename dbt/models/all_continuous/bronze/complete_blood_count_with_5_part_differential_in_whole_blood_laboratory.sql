SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXWBCSI IS NULL THEN NULL 
ELSE LBXWBCSI 
 END as white_blood_cell_count_1000_cells_ul, 

CASE
            WHEN LBXLYPCT IS NULL THEN NULL 
ELSE LBXLYPCT 
 END as lymphocyte_percent, 

CASE
            WHEN LBXMOPCT IS NULL THEN NULL 
ELSE LBXMOPCT 
 END as monocyte_percent, 

CASE
            WHEN LBXNEPCT IS NULL THEN NULL 
ELSE LBXNEPCT 
 END as segmented_neutrophils_percent, 

CASE
            WHEN LBXEOPCT IS NULL THEN NULL 
ELSE LBXEOPCT 
 END as eosinophils_percent, 

CASE
            WHEN LBXBAPCT IS NULL THEN NULL 
ELSE LBXBAPCT 
 END as basophils_percent, 

CASE
            WHEN LBDLYMNO IS NULL THEN NULL 
ELSE LBDLYMNO 
 END as lymphocyte_number_1000_cells_ul, 

CASE
            WHEN LBDMONO IS NULL THEN NULL 
ELSE LBDMONO 
 END as monocyte_number_1000_cells_ul, 

CASE
            WHEN LBDNENO IS NULL THEN NULL 
ELSE LBDNENO 
 END as segmented_neutrophils_num_1000_cell_ul, 

CASE
            WHEN LBDEONO IS NULL THEN NULL 
ELSE LBDEONO 
 END as eosinophils_number_1000_cells_ul, 

CASE
            WHEN LBDBANO IS NULL THEN NULL 
ELSE LBDBANO 
 END as basophils_number_1000_cells_ul, 

CASE
            WHEN LBXRBCSI IS NULL THEN NULL 
ELSE LBXRBCSI 
 END as red_blood_cell_count_million_cells_ul, 

CASE
            WHEN LBXHGB IS NULL THEN NULL 
ELSE LBXHGB 
 END as hemoglobin_g_dl, 

CASE
            WHEN LBXHCT IS NULL THEN NULL 
ELSE LBXHCT 
 END as hematocrit, 

CASE
            WHEN LBXMCVSI IS NULL THEN NULL 
ELSE LBXMCVSI 
 END as mean_cell_volume_fl, 

CASE
            WHEN LBXMC IS NULL THEN NULL 
ELSE LBXMC 
 END as mean_cell_hgb_conc_g_dl, 

CASE
            WHEN LBXMCHSI IS NULL THEN NULL 
ELSE LBXMCHSI 
 END as mean_cell_hemoglobin_pg, 

CASE
            WHEN LBXRDW IS NULL THEN NULL 
ELSE LBXRDW 
 END as red_cell_distribution_width, 

CASE
            WHEN LBXPLTSI IS NULL THEN NULL 
ELSE LBXPLTSI 
 END as platelet_count_1000_cells_ul, 

CASE
            WHEN LBXMPSI IS NULL THEN NULL 
ELSE LBXMPSI 
 END as mean_platelet_volume_fl, 

CASE
            WHEN LBXNRBC IS NULL THEN NULL 
ELSE LBXNRBC 
 END as nucleated_red_blood_cells, 

 FROM {{ ref('stg_complete_blood_count_with_5_part_differential_in_whole_blood_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_CBC.htm
        