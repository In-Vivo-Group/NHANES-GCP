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
            WHEN DR1DRSTZ = 1 THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN DR1DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN DR1DRSTZ = 4 THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN DR1DRSTZ = 5 THEN 'Not done' -- categorize numeric values
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE DR1DRSTZ 
 END as dietary_recall_status, 

CASE
            WHEN DR1EXMER IS NULL THEN NULL 
ELSE DR1EXMER 
 END as interviewer_id_code, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NULL THEN NULL 
ELSE DR1DBIH 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN DR1DAY = 1 THEN 'Sunday' -- categorize numeric values
WHEN DR1DAY = 2 THEN 'Monday' -- categorize numeric values
WHEN DR1DAY = 3 THEN 'Tuesday' -- categorize numeric values
WHEN DR1DAY = 4 THEN 'Wednesday' -- categorize numeric values
WHEN DR1DAY = 5 THEN 'Thursday' -- categorize numeric values
WHEN DR1DAY = 6 THEN 'Friday' -- categorize numeric values
WHEN DR1DAY = 7 THEN 'Saturday' -- categorize numeric values
WHEN DR1DAY IS NULL THEN NULL 
ELSE DR1DAY 
 END as intake_day_of_the_week, 

CASE
            WHEN DR1LANG = 1 THEN 'English' -- categorize numeric values
WHEN DR1LANG = 2 THEN 'Spanish' -- categorize numeric values
WHEN DR1LANG = 3 THEN 'English and Spanish' -- categorize numeric values
WHEN DR1LANG = 4 THEN 'Other' -- categorize numeric values
WHEN DR1LANG = 5 THEN 'Asian Languages' -- categorize numeric values
WHEN DR1LANG = 6 THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR1LANG IS NULL THEN NULL 
ELSE DR1LANG 
 END as language_respondent_used_mostly, 

CASE
            WHEN DS1LOC = 1 THEN 'HouseHold Interview' -- categorize numeric values
WHEN DS1LOC = 2 THEN 'MEC Interview' -- categorize numeric values
WHEN DS1LOC = 3 THEN 'Phone Interview' -- categorize numeric values
WHEN DS1LOC IS NULL THEN NULL 
ELSE DS1LOC 
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
            WHEN DS1MTCH = 1 THEN 'Exact or near exact match' -- categorize numeric values
WHEN DS1MTCH = 2 THEN 'Probable match' -- categorize numeric values
WHEN DS1MTCH = 3 THEN 'Generic match' -- categorize numeric values
WHEN DS1MTCH = 4 THEN 'Reasonable match' -- categorize numeric values
WHEN DS1MTCH = 5 THEN 'Default match' -- categorize numeric values
WHEN DS1MTCH = 6 THEN 'No match' -- categorize numeric values
WHEN DS1MTCH = 7 THEN 'Refused' -- categorize numeric values
WHEN DS1MTCH = 9 THEN 'Dont know' -- categorize numeric values
WHEN DS1MTCH IS NULL THEN NULL 
ELSE DS1MTCH 
 END as matching_code, 

CASE
            WHEN DS1ANTA = 0 THEN 'Non-antacid supplement' -- categorize numeric values
WHEN DS1ANTA = 1 THEN 'Antacid containing calcium and/or magnesium' -- categorize numeric values
WHEN DS1ANTA = 2 THEN 'Antacids reported with antacids' -- categorize numeric values
WHEN DS1ANTA IS NULL THEN NULL 
ELSE DS1ANTA 
 END as antacid_containing_calcium_magnesium, 

CASE
            WHEN DS1ACTSS IS NULL THEN NULL 
ELSE DS1ACTSS 
 END as reported_serving_size_label_serving_size, 

CASE
            WHEN DS1IKCAL IS NULL THEN NULL 
ELSE DS1IKCAL 
 END as energy_kcal, 

CASE
            WHEN DS1IPROT IS NULL THEN NULL 
ELSE DS1IPROT 
 END as protein_gm, 

CASE
            WHEN DS1ICARB IS NULL THEN NULL 
ELSE DS1ICARB 
 END as carbohydrate_gm, 

CASE
            WHEN DS1ISUGR IS NULL THEN NULL 
ELSE DS1ISUGR 
 END as total_sugars_gm, 

CASE
            WHEN DS1IFIBE IS NULL THEN NULL 
ELSE DS1IFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DS1ITFAT IS NULL THEN NULL 
ELSE DS1ITFAT 
 END as total_fat_gm, 

CASE
            WHEN DS1ISFAT IS NULL THEN NULL 
ELSE DS1ISFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS1IMFAT IS NULL THEN NULL 
ELSE DS1IMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS1IPFAT IS NULL THEN NULL 
ELSE DS1IPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS1ICHOL IS NULL THEN NULL 
ELSE DS1ICHOL 
 END as cholesterol_mg, 

CASE
            WHEN DS1ILYCO IS NULL THEN NULL 
ELSE DS1ILYCO 
 END as lycopene_mcg, 

CASE
            WHEN DS1ILZ IS NULL THEN NULL 
ELSE DS1ILZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS1IVB1 IS NULL THEN NULL 
ELSE DS1IVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS1IVB2 IS NULL THEN NULL 
ELSE DS1IVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS1INIAC IS NULL THEN NULL 
ELSE DS1INIAC 
 END as niacin_mg, 

CASE
            WHEN DS1IVB6 IS NULL THEN NULL 
ELSE DS1IVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DS1IFA IS NULL THEN NULL 
ELSE DS1IFA 
 END as folic_acid_mcg, 

CASE
            WHEN DS1IFDFE IS NULL THEN NULL 
ELSE DS1IFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DS1ICHL IS NULL THEN NULL 
ELSE DS1ICHL 
 END as total_choline_mg, 

CASE
            WHEN DS1IVB12 IS NULL THEN NULL 
ELSE DS1IVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS1IVC IS NULL THEN NULL 
ELSE DS1IVC 
 END as vitamin_c_mg, 

CASE
            WHEN DS1IVK IS NULL THEN NULL 
ELSE DS1IVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DS1IVD IS NULL THEN NULL 
ELSE DS1IVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS1ICALC IS NULL THEN NULL 
ELSE DS1ICALC 
 END as calcium_mg, 

CASE
            WHEN DS1IPHOS IS NULL THEN NULL 
ELSE DS1IPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DS1IMAGN IS NULL THEN NULL 
ELSE DS1IMAGN 
 END as magnesium_mg, 

CASE
            WHEN DS1IIRON IS NULL THEN NULL 
ELSE DS1IIRON 
 END as iron_mg, 

CASE
            WHEN DS1IZINC IS NULL THEN NULL 
ELSE DS1IZINC 
 END as zinc_mg, 

CASE
            WHEN DS1ICOPP IS NULL THEN NULL 
ELSE DS1ICOPP 
 END as copper_mg, 

CASE
            WHEN DS1ISODI IS NULL THEN NULL 
ELSE DS1ISODI 
 END as sodium_mg, 

CASE
            WHEN DS1IPOTA IS NULL THEN NULL 
ELSE DS1IPOTA 
 END as potassium_mg, 

CASE
            WHEN DS1ISELE IS NULL THEN NULL 
ELSE DS1ISELE 
 END as selenium_mcg, 

CASE
            WHEN DS1ICAFF IS NULL THEN NULL 
ELSE DS1ICAFF 
 END as caffeine_mg, 

CASE
            WHEN DS1IIODI IS NOT NULL THEN SAFE_CAST(DS1IIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS1IIODI IS NULL THEN NULL 
ELSE DS1IIODI 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_individual_dietary_supplements_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS1IDS_J.htm
        