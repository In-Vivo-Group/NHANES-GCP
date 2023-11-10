SELECT
SEQN as respondent_sequence_number, 

CASE
        WHEN LBXIRN IS NOT NULL THEN LBXIRN 
WHEN LBXIRN IS NULL THEN NULL 
ELSE NULL 
 END as iron_frozen_serum_ug_dl, 

CASE
        WHEN LBDIRNSI IS NOT NULL THEN LBDIRNSI 
WHEN LBDIRNSI IS NULL THEN NULL 
ELSE NULL 
 END as iron_frozen_serum_umol_l, 

CASE
        WHEN LBXUIB IS NOT NULL THEN LBXUIB 
WHEN LBXUIB IS NULL THEN NULL 
ELSE NULL 
 END as uibc_serum_ug_dl, 

CASE
        WHEN LBDUIBLC = 0 THEN 'At or above detection limit' 
WHEN LBDUIBLC = 1 THEN 'Below lower detection limit' 
WHEN LBDUIBLC IS NULL THEN NULL 
ELSE NULL 
 END as uibc_serum_comment_code, 

CASE
        WHEN LBDUIBSI IS NOT NULL THEN LBDUIBSI 
WHEN LBDUIBSI IS NULL THEN NULL 
ELSE NULL 
 END as uibc_serum_umol_l, 

CASE
        WHEN LBDTIB IS NOT NULL THEN LBDTIB 
WHEN LBDTIB IS NULL THEN NULL 
ELSE NULL 
 END as total_iron_binding_capacity_tibc_ug_dl, 

CASE
        WHEN LBDTIBSI IS NOT NULL THEN LBDTIBSI 
WHEN LBDTIBSI IS NULL THEN NULL 
ELSE NULL 
 END as tot_iron_binding_capacity_tibc_umol_l, 

CASE
        WHEN LBDPCT IS NOT NULL THEN LBDPCT 
WHEN LBDPCT IS NULL THEN NULL 
ELSE NULL 
 END as transferrin_saturation, 

 FROM {{ ref('stg_iron_status_serum_laboratory') }}