SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE SAFE_CAST(WTDRD1 AS STRING) 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE SAFE_CAST(WTDR2D AS STRING) 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN SAFE_CAST(DR1DRSTZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Not done' -- categorize numeric values
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DRSTZ AS STRING) 
 END as dietary_recall_status, 

CASE
            WHEN DR1EXMER IS NULL THEN NULL 
ELSE SAFE_CAST(DR1EXMER AS STRING) 
 END as interviewer_id_code, 

CASE
            WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Day 1 only' -- categorize numeric values
WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE SAFE_CAST(DRDINT AS STRING) 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DBIH AS STRING) 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Sunday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Monday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Tuesday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Wednesday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Thursday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Friday' -- categorize numeric values
WHEN SAFE_CAST(DR1DAY AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Saturday' -- categorize numeric values
WHEN DR1DAY IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DAY AS STRING) 
 END as intake_day_of_the_week, 

CASE
            WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'English and Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Asian Languages' -- categorize numeric values
WHEN SAFE_CAST(DR1LANG AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR1LANG IS NULL THEN NULL 
ELSE SAFE_CAST(DR1LANG AS STRING) 
 END as language_respondent_used_mostly, 

CASE
            WHEN SAFE_CAST(DS1LOC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'HouseHold Interview' -- categorize numeric values
WHEN SAFE_CAST(DS1LOC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'MEC Interview' -- categorize numeric values
WHEN SAFE_CAST(DS1LOC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Phone Interview' -- categorize numeric values
WHEN DS1LOC IS NULL THEN NULL 
ELSE SAFE_CAST(DS1LOC AS STRING) 
 END as location_supplement_originally_recorded, 

CASE
            WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSDPID IS NULL THEN NULL 
ELSE SAFE_CAST(DSDPID AS FLOAT64) 
 END as nchs_supplement_id, 

CASE
            WHEN REPLACE(DSDSUPP,'.0','') = 'Supplement Name' THEN 'Value was recorded' -- categorize string values 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE SAFE_CAST(DSDSUPP AS STRING) 
 END as supplement_name, 

CASE
            WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Exact or near exact match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Probable match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Generic match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reasonable match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Default match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'No match' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DS1MTCH AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DS1MTCH IS NULL THEN NULL 
ELSE SAFE_CAST(DS1MTCH AS STRING) 
 END as matching_code, 

CASE
            WHEN SAFE_CAST(DS1ANTA AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'Non-antacid supplement' -- categorize numeric values
WHEN SAFE_CAST(DS1ANTA AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Antacid containing calcium and/or magnesium' -- categorize numeric values
WHEN SAFE_CAST(DS1ANTA AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Antacids reported with antacids' -- categorize numeric values
WHEN DS1ANTA IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ANTA AS STRING) 
 END as antacid_containing_calcium_magnesium, 

CASE
            WHEN DS1ACTSS IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ACTSS AS STRING) 
 END as reported_serving_size_label_serving_size, 

CASE
            WHEN DS1IKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DS1IPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DS1ICARB IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DS1ISUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ISUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DS1IFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DS1ITFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ITFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DS1ISFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ISFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS1IMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS1IPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS1ICHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DS1ILYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ILYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DS1ILZ IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ILZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS1IVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS1IVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS1INIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DS1INIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DS1IVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DS1IFA IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DS1IFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DS1ICHL IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICHL AS STRING) 
 END as total_choline_mg, 

CASE
            WHEN DS1IVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVB12 AS STRING) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS1IVC IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVC AS STRING) 
 END as vitamin_c_mg, 

CASE
            WHEN DS1IVK IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVK AS STRING) 
 END as vitamin_k_mcg, 

CASE
            WHEN DS1IVD IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IVD AS STRING) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS1ICALC IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICALC AS STRING) 
 END as calcium_mg, 

CASE
            WHEN DS1IPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IPHOS AS STRING) 
 END as phosphorus_mg, 

CASE
            WHEN DS1IMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IMAGN AS STRING) 
 END as magnesium_mg, 

CASE
            WHEN DS1IIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IIRON AS STRING) 
 END as iron_mg, 

CASE
            WHEN DS1IZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IZINC AS STRING) 
 END as zinc_mg, 

CASE
            WHEN DS1ICOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICOPP AS STRING) 
 END as copper_mg, 

CASE
            WHEN DS1ISODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ISODI AS STRING) 
 END as sodium_mg, 

CASE
            WHEN DS1IPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IPOTA AS STRING) 
 END as potassium_mg, 

CASE
            WHEN DS1ISELE IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ISELE AS STRING) 
 END as selenium_mcg, 

CASE
            WHEN DS1ICAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DS1ICAFF AS STRING) 
 END as caffeine_mg, 

CASE
            WHEN DS1IIODI IS NOT NULL THEN SAFE_CAST(DS1IIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS1IIODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS1IIODI AS FLOAT64) 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_individual_dietary_supplements_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS1IDS_J.htm
        