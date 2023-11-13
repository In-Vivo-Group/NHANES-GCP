SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXIRN IS NULL THEN NULL 
ELSE LBXIRN 
 END as iron_frozen_serum_ug_dl, 

CASE
            WHEN LBDIRNSI IS NULL THEN NULL 
ELSE LBDIRNSI 
 END as iron_frozen_serum_umol_l, 

CASE
            WHEN LBXUIB IS NULL THEN NULL 
ELSE LBXUIB 
 END as uibc_serum_ug_dl, 

CASE
            WHEN LBDUIBLC = 0 THEN 'At or above detection limit' -- categorize numeric values
WHEN LBDUIBLC = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDUIBLC IS NULL THEN NULL 
ELSE LBDUIBLC 
 END as uibc_serum_comment_code, 

CASE
            WHEN LBDUIBSI IS NULL THEN NULL 
ELSE LBDUIBSI 
 END as uibc_serum_umol_l, 

CASE
            WHEN LBDTIB IS NULL THEN NULL 
ELSE LBDTIB 
 END as total_iron_binding_capacity_tibc_ug_dl, 

CASE
            WHEN LBDTIBSI IS NULL THEN NULL 
ELSE LBDTIBSI 
 END as tot_iron_binding_capacity_tibc_umol_l, 

CASE
            WHEN LBDPCT IS NULL THEN NULL 
ELSE LBDPCT 
 END as transferrin_saturation, 

 FROM {{ ref('stg_iron_status_serum_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/FETIB_J.htm
        