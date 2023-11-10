SELECT
SEQN as respondent_sequence_number,
WHEN WTSSBJ2Y IS NOT NULL THEN SAFE_CAST(WTSSBJ2Y AS FLOAT64)WHEN WTSSBJ2Y IS NULL THEN NULL 
ELSE NULL 
 END as surplus_specimen_b_17_18_2_year_weights,
WHEN SSDONA IS NOT NULL THEN SAFE_CAST(SSDONA AS FLOAT64)WHEN SSDONA IS NULL THEN NULL 
ELSE NULL 
 END as dodecafluoro_3h_4_8_dioxanoate,
CASE
    WHEN SSDONAL = 0 THEN 'At or above the detection limit' 
WHEN SSDONAL = 1 THEN 'Below lower detection limit' 
WHEN SSDONAL IS NULL THEN NULL 
ELSE NULL 
 END as dodecafluoro_3h_4_8_dioxanoate_cmt_cd,
WHEN SSGENX IS NOT NULL THEN SAFE_CAST(SSGENX AS FLOAT64)WHEN SSGENX IS NULL THEN NULL 
ELSE NULL 
 END as genx,
CASE
    WHEN SSGENXL = 0 THEN 'At or above the detection limit' 
WHEN SSGENXL = 1 THEN 'Below lower detection limit' 
WHEN SSGENXL IS NULL THEN NULL 
ELSE NULL 
 END as genx_cmt_cd,
WHEN SSCLPF IS NOT NULL THEN SAFE_CAST(SSCLPF AS FLOAT64)WHEN SSCLPF IS NULL THEN NULL 
ELSE NULL 
 END as chlorohexadecafluorooxanonane_sulfonate,
CASE
    WHEN SSCLPFL = 0 THEN 'At or above the detection limit' 
WHEN SSCLPFL = 1 THEN 'Below lower detection limit' 
WHEN SSCLPFL IS NULL THEN NULL 
ELSE NULL 
 END as chlorohexadecafluorooxanonane_sulfon_cd,
WHEN SSFHPS IS NOT NULL THEN SAFE_CAST(SSFHPS AS FLOAT64)WHEN SSFHPS IS NULL THEN NULL 
ELSE NULL 
 END as perfluoro_1_heptanesulfonate,
CASE
    WHEN SSFHPSL = 0 THEN 'At or above the detection limit' 
WHEN SSFHPSL = 1 THEN 'Below lower detection limit' 
WHEN SSFHPSL IS NULL THEN NULL 
ELSE NULL 
 END as perfluoro_1_heptanesulfonate_cmt_cd,
WHEN SSPFHA IS NOT NULL THEN SAFE_CAST(SSPFHA AS FLOAT64)WHEN SSPFHA IS NULL THEN NULL 
ELSE NULL 
 END as perfluorohexanoate,
CASE
    WHEN SSPFHAL = 0 THEN 'At or above the detection limit' 
WHEN SSPFHAL = 1 THEN 'Below lower detection limit' 
WHEN SSPFHAL IS NULL THEN NULL 
ELSE NULL 
 END as perfluorohexanoate_cmt_cd,
 FROM {ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_surplus_laboratory'})