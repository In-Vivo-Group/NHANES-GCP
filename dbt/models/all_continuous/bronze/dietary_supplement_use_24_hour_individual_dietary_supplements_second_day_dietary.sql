SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE WTDRD1 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE WTDR2D 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN DR2DRSTZ = 1 THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN DR2DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN DR2DRSTZ = 4 THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN DR2DRSTZ = 5 THEN 'Not done' -- categorize numeric values
WHEN DR2DRSTZ IS NULL THEN NULL 
ELSE DR2DRSTZ 
 END as dietary_recall_status, 

CASE
            WHEN DR2EXMER IS NULL THEN NULL 
ELSE DR2EXMER 
 END as interviewer_id_code, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR2DBIH IS NULL THEN NULL 
ELSE DR2DBIH 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN DR2DAY = 1 THEN 'Sunday' -- categorize numeric values
WHEN DR2DAY = 2 THEN 'Monday' -- categorize numeric values
WHEN DR2DAY = 3 THEN 'Tuesday' -- categorize numeric values
WHEN DR2DAY = 4 THEN 'Wednesday' -- categorize numeric values
WHEN DR2DAY = 5 THEN 'Thursday' -- categorize numeric values
WHEN DR2DAY = 6 THEN 'Friday' -- categorize numeric values
WHEN DR2DAY = 7 THEN 'Saturday' -- categorize numeric values
WHEN DR2DAY IS NULL THEN NULL 
ELSE DR2DAY 
 END as intake_day_of_the_week, 

CASE
            WHEN DR2LANG = 1 THEN 'English' -- categorize numeric values
WHEN DR2LANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN DR2LANG = 3 THEN 'English and Spanish' -- categorize numeric values
WHEN DR2LANG = 4 THEN 'Other' -- categorize numeric values
WHEN DR2LANG = 5 THEN 'Asian Languages' -- categorize numeric values
WHEN DR2LANG = 6 THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR2LANG IS NULL THEN NULL 
ELSE DR2LANG 
 END as language_respondent_used_mostly, 

CASE
            WHEN DS2LOC = 1 THEN 'HouseHold Interview' -- categorize numeric values
WHEN DS2LOC = 2 THEN 'MEC Interview' -- categorize numeric values
WHEN DS2LOC = 3 THEN 'Phone Interview' -- categorize numeric values
WHEN DS2LOC IS NULL THEN NULL 
ELSE DS2LOC 
 END as location_supplement_originally_recorded, 

CASE
            WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSDPID IS NULL THEN NULL 
ELSE DSDPID 
 END as nchs_supplement_id, 

CASE
            WHEN DSDSUPP = 'Supplement Name' THEN 'Value was recorded' -- categorize string values 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE DSDSUPP 
 END as supplement_name, 

CASE
            WHEN DS2MTCH = 1 THEN 'Exact or near exact match' -- categorize numeric values
WHEN DS2MTCH = 2 THEN 'Probable match' -- categorize numeric values
WHEN DS2MTCH = 3 THEN 'Generic match' -- categorize numeric values
WHEN DS2MTCH = 4 THEN 'Reasonable match' -- categorize numeric values
WHEN DS2MTCH = 5 THEN 'Default match' -- categorize numeric values
WHEN DS2MTCH = 6 THEN 'No match' -- categorize numeric values
WHEN DS2MTCH = 7 THEN 'Refused' -- categorize numeric values
WHEN DS2MTCH = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS2MTCH IS NULL THEN NULL 
ELSE DS2MTCH 
 END as matching_code, 

CASE
            WHEN DS2ANTA = 0 THEN 'Non-antacid supplement' -- categorize numeric values
WHEN DS2ANTA = 1 THEN 'Antacid containing calcium and/or magnesium' -- categorize numeric values
WHEN DS2ANTA = 2 THEN 'Antacids reported with antacids' -- categorize numeric values
WHEN DS2ANTA IS NULL THEN NULL 
ELSE DS2ANTA 
 END as antacid_containing_calcium_magnesium, 

CASE
            WHEN DS2ACTSS IS NULL THEN NULL 
ELSE DS2ACTSS 
 END as reported_serving_size_label_serving_size, 

CASE
            WHEN DS2IKCAL IS NULL THEN NULL 
ELSE DS2IKCAL 
 END as energy_kcal, 

CASE
            WHEN DS2IPROT IS NULL THEN NULL 
ELSE DS2IPROT 
 END as protein_gm, 

CASE
            WHEN DS2ICARB IS NULL THEN NULL 
ELSE DS2ICARB 
 END as carbohydrate_gm, 

CASE
            WHEN DS2ISUGR IS NULL THEN NULL 
ELSE DS2ISUGR 
 END as total_sugars_gm, 

CASE
            WHEN DS2IFIBE IS NULL THEN NULL 
ELSE DS2IFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DS2ITFAT IS NULL THEN NULL 
ELSE DS2ITFAT 
 END as total_fat_gm, 

CASE
            WHEN DS2ISFAT IS NULL THEN NULL 
ELSE DS2ISFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS2IMFAT IS NULL THEN NULL 
ELSE DS2IMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS2IPFAT IS NULL THEN NULL 
ELSE DS2IPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS2ICHOL IS NULL THEN NULL 
ELSE DS2ICHOL 
 END as cholesterol_mg, 

CASE
            WHEN DS2ILYCO IS NULL THEN NULL 
ELSE DS2ILYCO 
 END as lycopene_mcg, 

CASE
            WHEN DS2ILZ IS NULL THEN NULL 
ELSE DS2ILZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS2IVB1 IS NULL THEN NULL 
ELSE DS2IVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS2IVB2 IS NULL THEN NULL 
ELSE DS2IVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS2INIAC IS NULL THEN NULL 
ELSE DS2INIAC 
 END as niacin_mg, 

CASE
            WHEN DS2IVB6 IS NULL THEN NULL 
ELSE DS2IVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DS2IFA IS NULL THEN NULL 
ELSE DS2IFA 
 END as folic_acid_mcg, 

CASE
            WHEN DS2IFDFE IS NULL THEN NULL 
ELSE DS2IFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DS2ICHL IS NULL THEN NULL 
ELSE DS2ICHL 
 END as total_choline_mg, 

CASE
            WHEN DS2IVB12 IS NULL THEN NULL 
ELSE DS2IVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS2IVC IS NULL THEN NULL 
ELSE DS2IVC 
 END as vitamin_c_mg, 

CASE
            WHEN DS2IVK IS NULL THEN NULL 
ELSE DS2IVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DS2IVD IS NULL THEN NULL 
ELSE DS2IVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS2ICALC IS NULL THEN NULL 
ELSE DS2ICALC 
 END as calcium_mg, 

CASE
            WHEN DS2IPHOS IS NULL THEN NULL 
ELSE DS2IPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DS2IMAGN IS NULL THEN NULL 
ELSE DS2IMAGN 
 END as magnesium_mg, 

CASE
            WHEN DS2IIRON IS NULL THEN NULL 
ELSE DS2IIRON 
 END as iron_mg, 

CASE
            WHEN DS2IZINC IS NULL THEN NULL 
ELSE DS2IZINC 
 END as zinc_mg, 

CASE
            WHEN DS2ICOPP IS NULL THEN NULL 
ELSE DS2ICOPP 
 END as copper_mg, 

CASE
            WHEN DS2ISODI IS NULL THEN NULL 
ELSE DS2ISODI 
 END as sodium_mg, 

CASE
            WHEN DS2IPOTA IS NULL THEN NULL 
ELSE DS2IPOTA 
 END as potassium_mg, 

CASE
            WHEN DS2ISELE IS NULL THEN NULL 
ELSE DS2ISELE 
 END as selenium_mcg, 

CASE
            WHEN DS2ICAFF IS NULL THEN NULL 
ELSE DS2ICAFF 
 END as caffeine_mg, 

CASE
            WHEN DS2IIODI IS NOT NULL THEN SAFE_CAST(DS2IIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS2IIODI IS NULL THEN NULL 
ELSE DS2IIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_individual_dietary_supplements_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS2IDS_J.htm
        