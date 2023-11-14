SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WTDRD1 IS NULL THEN NULL 
ELSE SAFE_CAST(WTDRD1 AS FLOAT64) 
 END as dietary_day_one_sample_weight, 

CASE
            WHEN WTDR2D IS NULL THEN NULL 
ELSE SAFE_CAST(WTDR2D AS FLOAT64) 
 END as dietary_two_day_sample_weight, 

CASE
            WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Reliable and met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Not reliable or not met the minimum criteria' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reported consuming breast-milk' -- categorize numeric values
WHEN SAFE_CAST(DR2DRSTZ AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Not done' -- categorize numeric values
WHEN DR2DRSTZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DRSTZ AS STRING) 
 END as dietary_recall_status, 

CASE
            WHEN DR2EXMER IS NULL THEN NULL 
ELSE SAFE_CAST(DR2EXMER AS STRING) 
 END as interviewer_id_code, 

CASE
            WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Day 1 only' -- categorize numeric values
WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE SAFE_CAST(DRDINT AS STRING) 
 END as number_of_days_of_intake, 

CASE
            WHEN DR2DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DBIH AS STRING) 
 END as of_days_b_w_intake_and_hh_interview, 

CASE
            WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Sunday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Monday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Tuesday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Wednesday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Thursday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Friday' -- categorize numeric values
WHEN SAFE_CAST(DR2DAY AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Saturday' -- categorize numeric values
WHEN DR2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(DR2DAY AS STRING) 
 END as intake_day_of_the_week, 

CASE
            WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'English' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'English and Spanish' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Asian Languages' -- categorize numeric values
WHEN SAFE_CAST(DR2LANG AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Asian Languages and English' -- categorize numeric values
WHEN DR2LANG IS NULL THEN NULL 
ELSE SAFE_CAST(DR2LANG AS STRING) 
 END as language_respondent_used_mostly, 

CASE
            WHEN SAFE_CAST(DS2LOC AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'HouseHold Interview' -- categorize numeric values
WHEN SAFE_CAST(DS2LOC AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'MEC Interview' -- categorize numeric values
WHEN SAFE_CAST(DS2LOC AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Phone Interview' -- categorize numeric values
WHEN DS2LOC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2LOC AS STRING) 
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
            WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Exact or near exact match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Probable match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Generic match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Reasonable match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Default match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'No match' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DS2MTCH AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DS2MTCH IS NULL THEN NULL 
ELSE SAFE_CAST(DS2MTCH AS STRING) 
 END as matching_code, 

CASE
            WHEN SAFE_CAST(DS2ANTA AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'Non-antacid supplement' -- categorize numeric values
WHEN SAFE_CAST(DS2ANTA AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Antacid containing calcium and/or magnesium' -- categorize numeric values
WHEN SAFE_CAST(DS2ANTA AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Antacids reported with antacids' -- categorize numeric values
WHEN DS2ANTA IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ANTA AS STRING) 
 END as antacid_containing_calcium_magnesium, 

CASE
            WHEN DS2ACTSS IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ACTSS AS STRING) 
 END as reported_serving_size_label_serving_size, 

CASE
            WHEN DS2IKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DS2IPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DS2ICARB IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DS2ISUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ISUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DS2IFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DS2ITFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ITFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DS2ISFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ISFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DS2IMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DS2IPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DS2ICHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DS2ILYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ILYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DS2ILZ IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ILZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DS2IVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DS2IVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DS2INIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2INIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DS2IVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DS2IFA IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DS2IFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DS2ICHL IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICHL AS STRING) 
 END as total_choline_mg, 

CASE
            WHEN DS2IVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVB12 AS STRING) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DS2IVC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVC AS STRING) 
 END as vitamin_c_mg, 

CASE
            WHEN DS2IVK IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVK AS STRING) 
 END as vitamin_k_mcg, 

CASE
            WHEN DS2IVD IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IVD AS STRING) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DS2ICALC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICALC AS STRING) 
 END as calcium_mg, 

CASE
            WHEN DS2IPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IPHOS AS STRING) 
 END as phosphorus_mg, 

CASE
            WHEN DS2IMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IMAGN AS STRING) 
 END as magnesium_mg, 

CASE
            WHEN DS2IIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IIRON AS STRING) 
 END as iron_mg, 

CASE
            WHEN DS2IZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IZINC AS STRING) 
 END as zinc_mg, 

CASE
            WHEN DS2ICOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICOPP AS STRING) 
 END as copper_mg, 

CASE
            WHEN DS2ISODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ISODI AS STRING) 
 END as sodium_mg, 

CASE
            WHEN DS2IPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IPOTA AS STRING) 
 END as potassium_mg, 

CASE
            WHEN DS2ISELE IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ISELE AS STRING) 
 END as selenium_mcg, 

CASE
            WHEN DS2ICAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DS2ICAFF AS STRING) 
 END as caffeine_mg, 

CASE
            WHEN DS2IIODI IS NOT NULL THEN SAFE_CAST(DS2IIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DS2IIODI IS NULL THEN NULL 
ELSE SAFE_CAST(DS2IIODI AS FLOAT64) 
 END as iodine_mcg, 

 FROM {{ ref('stg_dietary_supplement_use_24_hour_individual_dietary_supplements_second_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DS2IDS_J.htm
        