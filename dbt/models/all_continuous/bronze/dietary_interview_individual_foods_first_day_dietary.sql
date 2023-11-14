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
            WHEN DR1ILINE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ILINE AS STRING) 
 END as food_individual_component_number, 

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
            WHEN SAFE_CAST(DRABF AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DRABF AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN DRABF IS NULL THEN NULL 
ELSE SAFE_CAST(DRABF AS STRING) 
 END as breast_fed_infant_either_day, 

CASE
            WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Day 1 only' -- categorize numeric values
WHEN SAFE_CAST(DRDINT AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE SAFE_CAST(DRDINT AS STRING) 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NOT NULL THEN SAFE_CAST(DR1DBIH AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1DBIH IS NULL THEN NULL 
ELSE SAFE_CAST(DR1DBIH AS FLOAT64) 
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
            WHEN DR1CCMNM IS NULL THEN NULL 
ELSE SAFE_CAST(DR1CCMNM AS STRING) 
 END as combination_food_number, 

CASE
            WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(0 AS FLOAT64) THEN 'Non-combination food' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Beverage w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Cereal w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Bread/baked products w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Salad' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Sandwiches' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Soup' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Frozen meals' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Ice cream/frozen yogurt w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dried beans and vegetable w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN 'Fruit w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(11 AS FLOAT64) THEN 'Tortilla products' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN 'Meat, poultry, fish' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'LunchablesÂ®' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN 'Chips w/ additions' -- categorize numeric values
WHEN SAFE_CAST(DR1CCMTX AS FLOAT64) = SAFE_CAST(90 AS FLOAT64) THEN 'Other mixtures' -- categorize numeric values
WHEN DR1CCMTX IS NULL THEN NULL 
ELSE SAFE_CAST(DR1CCMTX AS STRING) 
 END as combination_food_type, 

CASE
            WHEN DR1_020 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_020 AS STRING) 
 END as time_of_eating_occasion_hh_mm, 

CASE
            WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Breakfast' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Lunch' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Dinner' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Supper' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Brunch' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Snack' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Drink' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Infant feeding' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Extended consumption' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN 'Desayano' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(11 AS FLOAT64) THEN 'Almuerzo' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN 'Comida' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'Merienda' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN 'Cena' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(15 AS FLOAT64) THEN 'Entre comida' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(16 AS FLOAT64) THEN 'Botana' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(17 AS FLOAT64) THEN 'Bocadillo' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(18 AS FLOAT64) THEN 'Tentempie' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(19 AS FLOAT64) THEN 'Bebida' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(DR1_030Z AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DR1_030Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_030Z AS STRING) 
 END as name_of_eating_occasion, 

CASE
            WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Store - grocery/supermarket' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Restaurant with waiter/waitress' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Restaurant fast food/pizza' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Bar/tavern/lounge' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Restaurant no additional information' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Cafeteria NOT in a K-12 school' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Cafeteria in a K-12 school' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN 'Child/Adult care center' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Child/Adult home care' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(10 AS FLOAT64) THEN 'Soup kitchen/shelter/food pantry' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(11 AS FLOAT64) THEN 'Meals on Wheels' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(12 AS FLOAT64) THEN 'Community food program - other' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(13 AS FLOAT64) THEN 'Community program no additional information' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(14 AS FLOAT64) THEN 'Vending machine' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(15 AS FLOAT64) THEN 'Common coffee pot or snack tray' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(16 AS FLOAT64) THEN 'From someone else/gift' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(17 AS FLOAT64) THEN 'Mail order purchase' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(18 AS FLOAT64) THEN 'Residential dining facility' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(19 AS FLOAT64) THEN 'Grown or caught by you or someone you know' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(20 AS FLOAT64) THEN 'Fish caught by you or someone you know' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(24 AS FLOAT64) THEN 'Sport, recreation, or entertainment facility' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(25 AS FLOAT64) THEN 'Street vendor, vending truck' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(26 AS FLOAT64) THEN 'Fundraiser sales' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(27 AS FLOAT64) THEN 'Store - convenience type' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(28 AS FLOAT64) THEN 'Store - no additional info' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(91 AS FLOAT64) THEN 'Other, specify' -- categorize numeric values
WHEN SAFE_CAST(DR1FS AS FLOAT64) = SAFE_CAST(99 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DR1FS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1FS AS STRING) 
 END as source_of_food, 

CASE
            WHEN SAFE_CAST(DR1_040Z AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(DR1_040Z AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(DR1_040Z AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(DR1_040Z AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN 'Dont know' -- categorize numeric values
WHEN DR1_040Z IS NULL THEN NULL 
ELSE SAFE_CAST(DR1_040Z AS STRING) 
 END as did_you_eat_this_meal_at_home, 

CASE
            WHEN DR1IFDCD IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFDCD AS STRING) 
 END as usda_food_code, 

CASE
            WHEN DR1IGRMS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IGRMS AS STRING) 
 END as grams, 

CASE
            WHEN DR1IKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IKCAL AS STRING) 
 END as energy_kcal, 

CASE
            WHEN DR1IPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IPROT AS STRING) 
 END as protein_gm, 

CASE
            WHEN DR1ICARB IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICARB AS STRING) 
 END as carbohydrate_gm, 

CASE
            WHEN DR1ISUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ISUGR AS STRING) 
 END as total_sugars_gm, 

CASE
            WHEN DR1IFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFIBE AS STRING) 
 END as dietary_fiber_gm, 

CASE
            WHEN DR1ITFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ITFAT AS STRING) 
 END as total_fat_gm, 

CASE
            WHEN DR1ISFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ISFAT AS STRING) 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR1IMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IMFAT AS STRING) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR1IPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IPFAT AS STRING) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR1ICHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICHOL AS STRING) 
 END as cholesterol_mg, 

CASE
            WHEN DR1IATOC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IATOC AS STRING) 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR1IATOA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IATOA AS STRING) 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR1IRET IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IRET AS STRING) 
 END as retinol_mcg, 

CASE
            WHEN DR1IVARA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVARA AS STRING) 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR1IACAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IACAR AS STRING) 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR1IBCAR IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IBCAR AS STRING) 
 END as beta_carotene_mcg, 

CASE
            WHEN DR1ICRYP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICRYP AS STRING) 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR1ILYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ILYCO AS STRING) 
 END as lycopene_mcg, 

CASE
            WHEN DR1ILZ IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ILZ AS STRING) 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR1IVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVB1 AS STRING) 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR1IVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVB2 AS STRING) 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR1INIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1INIAC AS STRING) 
 END as niacin_mg, 

CASE
            WHEN DR1IVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVB6 AS STRING) 
 END as vitamin_b6_mg, 

CASE
            WHEN DR1IFOLA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFOLA AS STRING) 
 END as total_folate_mcg, 

CASE
            WHEN DR1IFA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFA AS STRING) 
 END as folic_acid_mcg, 

CASE
            WHEN DR1IFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFF AS STRING) 
 END as food_folate_mcg, 

CASE
            WHEN DR1IFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IFDFE AS STRING) 
 END as folate_dfe_mcg, 

CASE
            WHEN DR1ICHL IS NOT NULL THEN SAFE_CAST(DR1ICHL AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1ICHL IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICHL AS FLOAT64) 
 END as total_choline_mg, 

CASE
            WHEN DR1IVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVB12 AS FLOAT64) 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR1IB12A IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IB12A AS FLOAT64) 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR1IVC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVC AS FLOAT64) 
 END as vitamin_c_mg, 

CASE
            WHEN DR1IVD IS NOT NULL THEN SAFE_CAST(DR1IVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1IVD IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVD AS FLOAT64) 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR1IVK IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IVK AS FLOAT64) 
 END as vitamin_k_mcg, 

CASE
            WHEN DR1ICALC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICALC AS FLOAT64) 
 END as calcium_mg, 

CASE
            WHEN DR1IPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IPHOS AS FLOAT64) 
 END as phosphorus_mg, 

CASE
            WHEN DR1IMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IMAGN AS FLOAT64) 
 END as magnesium_mg, 

CASE
            WHEN DR1IIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IIRON AS FLOAT64) 
 END as iron_mg, 

CASE
            WHEN DR1IZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IZINC AS FLOAT64) 
 END as zinc_mg, 

CASE
            WHEN DR1ICOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICOPP AS FLOAT64) 
 END as copper_mg, 

CASE
            WHEN DR1ISODI IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ISODI AS FLOAT64) 
 END as sodium_mg, 

CASE
            WHEN DR1IPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IPOTA AS FLOAT64) 
 END as potassium_mg, 

CASE
            WHEN DR1ISELE IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ISELE AS FLOAT64) 
 END as selenium_mcg, 

CASE
            WHEN DR1ICAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ICAFF AS FLOAT64) 
 END as caffeine_mg, 

CASE
            WHEN DR1ITHEO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1ITHEO AS FLOAT64) 
 END as theobromine_mg, 

CASE
            WHEN DR1IALCO IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IALCO AS FLOAT64) 
 END as alcohol_gm, 

CASE
            WHEN DR1IMOIS IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IMOIS AS FLOAT64) 
 END as moisture_gm, 

CASE
            WHEN DR1IS040 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS040 AS FLOAT64) 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR1IS060 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS060 AS FLOAT64) 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR1IS080 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS080 AS FLOAT64) 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR1IS100 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS100 AS FLOAT64) 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR1IS120 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS120 AS FLOAT64) 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR1IS140 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS140 AS FLOAT64) 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR1IS160 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS160 AS FLOAT64) 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR1IS180 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IS180 AS FLOAT64) 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR1IM161 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IM161 AS FLOAT64) 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR1IM181 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IM181 AS FLOAT64) 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR1IM201 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IM201 AS FLOAT64) 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR1IM221 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IM221 AS FLOAT64) 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR1IP182 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP182 AS FLOAT64) 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR1IP183 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP183 AS FLOAT64) 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR1IP184 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP184 AS FLOAT64) 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR1IP204 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP204 AS FLOAT64) 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR1IP205 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP205 AS FLOAT64) 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR1IP225 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP225 AS FLOAT64) 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR1IP226 IS NULL THEN NULL 
ELSE SAFE_CAST(DR1IP226 AS FLOAT64) 
 END as pfa_22_6_docosahexaenoic_gm, 

 FROM {{ ref('stg_dietary_interview_individual_foods_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR1IFF_J.htm
        