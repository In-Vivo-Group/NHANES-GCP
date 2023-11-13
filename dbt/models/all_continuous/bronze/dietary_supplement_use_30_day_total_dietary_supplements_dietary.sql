SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN DSDCOUNT IS NULL THEN NULL 
ELSE DSDCOUNT 
 END as total_of_dietary_supplements_taken, 

CASE
            WHEN DSDANCNT IS NULL THEN NULL 
ELSE DSDANCNT 
 END as total_of_antacids_taken, 

CASE
            WHEN DSD010 = 1 THEN 'Yes' -- categorize numeric values
WHEN DSD010 = 2 THEN 'No' -- categorize numeric values
WHEN DSD010 = 7 THEN 'Refused' -- categorize numeric values
WHEN DSD010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSD010 IS NULL THEN NULL 
ELSE DSD010 
 END as any_dietary_supplements_taken, 

CASE
            WHEN DSD010AN = 1 THEN 'Yes' -- categorize numeric values
WHEN DSD010AN = 2 THEN 'No' -- categorize numeric values
WHEN DSD010AN = 7 THEN 'Refused' -- categorize numeric values
WHEN DSD010AN = 9 THEN 'Dont know' -- categorize numeric values
WHEN DSD010AN IS NULL THEN NULL 
ELSE DSD010AN 
 END as any_antacids_taken, 

CASE
            WHEN DSQTKCAL IS NULL THEN NULL 
ELSE DSQTKCAL 
 END as energy_kcal, 

CASE
            WHEN DSQTPROT IS NULL THEN NULL 
ELSE DSQTPROT 
 END as protein_gm, 

CASE
            WHEN DSQTCARB IS NULL THEN NULL 
ELSE DSQTCARB 
 END as carbohydrate_gm, 

CASE
            WHEN DSQTSUGR IS NULL THEN NULL 
ELSE DSQTSUGR 
 END as total_sugars_gm, 

CASE
            WHEN DSQTFIBE IS NULL THEN NULL 
ELSE DSQTFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DSQTTFAT IS NULL THEN NULL 
ELSE DSQTTFAT 
 END as total_fat_gm, 

CASE
            WHEN DSQTSFAT IS NULL THEN NULL 
ELSE DSQTSFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DSQTMFAT IS NULL THEN NULL 
ELSE DSQTMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DSQTPFAT IS NULL THEN NULL 
ELSE DSQTPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DSQTCHOL IS NULL THEN NULL 
ELSE DSQTCHOL 
 END as cholesterol_mg, 

CASE
            WHEN DSQTLYCO IS NULL THEN NULL 
ELSE DSQTLYCO 
 END as lycopene_mcg, 

CASE
            WHEN DSQTLZ IS NULL THEN NULL 
ELSE DSQTLZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DSQTVB1 IS NULL THEN NULL 
ELSE DSQTVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DSQTVB2 IS NULL THEN NULL 
ELSE DSQTVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DSQTNIAC IS NULL THEN NULL 
ELSE DSQTNIAC 
 END as niacin_mg, 

CASE
            WHEN DSQTVB6 IS NULL THEN NULL 
ELSE DSQTVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DSQTFA IS NULL THEN NULL 
ELSE DSQTFA 
 END as folic_acid_mcg, 

CASE
            WHEN DSQTFDFE IS NULL THEN NULL 
ELSE DSQTFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DSQTCHL IS NULL THEN NULL 
ELSE DSQTCHL 
 END as total_choline_mg, 

CASE
            WHEN DSQTVB12 IS NULL THEN NULL 
ELSE DSQTVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DSQTVC IS NULL THEN NULL 
ELSE DSQTVC 
 END as vitamin_c_mg, 

CASE
            WHEN DSQTVK IS NULL THEN NULL 
ELSE DSQTVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DSQTVD IS NULL THEN NULL 
ELSE DSQTVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DSQTCALC IS NULL THEN NULL 
ELSE DSQTCALC 
 END as calcium_mg, 

CASE
            WHEN DSQTPHOS IS NULL THEN NULL 
ELSE DSQTPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DSQTMAGN IS NULL THEN NULL 
ELSE DSQTMAGN 
 END as magnesium_mg, 

CASE
            WHEN DSQTIRON IS NULL THEN NULL 
ELSE DSQTIRON 
 END as iron_mg, 

CASE
            WHEN DSQTZINC IS NULL THEN NULL 
ELSE DSQTZINC 
 END as zinc_mg, 

CASE
            WHEN DSQTCOPP IS NULL THEN NULL 
ELSE DSQTCOPP 
 END as copper_mg, 

CASE
            WHEN DSQTSODI IS NULL THEN NULL 
ELSE DSQTSODI 
 END as sodium_mg, 

CASE
            WHEN DSQTPOTA IS NULL THEN NULL 
ELSE DSQTPOTA 
 END as potassium_mg, 

CASE
            WHEN DSQTSELE IS NULL THEN NULL 
ELSE DSQTSELE 
 END as selenium_mcg, 

CASE
            WHEN DSQTCAFF IS NULL THEN NULL 
ELSE DSQTCAFF 
 END as caffeine_mg, 

CASE
            WHEN DSQTIODI IS NOT NULL THEN SAFE_CAST(DSQTIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSQTIODI IS NULL THEN NULL 
ELSE DSQTIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_30_day_total_dietary_supplements_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DSQTOT_J.htm
        