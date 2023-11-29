SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXSATSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSATSI AS FLOAT64) 
 END as alanine_aminotransferase_alt_u_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSATLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSATLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSATLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSATLC AS STRING) 
 END as alt_comment_code, 

CASE
    WHEN LBXSAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSAL AS FLOAT64) 
 END as albumin_refrigerated_serum_g_dl, 

CASE
    WHEN LBDSALSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSALSI AS FLOAT64) 
 END as albumin_refrigerated_serum_g_l, 

CASE
    WHEN LBXSAPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSAPSI AS FLOAT64) 
 END as alkaline_phosphatase_alp_iu_l, 

CASE
    WHEN LBXSASSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSASSI AS FLOAT64) 
 END as aspartate_aminotransferase_ast_u_l, 

CASE
    WHEN LBXSC3SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSC3SI AS FLOAT64) 
 END as bicarbonate_mmol_l, 

CASE
    WHEN LBXSBU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSBU AS FLOAT64) 
 END as blood_urea_nitrogen_mg_dl, 

CASE
    WHEN LBDSBUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSBUSI AS FLOAT64) 
 END as blood_urea_nitrogen_mmol_l, 

CASE
    WHEN LBXSCLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCLSI AS FLOAT64) 
 END as chloride_mmol_l, 

CASE
    WHEN LBXSCK IS NOT NULL THEN SAFE_CAST(LBXSCK AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBXSCK IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCK AS FLOAT64) 
 END as creatine_phosphokinase_cpk_iu_l, 

CASE
    WHEN LBXSCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCR AS FLOAT64) 
 END as creatinine_refrigerated_serum_mg_dl, 

CASE
    WHEN LBDSCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCRSI AS FLOAT64) 
 END as creatinine_refrigerated_serum_umol_l, 

CASE
    WHEN LBXSGB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGB AS FLOAT64) 
 END as globulin_g_dl, 

CASE
    WHEN LBDSGBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSGBSI AS FLOAT64) 
 END as globulin_g_l, 

CASE
    WHEN LBXSGL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGL AS FLOAT64) 
 END as glucose_refrigerated_serum_mg_dl, 

CASE
    WHEN LBDSGLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSGLSI AS FLOAT64) 
 END as glucose_refrigerated_serum_mmol_l, 

CASE
    WHEN LBXSGTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGTSI AS FLOAT64) 
 END as gamma_glutamyl_transferase_ggt_iu_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSGTLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSGTLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSGTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSGTLC AS STRING) 
 END as ggt_comment_code, 

CASE
    WHEN LBXSIR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSIR AS FLOAT64) 
 END as iron_refrigerated_serum_ug_dl, 

CASE
    WHEN LBDSIRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSIRSI AS FLOAT64) 
 END as iron_refrigerated_serum_umol_l, 

CASE
    WHEN LBXSLDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSLDSI AS FLOAT64) 
 END as lactate_dehydrogenase_ldh_iu_l, 

CASE
    WHEN LBXSOSSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSOSSI AS FLOAT64) 
 END as osmolality_mmol_kg, 

CASE
    WHEN LBXSPH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSPH AS FLOAT64) 
 END as phosphorus_mg_dl, 

CASE
    WHEN LBDSPHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSPHSI AS FLOAT64) 
 END as phosphorus_mmol_l, 

CASE
    WHEN LBXSKSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSKSI AS FLOAT64) 
 END as potassium_mmol_l, 

CASE
    WHEN LBXSNASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSNASI AS FLOAT64) 
 END as sodium_mmol_l, 

CASE
    WHEN LBXSTB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTB AS FLOAT64) 
 END as total_bilirubin_mg_dl, 

CASE
    WHEN LBDSTBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTBSI AS FLOAT64) 
 END as total_bilirubin_umol_l, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSTBLC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBDSTBLC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSTBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTBLC AS STRING) 
 END as total_bilirubin_comment_code, 

CASE
    WHEN LBXSCA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCA AS FLOAT64) 
 END as total_calcium_mg_dl, 

CASE
    WHEN LBDSCASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCASI AS FLOAT64) 
 END as total_calcium_mmol_l, 

CASE
    WHEN LBXSCH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCH AS FLOAT64) 
 END as cholesterol_refrigerated_serum_mg_dl, 

CASE
    WHEN LBDSCHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCHSI AS FLOAT64) 
 END as cholesterol_refrigerated_serum_mmol_l, 

CASE
    WHEN LBXSTP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTP AS FLOAT64) 
 END as total_protein_g_dl, 

CASE
    WHEN LBDSTPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTPSI AS FLOAT64) 
 END as total_protein_g_l, 

CASE
    WHEN LBXSTR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTR AS FLOAT64) 
 END as triglycerides_refrig_serum_mg_dl, 

CASE
    WHEN LBDSTRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTRSI AS FLOAT64) 
 END as triglycerides_refrig_serum_mmol_l, 

CASE
    WHEN LBXSUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSUA AS FLOAT64) 
 END as uric_acid_mg_dl, 

CASE
    WHEN LBDSUASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSUASI AS FLOAT64) 
 END as uric_acid_umol_l, 

CASE
    WHEN LBDSAPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSAPSI AS FLOAT64) 
 END as alkaline_phosphatase_u_l, 

CASE
    WHEN LBDSLDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSLDSI AS FLOAT64) 
 END as ldh_u_l, 

CASE
    WHEN LBDSPH IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSPH AS FLOAT64) 
 END as phosphorus_mg_dl_LBDSPH, 

CASE
    WHEN LBDSTB IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTB AS FLOAT64) 
 END as bilirubin_total_mg_dl, 

CASE
    WHEN LBDSCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCR AS FLOAT64) 
 END as creatinine_mg_dl, 

CASE
    WHEN LBXFSH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFSH AS FLOAT64) 
 END as follicle_stimulating_hormone_miu_ml, 

CASE
    WHEN LBDFSHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFSHSI AS FLOAT64) 
 END as follicle_stimulating_hormone_iu_l, 

CASE
    WHEN LBXLH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLH AS FLOAT64) 
 END as luteinizing_hormone_miu_ml, 

CASE
    WHEN LBDLHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLHSI AS FLOAT64) 
 END as luteinizing_hormone_iu_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_standard_biochemistry_profile_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BIOPRO_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_BIOPRO.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BIOPRO_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BIOPRO_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/BIOPRO_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/BIOPRO_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/BIOPRO_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L40_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L40_B.htm
*/
