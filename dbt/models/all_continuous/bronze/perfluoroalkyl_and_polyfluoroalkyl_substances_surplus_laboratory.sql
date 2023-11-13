SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTSSBJ2Y IS NULL THEN NULL 
ELSE WTSSBJ2Y 
 END as surplus_specimen_b_17_18_2_year_weights, 

CASE
            WHEN SSDONA IS NULL THEN NULL 
ELSE SSDONA 
 END as dodecafluoro_3h_4_8_dioxanoate, 

CASE
            WHEN SSDONAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSDONAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSDONAL IS NULL THEN NULL 
ELSE SSDONAL 
 END as dodecafluoro_3h_4_8_dioxanoate_cmt_cd, 

CASE
            WHEN SSGENX IS NULL THEN NULL 
ELSE SSGENX 
 END as genx, 

CASE
            WHEN SSGENXL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSGENXL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSGENXL IS NULL THEN NULL 
ELSE SSGENXL 
 END as genx_cmt_cd, 

CASE
            WHEN SSCLPF IS NULL THEN NULL 
ELSE SSCLPF 
 END as chlorohexadecafluorooxanonane_sulfonate, 

CASE
            WHEN SSCLPFL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSCLPFL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSCLPFL IS NULL THEN NULL 
ELSE SSCLPFL 
 END as chlorohexadecafluorooxanonane_sulfon_cd, 

CASE
            WHEN SSFHPS IS NULL THEN NULL 
ELSE SSFHPS 
 END as perfluoro_1_heptanesulfonate, 

CASE
            WHEN SSFHPSL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSFHPSL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSFHPSL IS NULL THEN NULL 
ELSE SSFHPSL 
 END as perfluoro_1_heptanesulfonate_cmt_cd, 

CASE
            WHEN SSPFHA IS NULL THEN NULL 
ELSE SSPFHA 
 END as perfluorohexanoate, 

CASE
            WHEN SSPFHAL = 0 THEN 'At or above the detection limit' -- categorize numeric values
WHEN SSPFHAL = 1 THEN 'Below lower detection limit' -- categorize numeric values
WHEN SSPFHAL IS NULL THEN NULL 
ELSE SSPFHAL 
 END as perfluorohexanoate_cmt_cd, 

 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_surplus_laboratory') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SSPFAS_J.htm
        