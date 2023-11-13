SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SMQ020 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ020 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ020 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ020 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ020 IS NULL THEN NULL 
ELSE SMQ020 
 END as smoked_at_least_100_cigarettes_in_life, 

CASE
            WHEN SMD030 IS NULL THEN NULL 
ELSE SMD030 
 END as age_started_smoking_cigarettes_regularly, 

CASE
            WHEN SMQ040 = 1 THEN 'Every day' -- categorize numeric values
WHEN SMQ040 = 2 THEN 'Some days' -- categorize numeric values
WHEN SMQ040 = 3 THEN 'Not at all' -- categorize numeric values
WHEN SMQ040 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ040 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ040 IS NULL THEN NULL 
ELSE SMQ040 
 END as do_you_now_smoke_cigarettes, 

CASE
            WHEN SMQ050Q IS NULL THEN NULL 
ELSE SMQ050Q 
 END as how_long_since_quit_smoking_cigarettes, 

CASE
            WHEN SMQ050U = 1 THEN 'Days' -- categorize numeric values
WHEN SMQ050U = 2 THEN 'Weeks' -- categorize numeric values
WHEN SMQ050U = 3 THEN 'Months' -- categorize numeric values
WHEN SMQ050U = 4 THEN 'Years' -- categorize numeric values
WHEN SMQ050U = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ050U = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ050U IS NULL THEN NULL 
ELSE SMQ050U 
 END as unit_of_measure_day_week_month_year, 

CASE
            WHEN SMD057 IS NULL THEN NULL 
ELSE SMD057 
 END as cigarettes_smoked_per_day_when_quit, 

CASE
            WHEN SMQ078 = '1' THEN 'Within 5 minutes' -- categorize string values 
WHEN SMQ078 = '2' THEN 'From 6 to 30 minutes' -- categorize string values 
WHEN SMQ078 = '3' THEN 'From more than 30 minutes to one hour' -- categorize string values 
WHEN SMQ078 = '4' THEN 'From more than 1 hour to 2 hours' -- categorize string values 
WHEN SMQ078 = '5' THEN 'From more than 2 hours to 3 hours' -- categorize string values 
WHEN SMQ078 = '6' THEN 'From more than 3 hours to 4 hours' -- categorize string values 
WHEN SMQ078 = '7' THEN 'More than 4 hours' -- categorize string values 
WHEN SMQ078 = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ078 = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ078 IS NULL THEN NULL 
ELSE SMQ078 
 END as how_soon_after_waking_do_you_smoke, 

CASE
            WHEN SMD641 IS NULL THEN NULL 
ELSE SMD641 
 END as days_smoked_cigs_during_past_30_days, 

CASE
            WHEN SMD650 IS NULL THEN NULL 
ELSE SMD650 
 END as avg_cigarettes_day_during_past_30_days, 

CASE
            WHEN SMD093 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMD093 = 2 THEN 'No' -- categorize numeric values
WHEN SMD093 = 3 THEN 'No usual brand' -- categorize numeric values
WHEN SMD093 = 4 THEN 'Rolls own' -- categorize numeric values
WHEN SMD093 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMD093 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMD093 IS NULL THEN NULL 
ELSE SMD093 
 END as may_i_please_see_the_pack_of_cigarettes, 

CASE
            WHEN SMDUPCA = 'Cig 12-digit Universal Product Code-UPC' THEN 'Value was recorded' -- categorize string values 
WHEN SMDUPCA = '* NO MATCH *' THEN 'No match' -- categorize string values 
WHEN SMDUPCA IS NULL THEN NULL 
ELSE SMDUPCA 
 END as cig_12_digit_universal_product_code_upc, 

CASE
            WHEN REPLACE(SMD100BR,"'","") = '305S' THEN '305S' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = '305S BLUE' THEN '305S BLUE' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = '305S GOLD' THEN '305S GOLD' -- categorize string values 
WHEN SMD100BR = 'BASIC' THEN 'BASIC' -- categorize string values 
WHEN SMD100BR = 'BENSON & HEDGES' THEN 'BENSON & HEDGES' -- categorize string values 
WHEN SMD100BR = 'BENSON & HEDGES GOLD' THEN 'BENSON & HEDGES GOLD' -- categorize string values 
WHEN SMD100BR = 'BRONSON' THEN 'BRONSON' -- categorize string values 
WHEN SMD100BR = 'CAMEL' THEN 'CAMEL' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'CAMEL 99S' THEN 'CAMEL 99S' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'CAMEL 99S GOLD' THEN 'CAMEL 99S GOLD' -- categorize string values 
WHEN SMD100BR = 'CAMEL BLUE' THEN 'CAMEL BLUE' -- categorize string values 
WHEN SMD100BR = 'CAMEL CRUSH' THEN 'CAMEL CRUSH' -- categorize string values 
WHEN SMD100BR = 'CAMEL CRUSH FRESH' THEN 'CAMEL CRUSH FRESH' -- categorize string values 
WHEN SMD100BR = 'CAMEL CRUSH SILVER' THEN 'CAMEL CRUSH SILVER' -- categorize string values 
WHEN SMD100BR = 'CAMEL PLATINUM' THEN 'CAMEL PLATINUM' -- categorize string values 
WHEN SMD100BR = 'CAMEL TURKISH ROYAL' THEN 'CAMEL TURKISH ROYAL' -- categorize string values 
WHEN SMD100BR = 'CAPRI INDIGO' THEN 'CAPRI INDIGO' -- categorize string values 
WHEN SMD100BR = 'CAPRI MAGENTA' THEN 'CAPRI MAGENTA' -- categorize string values 
WHEN SMD100BR = 'CARNIVAL GREEN' THEN 'CARNIVAL GREEN' -- categorize string values 
WHEN SMD100BR = 'CLASSIC' THEN 'CLASSIC' -- categorize string values 
WHEN SMD100BR = 'CLASSIC RED' THEN 'CLASSIC RED' -- categorize string values 
WHEN SMD100BR = 'COMMONWEALTH' THEN 'COMMONWEALTH' -- categorize string values 
WHEN SMD100BR = 'CRAVEN A' THEN 'CRAVEN A' -- categorize string values 
WHEN SMD100BR = 'DECADE' THEN 'DECADE' -- categorize string values 
WHEN SMD100BR = 'DECADE GOLD' THEN 'DECADE GOLD' -- categorize string values 
WHEN SMD100BR = 'DORAL' THEN 'DORAL' -- categorize string values 
WHEN SMD100BR = 'DORAL GOLD' THEN 'DORAL GOLD' -- categorize string values 
WHEN SMD100BR = 'DORAL RED' THEN 'DORAL RED' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'EAGLE 20S' THEN 'EAGLE 20S' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'EAGLE 20S GOLD' THEN 'EAGLE 20S GOLD' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'EAGLE 20S RED' THEN 'EAGLE 20S RED' -- categorize string values 
WHEN SMD100BR = 'EDGEFIELD' THEN 'EDGEFIELD' -- categorize string values 
WHEN SMD100BR = 'EIGHT' THEN 'EIGHT' -- categorize string values 
WHEN SMD100BR = 'FLAVOR DELUXE' THEN 'FLAVOR DELUXE' -- categorize string values 
WHEN SMD100BR = 'GOLDEN BAY RED' THEN 'GOLDEN BAY RED' -- categorize string values 
WHEN SMD100BR = 'HERON' THEN 'HERON' -- categorize string values 
WHEN SMD100BR = 'KING MOUNTAIN GOLD' THEN 'KING MOUNTAIN GOLD' -- categorize string values 
WHEN SMD100BR = 'KOOL' THEN 'KOOL' -- categorize string values 
WHEN SMD100BR = 'KOOL SUPER LONGS' THEN 'KOOL SUPER LONGS' -- categorize string values 
WHEN SMD100BR = 'L & M' THEN 'L & M' -- categorize string values 
WHEN SMD100BR = 'L & M BLUE' THEN 'L & M BLUE' -- categorize string values 
WHEN SMD100BR = 'L & M RED' THEN 'L & M RED' -- categorize string values 
WHEN SMD100BR = 'LIGGETT SELECT SILVER' THEN 'LIGGETT SELECT SILVER' -- categorize string values 
WHEN SMD100BR = 'MARLBORO' THEN 'MARLBORO' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'MARLBORO 100S' THEN 'MARLBORO 100S' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'MARLBORO 25S' THEN 'MARLBORO 25S' -- categorize string values 
WHEN SMD100BR = 'MARLBORO BLACK' THEN 'MARLBORO BLACK' -- categorize string values 
WHEN SMD100BR = 'MARLBORO BLEND NO. 27' THEN 'MARLBORO BLEND NO. 27' -- categorize string values 
WHEN SMD100BR = 'MARLBORO BLUE' THEN 'MARLBORO BLUE' -- categorize string values 
WHEN SMD100BR = 'MARLBORO EDGE' THEN 'MARLBORO EDGE' -- categorize string values 
WHEN SMD100BR = 'MARLBORO EDGE BLACK' THEN 'MARLBORO EDGE BLACK' -- categorize string values 
WHEN SMD100BR = 'MARLBORO EIGHTY-THREES' THEN 'MARLBORO EIGHTY-THREES' -- categorize string values 
WHEN SMD100BR = 'MARLBORO GOLD' THEN 'MARLBORO GOLD' -- categorize string values 
WHEN SMD100BR = 'MARLBORO GREEN' THEN 'MARLBORO GREEN' -- categorize string values 
WHEN SMD100BR = 'MARLBORO MIDNIGHT BLACK' THEN 'MARLBORO MIDNIGHT BLACK' -- categorize string values 
WHEN SMD100BR = 'MARLBORO NXT BLACK' THEN 'MARLBORO NXT BLACK' -- categorize string values 
WHEN SMD100BR = 'MARLBORO NXT GREEN' THEN 'MARLBORO NXT GREEN' -- categorize string values 
WHEN SMD100BR = 'MARLBORO RED' THEN 'MARLBORO RED' -- categorize string values 
WHEN SMD100BR = 'MARLBORO SILVER' THEN 'MARLBORO SILVER' -- categorize string values 
WHEN SMD100BR = 'MARLBORO SKYLINE' THEN 'MARLBORO SKYLINE' -- categorize string values 
WHEN SMD100BR = 'MAVERICK' THEN 'MAVERICK' -- categorize string values 
WHEN SMD100BR = 'MAVERICK GOLD' THEN 'MAVERICK GOLD' -- categorize string values 
WHEN SMD100BR = 'MAVERICK RED' THEN 'MAVERICK RED' -- categorize string values 
WHEN SMD100BR = 'MERIT BLUE' THEN 'MERIT BLUE' -- categorize string values 
WHEN SMD100BR = 'MISTY GREEN' THEN 'MISTY GREEN' -- categorize string values 
WHEN SMD100BR = 'MONTEGO' THEN 'MONTEGO' -- categorize string values 
WHEN SMD100BR = 'NAT SHERMAN NATURALS' THEN 'NAT SHERMAN NATURALS' -- categorize string values 
WHEN SMD100BR = 'NATURAL AMERICAN SPIRIT' THEN 'NATURAL AMERICAN SPIRIT' -- categorize string values 
WHEN SMD100BR = 'NATURAL BLEND' THEN 'NATURAL BLEND' -- categorize string values 
WHEN SMD100BR = 'NEWPORT' THEN 'NEWPORT' -- categorize string values 
WHEN SMD100BR = 'NEWPORT BLUE' THEN 'NEWPORT BLUE' -- categorize string values 
WHEN SMD100BR = 'NEWPORT GOLD' THEN 'NEWPORT GOLD' -- categorize string values 
WHEN SMD100BR = 'OPAL' THEN 'OPAL' -- categorize string values 
WHEN SMD100BR = 'PALL MALL' THEN 'PALL MALL' -- categorize string values 
WHEN SMD100BR = 'PALL MALL BLUE' THEN 'PALL MALL BLUE' -- categorize string values 
WHEN SMD100BR = 'PALL MALL ORANGE' THEN 'PALL MALL ORANGE' -- categorize string values 
WHEN SMD100BR = 'PALL MALL RED' THEN 'PALL MALL RED' -- categorize string values 
WHEN SMD100BR = 'PALL MALL WHITE' THEN 'PALL MALL WHITE' -- categorize string values 
WHEN SMD100BR = 'PARLIAMENT' THEN 'PARLIAMENT' -- categorize string values 
WHEN SMD100BR = 'PLAYERS CANADIAN' THEN 'PLAYERS CANADIAN' -- categorize string values 
WHEN SMD100BR = 'PYRAMID GOLD' THEN 'PYRAMID GOLD' -- categorize string values 
WHEN SMD100BR = 'PYRAMID RED' THEN 'PYRAMID RED' -- categorize string values 
WHEN SMD100BR = 'QUALITY DELUXE' THEN 'QUALITY DELUXE' -- categorize string values 
WHEN SMD100BR = 'SALEM' THEN 'SALEM' -- categorize string values 
WHEN SMD100BR = 'SALEM BLACK' THEN 'SALEM BLACK' -- categorize string values 
WHEN SMD100BR = 'SALEM GOLD' THEN 'SALEM GOLD' -- categorize string values 
WHEN SMD100BR = 'SANDIA' THEN 'SANDIA' -- categorize string values 
WHEN SMD100BR = 'SENECA' THEN 'SENECA' -- categorize string values 
WHEN SMD100BR = 'SENECA BLUE' THEN 'SENECA BLUE' -- categorize string values 
WHEN SMD100BR = 'SHERIFF' THEN 'SHERIFF' -- categorize string values 
WHEN SMD100BR = 'SHERIFF BLUE' THEN 'SHERIFF BLUE' -- categorize string values 
WHEN REPLACE(SMD100BR,"'","") = 'SHERMANS MCD' THEN 'SHERMANS MCD' -- categorize string values 
WHEN SMD100BR = 'SHIELD SILVER' THEN 'SHIELD SILVER' -- categorize string values 
WHEN SMD100BR = 'SILVER CLOUD RED' THEN 'SILVER CLOUD RED' -- categorize string values 
WHEN SMD100BR = 'SMOKE 1' THEN 'SMOKE 1' -- categorize string values 
WHEN SMD100BR = 'SMOKIN JOES PURPLE' THEN 'SMOKIN JOES PURPLE' -- categorize string values 
WHEN SMD100BR = 'SONOMA' THEN 'SONOMA' -- categorize string values 
WHEN SMD100BR = 'SPORT RED' THEN 'SPORT RED' -- categorize string values 
WHEN SMD100BR = 'TIMELESS TIME' THEN 'TIMELESS TIME' -- categorize string values 
WHEN SMD100BR = 'TIMELESS TIME RED' THEN 'TIMELESS TIME RED' -- categorize string values 
WHEN SMD100BR = 'TRAFFIC' THEN 'TRAFFIC' -- categorize string values 
WHEN SMD100BR = 'USA' THEN 'USA' -- categorize string values 
WHEN SMD100BR = 'USA BLUE' THEN 'USA BLUE' -- categorize string values 
WHEN SMD100BR = 'USA GOLD' THEN 'USA GOLD' -- categorize string values 
WHEN SMD100BR = 'USA GOLD RED' THEN 'USA GOLD RED' -- categorize string values 
WHEN SMD100BR = 'VIRGINIA SLIMS' THEN 'VIRGINIA SLIMS' -- categorize string values 
WHEN SMD100BR = 'VIRGINIA SLIMS GOLD' THEN 'VIRGINIA SLIMS GOLD' -- categorize string values 
WHEN SMD100BR = 'VIRGINIA SLIMS SUPERSLIMS' THEN 'VIRGINIA SLIMS SUPERSLIMS' -- categorize string values 
WHEN SMD100BR = 'WAVE' THEN 'WAVE' -- categorize string values 
WHEN SMD100BR = 'WAVE GREEN' THEN 'WAVE GREEN' -- categorize string values 
WHEN SMD100BR = 'WILD HORSE GOLD' THEN 'WILD HORSE GOLD' -- categorize string values 
WHEN SMD100BR = 'WINGS' THEN 'WINGS' -- categorize string values 
WHEN SMD100BR = 'WINGS GOLD' THEN 'WINGS GOLD' -- categorize string values 
WHEN SMD100BR = 'WINGS RED' THEN 'WINGS RED' -- categorize string values 
WHEN SMD100BR = 'WINSTON' THEN 'WINSTON' -- categorize string values 
WHEN SMD100BR = 'WINSTON RED' THEN 'WINSTON RED' -- categorize string values 
WHEN SMD100BR = 'XIONGSHI' THEN 'XIONGSHI' -- categorize string values 
WHEN SMD100BR = '* OTHER BRAND *' THEN 'OTHER BRAND' -- categorize string values 
WHEN SMD100BR IS NULL THEN NULL 
ELSE SMD100BR 
 END as cigarette_brand_sub_brand, 

CASE
            WHEN SMD100FL = 0 THEN 'Non-filter' -- categorize numeric values
WHEN SMD100FL = 1 THEN 'Filter' -- categorize numeric values
WHEN SMD100FL IS NULL THEN NULL 
ELSE SMD100FL 
 END as cigarette_filter_type, 

CASE
            WHEN SMD100MN = 0 THEN 'Non-menthol' -- categorize numeric values
WHEN SMD100MN = 1 THEN 'Menthol' -- categorize numeric values
WHEN SMD100MN IS NULL THEN NULL 
ELSE SMD100MN 
 END as cigarette_menthol_indicator, 

CASE
            WHEN SMD100LN = 1 THEN 'Regular (68-72 mm)' -- categorize numeric values
WHEN SMD100LN = 2 THEN 'King (79-88 mm)' -- categorize numeric values
WHEN SMD100LN = 3 THEN 'Long (94-101 mm)' -- categorize numeric values
WHEN SMD100LN = 4 THEN 'Ultra long (110-121 mm)' -- categorize numeric values
WHEN SMD100LN IS NULL THEN NULL 
ELSE SMD100LN 
 END as cigarette_length, 

CASE
            WHEN SMD100TR IS NULL THEN NULL 
ELSE SMD100TR 
 END as ftc_tar_content, 

CASE
            WHEN SMD100NI IS NULL THEN NULL 
ELSE SMD100NI 
 END as ftc_nicotine_content, 

CASE
            WHEN SMD100CO IS NULL THEN NULL 
ELSE SMD100CO 
 END as ftc_carbon_monoxide_content, 

CASE
            WHEN SMQ621 = '1' THEN 'I have never smoked, not even a puff' -- categorize string values 
WHEN SMQ621 = '2' THEN '1 or more puffs but never a whole cigarette' -- categorize string values 
WHEN SMQ621 = '3' THEN '1 cigarette' -- categorize string values 
WHEN SMQ621 = '4' THEN '2 to 5 cigarettes' -- categorize string values 
WHEN SMQ621 = '5' THEN '6 to 15 cigarettes' -- categorize string values 
WHEN SMQ621 = '6' THEN '16 to 25 cigarettes' -- categorize string values 
WHEN SMQ621 = '7' THEN '26 to 99 cigarettes' -- categorize string values 
WHEN SMQ621 = '8' THEN '100 or more cigarettes' -- categorize string values 
WHEN SMQ621 = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ621 = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ621 IS NULL THEN NULL 
ELSE SMQ621 
 END as cigarettes_smoked_in_entire_life, 

CASE
            WHEN SMD630 IS NULL THEN NULL 
ELSE SMD630 
 END as age_first_smoked_whole_cigarette, 

CASE
            WHEN SMQ661 = '1' THEN 'Marlboro' -- categorize string values 
WHEN SMQ661 = '2' THEN 'Camel' -- categorize string values 
WHEN SMQ661 = '3' THEN 'Newport' -- categorize string values 
WHEN SMQ661 = '8' THEN 'Other brand' -- categorize string values 
WHEN SMQ661 = '9' THEN 'No usual brand' -- categorize string values 
WHEN SMQ661 = '10' THEN 'Hand-rolled cigarettes' -- categorize string values 
WHEN SMQ661 = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ661 = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ661 IS NULL THEN NULL 
ELSE SMQ661 
 END as brand_of_cigarettes_smoked_past_30_days, 

CASE
            WHEN SMQ665A = '1' THEN 'MARLBORO RED' -- categorize string values 
WHEN SMQ665A = '2' THEN 'MARLBORO RED 83S' -- categorize string values 
WHEN SMQ665A = '3' THEN 'MARLBORO GOLD' -- categorize string values 
WHEN SMQ665A = '4' THEN 'MARLBORO GOLD MENTHOL' -- categorize string values 
WHEN SMQ665A = '5' THEN 'MARLBORO SILVER' -- categorize string values 
WHEN SMQ665A = '6' THEN 'MARLBORO BLACK' -- categorize string values 
WHEN SMQ665A = '7' THEN 'MARLBORO MENTHOL' -- categorize string values 
WHEN SMQ665A = '8' THEN 'OTHER MARLBORO' -- categorize string values 
WHEN SMQ665A = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ665A = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ665A IS NULL THEN NULL 
ELSE SMQ665A 
 END as marlboro_variety, 

CASE
            WHEN SMQ665B = '1' THEN 'CAMEL' -- categorize string values 
WHEN SMQ665B = '2' THEN 'CAMEL BLUE' -- categorize string values 
WHEN SMQ665B = '3' THEN 'CAMEL CRUSH' -- categorize string values 
WHEN SMQ665B = '4' THEN 'CAMEL CRUSH BOLD' -- categorize string values 
WHEN SMQ665B = '5' THEN 'CAMEL MENTHOL' -- categorize string values 
WHEN SMQ665B = '6' THEN 'CAMEL MENTHOL SILVER' -- categorize string values 
WHEN SMQ665B = '7' THEN 'OTHER CAMEL' -- categorize string values 
WHEN SMQ665B = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ665B = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ665B IS NULL THEN NULL 
ELSE SMQ665B 
 END as camel_variety, 

CASE
            WHEN SMQ665C = '1' THEN 'NEWPORT' -- categorize string values 
WHEN SMQ665C = '2' THEN 'NEWPORT MENTHOL GOLD' -- categorize string values 
WHEN SMQ665C = '3' THEN 'OTHER NEWPORT' -- categorize string values 
WHEN SMQ665C = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ665C = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ665C IS NULL THEN NULL 
ELSE SMQ665C 
 END as newport_variety, 

CASE
            WHEN SMQ665D = '1' THEN 'BASIC' -- categorize string values 
WHEN SMQ665D = '2' THEN 'DORAL RED 100S' -- categorize string values 
WHEN SMQ665D = '3' THEN 'DORAL MENTHOL GOLD BOX 100S' -- categorize string values 
WHEN SMQ665D = '4' THEN 'GPC' -- categorize string values 
WHEN SMQ665D = '5' THEN 'GPC MENTHOL' -- categorize string values 
WHEN SMQ665D = '6' THEN 'KOOL BLUE MENTHOL 100S' -- categorize string values 
WHEN SMQ665D = '7' THEN 'KOOL TRUE MENTHOL' -- categorize string values 
WHEN SMQ665D = '8' THEN 'VIRGINIA SLIMS' -- categorize string values 
WHEN SMQ665D = '9' THEN 'OTHER BRAND' -- categorize string values 
WHEN SMQ665D = '77' THEN 'Refused' -- categorize string values 
WHEN SMQ665D = '99' THEN 'Dont know' -- categorize string values 
WHEN SMQ665D IS NULL THEN NULL 
ELSE SMQ665D 
 END as other_brand, 

CASE
            WHEN SMQ670 = 1 THEN 'Yes' -- categorize numeric values
WHEN SMQ670 = 2 THEN 'No' -- categorize numeric values
WHEN SMQ670 = 7 THEN 'Refused' -- categorize numeric values
WHEN SMQ670 = 9 THEN 'Dont know' -- categorize numeric values
WHEN SMQ670 IS NULL THEN NULL 
ELSE SMQ670 
 END as tried_to_quit_smoking, 

CASE
            WHEN SAFE_CAST(SMQ848 AS FLOAT64) > 20.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ848 IS NULL THEN NULL 
ELSE SMQ848 
 END as times_stopped_smoking_cigarettes, 

CASE
            WHEN SAFE_CAST(SMQ852Q AS FLOAT64) > 364.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ852Q IS NULL THEN NULL 
ELSE SMQ852Q 
 END as how_long_were_you_able_to_stop_smoking, 

CASE
            WHEN SMQ852U = '1' THEN 'Days' -- categorize string values 
WHEN SMQ852U = '2' THEN 'Weeks' -- categorize string values 
WHEN SMQ852U = '3' THEN 'Months' -- categorize string values 
WHEN SMQ852U = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ852U = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ852U IS NULL THEN NULL 
ELSE SMQ852U 
 END as unit_of_measure_day_week_month_year_SMQ852U, 

CASE
            WHEN SMQ890 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ890 = '2' THEN 'No' -- categorize string values 
WHEN SMQ890 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ890 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ890 IS NULL THEN NULL 
ELSE SMQ890 
 END as ever_smoked_a_cigar_even_1_time, 

CASE
            WHEN SAFE_CAST(SMQ895 AS FLOAT64) > 30.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ895 IS NULL THEN NULL 
ELSE SMQ895 
 END as how_many_days_smoked_a_cigar, 

CASE
            WHEN SMQ900 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ900 = '2' THEN 'No' -- categorize string values 
WHEN SMQ900 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ900 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ900 IS NULL THEN NULL 
ELSE SMQ900 
 END as ever_used_an_e_cigarette, 

CASE
            WHEN SAFE_CAST(SMQ905 AS FLOAT64) > 30.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ905 IS NULL THEN NULL 
ELSE SMQ905 
 END as how_many_days_used_an_e_cigarette, 

CASE
            WHEN SMQ910 = '1' THEN 'Yes' -- categorize string values 
WHEN SMQ910 = '2' THEN 'No' -- categorize string values 
WHEN SMQ910 = '7' THEN 'Refused' -- categorize string values 
WHEN SMQ910 = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ910 IS NULL THEN NULL 
ELSE SMQ910 
 END as ever_used_smokeless_tobacco, 

CASE
            WHEN SAFE_CAST(SMQ915 AS FLOAT64) > 30.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ915 IS NULL THEN NULL 
ELSE SMQ915 
 END as how_many_days_used_smokeless_tobacco, 

CASE
            WHEN SMAQUEX2 = 1 THEN 'Home Interview (18+ Yrs)' -- categorize numeric values
WHEN SMAQUEX2 = 2 THEN 'ACASI (12 - 17 Yrs)' -- categorize numeric values
WHEN SMAQUEX2 IS NULL THEN NULL 
ELSE SMAQUEX2 
 END as questionnaire_mode_flag, 

 FROM {{ ref('stg_smoking_cigarette_use_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQ_J.htm
        