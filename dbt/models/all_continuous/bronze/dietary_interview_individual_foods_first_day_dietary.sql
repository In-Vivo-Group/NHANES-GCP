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
            WHEN DR1ILINE IS NULL THEN NULL 
ELSE DR1ILINE 
 END as food_individual_component_number, 

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
            WHEN DRABF = 1 THEN 'Yes' -- categorize numeric values
WHEN DRABF = 2 THEN 'No' -- categorize numeric values
WHEN DRABF IS NULL THEN NULL 
ELSE DRABF 
 END as breast_fed_infant_either_day, 

CASE
            WHEN DRDINT = 1 THEN 'Day 1 only' -- categorize numeric values
WHEN DRDINT = 2 THEN 'Day 1 and day 2' -- categorize numeric values
WHEN DRDINT IS NULL THEN NULL 
ELSE DRDINT 
 END as number_of_days_of_intake, 

CASE
            WHEN DR1DBIH IS NOT NULL THEN SAFE_CAST(DR1DBIH AS FLOAT64) -- correct wrong data types for numerical data 
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
            WHEN DR1CCMNM IS NULL THEN NULL 
ELSE DR1CCMNM 
 END as combination_food_number, 

CASE
            WHEN DR1CCMTX = 0 THEN 'Non-combination food' -- categorize numeric values
WHEN DR1CCMTX = 1 THEN 'Beverage w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 2 THEN 'Cereal w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 3 THEN 'Bread/baked products w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 4 THEN 'Salad' -- categorize numeric values
WHEN DR1CCMTX = 5 THEN 'Sandwiches' -- categorize numeric values
WHEN DR1CCMTX = 6 THEN 'Soup' -- categorize numeric values
WHEN DR1CCMTX = 7 THEN 'Frozen meals' -- categorize numeric values
WHEN DR1CCMTX = 8 THEN 'Ice cream/frozen yogurt w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 9 THEN 'Dried beans and vegetable w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 10 THEN 'Fruit w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 11 THEN 'Tortilla products' -- categorize numeric values
WHEN DR1CCMTX = 12 THEN 'Meat, poultry, fish' -- categorize numeric values
WHEN DR1CCMTX = 13 THEN 'LunchablesÂ®' -- categorize numeric values
WHEN DR1CCMTX = 14 THEN 'Chips w/ additions' -- categorize numeric values
WHEN DR1CCMTX = 90 THEN 'Other mixtures' -- categorize numeric values
WHEN DR1CCMTX IS NULL THEN NULL 
ELSE DR1CCMTX 
 END as combination_food_type, 

CASE
            WHEN DR1_020 IS NULL THEN NULL 
ELSE DR1_020 
 END as time_of_eating_occasion_hh_mm, 

CASE
            WHEN DR1_030Z = 1 THEN 'Breakfast' -- categorize numeric values
WHEN DR1_030Z = 2 THEN 'Lunch' -- categorize numeric values
WHEN DR1_030Z = 3 THEN 'Dinner' -- categorize numeric values
WHEN DR1_030Z = 4 THEN 'Supper' -- categorize numeric values
WHEN DR1_030Z = 5 THEN 'Brunch' -- categorize numeric values
WHEN DR1_030Z = 6 THEN 'Snack' -- categorize numeric values
WHEN DR1_030Z = 7 THEN 'Drink' -- categorize numeric values
WHEN DR1_030Z = 8 THEN 'Infant feeding' -- categorize numeric values
WHEN DR1_030Z = 9 THEN 'Extended consumption' -- categorize numeric values
WHEN DR1_030Z = 10 THEN 'Desayano' -- categorize numeric values
WHEN DR1_030Z = 11 THEN 'Almuerzo' -- categorize numeric values
WHEN DR1_030Z = 12 THEN 'Comida' -- categorize numeric values
WHEN DR1_030Z = 13 THEN 'Merienda' -- categorize numeric values
WHEN DR1_030Z = 14 THEN 'Cena' -- categorize numeric values
WHEN DR1_030Z = 15 THEN 'Entre comida' -- categorize numeric values
WHEN DR1_030Z = 16 THEN 'Botana' -- categorize numeric values
WHEN DR1_030Z = 17 THEN 'Bocadillo' -- categorize numeric values
WHEN DR1_030Z = 18 THEN 'Tentempie' -- categorize numeric values
WHEN DR1_030Z = 19 THEN 'Bebida' -- categorize numeric values
WHEN DR1_030Z = 91 THEN 'Other' -- categorize numeric values
WHEN DR1_030Z = 99 THEN 'Dont know' -- categorize numeric values
WHEN DR1_030Z IS NULL THEN NULL 
ELSE DR1_030Z 
 END as name_of_eating_occasion, 

CASE
            WHEN DR1FS = 1 THEN 'Store - grocery/supermarket' -- categorize numeric values
WHEN DR1FS = 2 THEN 'Restaurant with waiter/waitress' -- categorize numeric values
WHEN DR1FS = 3 THEN 'Restaurant fast food/pizza' -- categorize numeric values
WHEN DR1FS = 4 THEN 'Bar/tavern/lounge' -- categorize numeric values
WHEN DR1FS = 5 THEN 'Restaurant no additional information' -- categorize numeric values
WHEN DR1FS = 6 THEN 'Cafeteria NOT in a K-12 school' -- categorize numeric values
WHEN DR1FS = 7 THEN 'Cafeteria in a K-12 school' -- categorize numeric values
WHEN DR1FS = 8 THEN 'Child/Adult care center' -- categorize numeric values
WHEN DR1FS = 9 THEN 'Child/Adult home care' -- categorize numeric values
WHEN DR1FS = 10 THEN 'Soup kitchen/shelter/food pantry' -- categorize numeric values
WHEN DR1FS = 11 THEN 'Meals on Wheels' -- categorize numeric values
WHEN DR1FS = 12 THEN 'Community food program - other' -- categorize numeric values
WHEN DR1FS = 13 THEN 'Community program no additional information' -- categorize numeric values
WHEN DR1FS = 14 THEN 'Vending machine' -- categorize numeric values
WHEN DR1FS = 15 THEN 'Common coffee pot or snack tray' -- categorize numeric values
WHEN DR1FS = 16 THEN 'From someone else/gift' -- categorize numeric values
WHEN DR1FS = 17 THEN 'Mail order purchase' -- categorize numeric values
WHEN DR1FS = 18 THEN 'Residential dining facility' -- categorize numeric values
WHEN DR1FS = 19 THEN 'Grown or caught by you or someone you know' -- categorize numeric values
WHEN DR1FS = 20 THEN 'Fish caught by you or someone you know' -- categorize numeric values
WHEN DR1FS = 24 THEN 'Sport, recreation, or entertainment facility' -- categorize numeric values
WHEN DR1FS = 25 THEN 'Street vendor, vending truck' -- categorize numeric values
WHEN DR1FS = 26 THEN 'Fundraiser sales' -- categorize numeric values
WHEN DR1FS = 27 THEN 'Store - convenience type' -- categorize numeric values
WHEN DR1FS = 28 THEN 'Store - no additional info' -- categorize numeric values
WHEN DR1FS = 91 THEN 'Other, specify' -- categorize numeric values
WHEN DR1FS = 99 THEN 'Dont know' -- categorize numeric values
WHEN DR1FS IS NULL THEN NULL 
ELSE DR1FS 
 END as source_of_food, 

CASE
            WHEN DR1_040Z = 1 THEN 'Yes' -- categorize numeric values
WHEN DR1_040Z = 2 THEN 'No' -- categorize numeric values
WHEN DR1_040Z = 7 THEN 'Refused' -- categorize numeric values
WHEN DR1_040Z = 9 THEN 'Dont know' -- categorize numeric values
WHEN DR1_040Z IS NULL THEN NULL 
ELSE DR1_040Z 
 END as did_you_eat_this_meal_at_home, 

CASE
            WHEN DR1IFDCD IS NULL THEN NULL 
ELSE DR1IFDCD 
 END as usda_food_code, 

CASE
            WHEN DR1IGRMS IS NULL THEN NULL 
ELSE DR1IGRMS 
 END as grams, 

CASE
            WHEN DR1IKCAL IS NULL THEN NULL 
ELSE DR1IKCAL 
 END as energy_kcal, 

CASE
            WHEN DR1IPROT IS NULL THEN NULL 
ELSE DR1IPROT 
 END as protein_gm, 

CASE
            WHEN DR1ICARB IS NULL THEN NULL 
ELSE DR1ICARB 
 END as carbohydrate_gm, 

CASE
            WHEN DR1ISUGR IS NULL THEN NULL 
ELSE DR1ISUGR 
 END as total_sugars_gm, 

CASE
            WHEN DR1IFIBE IS NULL THEN NULL 
ELSE DR1IFIBE 
 END as dietary_fiber_gm, 

CASE
            WHEN DR1ITFAT IS NULL THEN NULL 
ELSE DR1ITFAT 
 END as total_fat_gm, 

CASE
            WHEN DR1ISFAT IS NULL THEN NULL 
ELSE DR1ISFAT 
 END as total_saturated_fatty_acids_gm, 

CASE
            WHEN DR1IMFAT IS NULL THEN NULL 
ELSE DR1IMFAT 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
            WHEN DR1IPFAT IS NULL THEN NULL 
ELSE DR1IPFAT 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
            WHEN DR1ICHOL IS NULL THEN NULL 
ELSE DR1ICHOL 
 END as cholesterol_mg, 

CASE
            WHEN DR1IATOC IS NULL THEN NULL 
ELSE DR1IATOC 
 END as vitamin_e_as_alpha_tocopherol_mg, 

CASE
            WHEN DR1IATOA IS NULL THEN NULL 
ELSE DR1IATOA 
 END as added_alpha_tocopherol_vitamin_e_mg, 

CASE
            WHEN DR1IRET IS NULL THEN NULL 
ELSE DR1IRET 
 END as retinol_mcg, 

CASE
            WHEN DR1IVARA IS NULL THEN NULL 
ELSE DR1IVARA 
 END as vitamin_a_rae_mcg, 

CASE
            WHEN DR1IACAR IS NULL THEN NULL 
ELSE DR1IACAR 
 END as alpha_carotene_mcg, 

CASE
            WHEN DR1IBCAR IS NULL THEN NULL 
ELSE DR1IBCAR 
 END as beta_carotene_mcg, 

CASE
            WHEN DR1ICRYP IS NULL THEN NULL 
ELSE DR1ICRYP 
 END as beta_cryptoxanthin_mcg, 

CASE
            WHEN DR1ILYCO IS NULL THEN NULL 
ELSE DR1ILYCO 
 END as lycopene_mcg, 

CASE
            WHEN DR1ILZ IS NULL THEN NULL 
ELSE DR1ILZ 
 END as lutein_zeaxanthin_mcg, 

CASE
            WHEN DR1IVB1 IS NULL THEN NULL 
ELSE DR1IVB1 
 END as thiamin_vitamin_b1_mg, 

CASE
            WHEN DR1IVB2 IS NULL THEN NULL 
ELSE DR1IVB2 
 END as riboflavin_vitamin_b2_mg, 

CASE
            WHEN DR1INIAC IS NULL THEN NULL 
ELSE DR1INIAC 
 END as niacin_mg, 

CASE
            WHEN DR1IVB6 IS NULL THEN NULL 
ELSE DR1IVB6 
 END as vitamin_b6_mg, 

CASE
            WHEN DR1IFOLA IS NULL THEN NULL 
ELSE DR1IFOLA 
 END as total_folate_mcg, 

CASE
            WHEN DR1IFA IS NULL THEN NULL 
ELSE DR1IFA 
 END as folic_acid_mcg, 

CASE
            WHEN DR1IFF IS NULL THEN NULL 
ELSE DR1IFF 
 END as food_folate_mcg, 

CASE
            WHEN DR1IFDFE IS NULL THEN NULL 
ELSE DR1IFDFE 
 END as folate_dfe_mcg, 

CASE
            WHEN DR1ICHL IS NOT NULL THEN SAFE_CAST(DR1ICHL AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1ICHL IS NULL THEN NULL 
ELSE DR1ICHL 
 END as total_choline_mg, 

CASE
            WHEN DR1IVB12 IS NULL THEN NULL 
ELSE DR1IVB12 
 END as vitamin_b12_mcg, 

CASE
            WHEN DR1IB12A IS NULL THEN NULL 
ELSE DR1IB12A 
 END as added_vitamin_b12_mcg, 

CASE
            WHEN DR1IVC IS NULL THEN NULL 
ELSE DR1IVC 
 END as vitamin_c_mg, 

CASE
            WHEN DR1IVD IS NOT NULL THEN SAFE_CAST(DR1IVD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DR1IVD IS NULL THEN NULL 
ELSE DR1IVD 
 END as vitamin_d_d2_d3_mcg, 

CASE
            WHEN DR1IVK IS NULL THEN NULL 
ELSE DR1IVK 
 END as vitamin_k_mcg, 

CASE
            WHEN DR1ICALC IS NULL THEN NULL 
ELSE DR1ICALC 
 END as calcium_mg, 

CASE
            WHEN DR1IPHOS IS NULL THEN NULL 
ELSE DR1IPHOS 
 END as phosphorus_mg, 

CASE
            WHEN DR1IMAGN IS NULL THEN NULL 
ELSE DR1IMAGN 
 END as magnesium_mg, 

CASE
            WHEN DR1IIRON IS NULL THEN NULL 
ELSE DR1IIRON 
 END as iron_mg, 

CASE
            WHEN DR1IZINC IS NULL THEN NULL 
ELSE DR1IZINC 
 END as zinc_mg, 

CASE
            WHEN DR1ICOPP IS NULL THEN NULL 
ELSE DR1ICOPP 
 END as copper_mg, 

CASE
            WHEN DR1ISODI IS NULL THEN NULL 
ELSE DR1ISODI 
 END as sodium_mg, 

CASE
            WHEN DR1IPOTA IS NULL THEN NULL 
ELSE DR1IPOTA 
 END as potassium_mg, 

CASE
            WHEN DR1ISELE IS NULL THEN NULL 
ELSE DR1ISELE 
 END as selenium_mcg, 

CASE
            WHEN DR1ICAFF IS NULL THEN NULL 
ELSE DR1ICAFF 
 END as caffeine_mg, 

CASE
            WHEN DR1ITHEO IS NULL THEN NULL 
ELSE DR1ITHEO 
 END as theobromine_mg, 

CASE
            WHEN DR1IALCO IS NULL THEN NULL 
ELSE DR1IALCO 
 END as alcohol_gm, 

CASE
            WHEN DR1IMOIS IS NULL THEN NULL 
ELSE DR1IMOIS 
 END as moisture_gm, 

CASE
            WHEN DR1IS040 IS NULL THEN NULL 
ELSE DR1IS040 
 END as sfa_4_0_butanoic_gm, 

CASE
            WHEN DR1IS060 IS NULL THEN NULL 
ELSE DR1IS060 
 END as sfa_6_0_hexanoic_gm, 

CASE
            WHEN DR1IS080 IS NULL THEN NULL 
ELSE DR1IS080 
 END as sfa_8_0_octanoic_gm, 

CASE
            WHEN DR1IS100 IS NULL THEN NULL 
ELSE DR1IS100 
 END as sfa_10_0_decanoic_gm, 

CASE
            WHEN DR1IS120 IS NULL THEN NULL 
ELSE DR1IS120 
 END as sfa_12_0_dodecanoic_gm, 

CASE
            WHEN DR1IS140 IS NULL THEN NULL 
ELSE DR1IS140 
 END as sfa_14_0_tetradecanoic_gm, 

CASE
            WHEN DR1IS160 IS NULL THEN NULL 
ELSE DR1IS160 
 END as sfa_16_0_hexadecanoic_gm, 

CASE
            WHEN DR1IS180 IS NULL THEN NULL 
ELSE DR1IS180 
 END as sfa_18_0_octadecanoic_gm, 

CASE
            WHEN DR1IM161 IS NULL THEN NULL 
ELSE DR1IM161 
 END as mfa_16_1_hexadecenoic_gm, 

CASE
            WHEN DR1IM181 IS NULL THEN NULL 
ELSE DR1IM181 
 END as mfa_18_1_octadecenoic_gm, 

CASE
            WHEN DR1IM201 IS NULL THEN NULL 
ELSE DR1IM201 
 END as mfa_20_1_eicosenoic_gm, 

CASE
            WHEN DR1IM221 IS NULL THEN NULL 
ELSE DR1IM221 
 END as mfa_22_1_docosenoic_gm, 

CASE
            WHEN DR1IP182 IS NULL THEN NULL 
ELSE DR1IP182 
 END as pfa_18_2_octadecadienoic_gm, 

CASE
            WHEN DR1IP183 IS NULL THEN NULL 
ELSE DR1IP183 
 END as pfa_18_3_octadecatrienoic_gm, 

CASE
            WHEN DR1IP184 IS NULL THEN NULL 
ELSE DR1IP184 
 END as pfa_18_4_octadecatetraenoic_gm, 

CASE
            WHEN DR1IP204 IS NULL THEN NULL 
ELSE DR1IP204 
 END as pfa_20_4_eicosatetraenoic_gm, 

CASE
            WHEN DR1IP205 IS NULL THEN NULL 
ELSE DR1IP205 
 END as pfa_20_5_eicosapentaenoic_gm, 

CASE
            WHEN DR1IP225 IS NULL THEN NULL 
ELSE DR1IP225 
 END as pfa_22_5_docosapentaenoic_gm, 

CASE
            WHEN DR1IP226 IS NULL THEN NULL 
ELSE DR1IP226 
 END as pfa_22_6_docosahexaenoic_gm, 

 FROM {{ ref('stg_dietary_interview_individual_foods_first_day_dietary') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DR1IFF_J.htm
        