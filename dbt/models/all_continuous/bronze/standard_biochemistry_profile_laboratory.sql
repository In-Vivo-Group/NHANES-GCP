SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN LBXSATSI IS NULL THEN NULL 
ELSE LBXSATSI 
 END as alanine_aminotransferase_alt_u_l, 

CASE
            WHEN LBDSATLC = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN LBDSATLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSATLC IS NULL THEN NULL 
ELSE LBDSATLC 
 END as alt_comment_code, 

CASE
            WHEN LBXSAL IS NULL THEN NULL 
ELSE LBXSAL 
 END as albumin_refrigerated_serum_g_dl, 

CASE
            WHEN LBDSALSI IS NULL THEN NULL 
ELSE LBDSALSI 
 END as albumin_refrigerated_serum_g_l, 

CASE
            WHEN LBXSAPSI IS NULL THEN NULL 
ELSE LBXSAPSI 
 END as alkaline_phosphatase_alp_iu_l, 

CASE
            WHEN LBXSASSI IS NULL THEN NULL 
ELSE LBXSASSI 
 END as aspartate_aminotransferase_ast_u_l, 

CASE
            WHEN LBXSC3SI IS NULL THEN NULL 
ELSE LBXSC3SI 
 END as bicarbonate_mmol_l, 

CASE
            WHEN LBXSBU IS NULL THEN NULL 
ELSE LBXSBU 
 END as blood_urea_nitrogen_mg_dl, 

CASE
            WHEN LBDSBUSI IS NULL THEN NULL 
ELSE LBDSBUSI 
 END as blood_urea_nitrogen_mmol_l, 

CASE
            WHEN LBXSCLSI IS NULL THEN NULL 
ELSE LBXSCLSI 
 END as chloride_mmol_l, 

CASE
            WHEN LBXSCK IS NOT NULL THEN SAFE_CAST(LBXSCK AS FLOAT64) -- correct wrong data types for numerical data 
WHEN LBXSCK IS NULL THEN NULL 
ELSE LBXSCK 
 END as creatine_phosphokinase_cpk_iu_l, 

CASE
            WHEN LBXSCR IS NULL THEN NULL 
ELSE LBXSCR 
 END as creatinine_refrigerated_serum_mg_dl, 

CASE
            WHEN LBDSCRSI IS NULL THEN NULL 
ELSE LBDSCRSI 
 END as creatinine_refrigerated_serum_umol_l, 

CASE
            WHEN LBXSGB IS NULL THEN NULL 
ELSE LBXSGB 
 END as globulin_g_dl, 

CASE
            WHEN LBDSGBSI IS NULL THEN NULL 
ELSE LBDSGBSI 
 END as globulin_g_l, 

CASE
            WHEN LBXSGL IS NULL THEN NULL 
ELSE LBXSGL 
 END as glucose_refrigerated_serum_mg_dl, 

CASE
            WHEN LBDSGLSI IS NULL THEN NULL 
ELSE LBDSGLSI 
 END as glucose_refrigerated_serum_mmol_l, 

CASE
            WHEN LBXSGTSI IS NULL THEN NULL 
ELSE LBXSGTSI 
 END as gamma_glutamyl_transferase_ggt_iu_l, 

CASE
            WHEN LBDSGTLC = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN LBDSGTLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSGTLC IS NULL THEN NULL 
ELSE LBDSGTLC 
 END as ggt_comment_code, 

CASE
            WHEN LBXSIR IS NULL THEN NULL 
ELSE LBXSIR 
 END as iron_refrigerated_serum_ug_dl, 

CASE
            WHEN LBDSIRSI IS NULL THEN NULL 
ELSE LBDSIRSI 
 END as iron_refrigerated_serum_umol_l, 

CASE
            WHEN LBXSLDSI IS NULL THEN NULL 
ELSE LBXSLDSI 
 END as lactate_dehydrogenase_ldh_iu_l, 

CASE
            WHEN LBXSOSSI IS NULL THEN NULL 
ELSE LBXSOSSI 
 END as osmolality_mmol_kg, 

CASE
            WHEN LBXSPH IS NULL THEN NULL 
ELSE LBXSPH 
 END as phosphorus_mg_dl, 

CASE
            WHEN LBDSPHSI IS NULL THEN NULL 
ELSE LBDSPHSI 
 END as phosphorus_mmol_l, 

CASE
            WHEN LBXSKSI IS NULL THEN NULL 
ELSE LBXSKSI 
 END as potassium_mmol_l, 

CASE
            WHEN LBXSNASI IS NULL THEN NULL 
ELSE LBXSNASI 
 END as sodium_mmol_l, 

CASE
            WHEN LBXSTB IS NULL THEN NULL 
ELSE LBXSTB 
 END as total_bilirubin_mg_dl, 

CASE
            WHEN LBDSTBSI IS NULL THEN NULL 
ELSE LBDSTBSI 
 END as total_bilirubin_umol_l, 

CASE
            WHEN LBDSTBLC = '0' THEN 'At or above detection limit' -- categorize string values 
WHEN LBDSTBLC = '1' THEN 'Below lower detection limit' -- categorize string values 
WHEN LBDSTBLC IS NULL THEN NULL 
ELSE LBDSTBLC 
 END as total_bilirubin_comment_code, 

CASE
            WHEN LBXSCA IS NULL THEN NULL 
ELSE LBXSCA 
 END as total_calcium_mg_dl, 

CASE
            WHEN LBDSCASI IS NULL THEN NULL 
ELSE LBDSCASI 
 END as total_calcium_mmol_l, 

CASE
            WHEN LBXSCH IS NULL THEN NULL 
ELSE LBXSCH 
 END as cholesterol_refrigerated_serum_mg_dl, 

CASE
            WHEN LBDSCHSI IS NULL THEN NULL 
ELSE LBDSCHSI 
 END as cholesterol_refrigerated_serum_mmol_l, 

CASE
            WHEN LBXSTP IS NULL THEN NULL 
ELSE LBXSTP 
 END as total_protein_g_dl, 

CASE
            WHEN LBDSTPSI IS NULL THEN NULL 
ELSE LBDSTPSI 
 END as total_protein_g_l, 

CASE
            WHEN LBXSTR IS NULL THEN NULL 
ELSE LBXSTR 
 END as triglycerides_refrig_serum_mg_dl, 

CASE
            WHEN LBDSTRSI IS NULL THEN NULL 
ELSE LBDSTRSI 
 END as triglycerides_refrig_serum_mmol_l, 

CASE
            WHEN LBXSUA IS NULL THEN NULL 
ELSE LBXSUA 
 END as uric_acid_mg_dl, 

CASE
            WHEN LBDSUASI IS NULL THEN NULL 
ELSE LBDSUASI 
 END as uric_acid_umol_l, 

 FROM {{ ref('stg_standard_biochemistry_profile_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_BIOPRO.htm
        