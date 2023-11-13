SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN OSQ010A = 1 THEN 'Yes' -- categorize numeric values
WHEN OSQ010A = 2 THEN 'No' -- categorize numeric values
WHEN OSQ010A = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ010A = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ010A IS NULL THEN NULL 
ELSE OSQ010A 
 END as broken_or_fractured_a_hip, 

CASE
            WHEN OSQ010B = 1 THEN 'Yes' -- categorize numeric values
WHEN OSQ010B = 2 THEN 'No' -- categorize numeric values
WHEN OSQ010B = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ010B = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ010B IS NULL THEN NULL 
ELSE OSQ010B 
 END as broken_or_fractured_a_wrist, 

CASE
            WHEN OSQ010C = 1 THEN 'Yes' -- categorize numeric values
WHEN OSQ010C = 2 THEN 'No' -- categorize numeric values
WHEN OSQ010C = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ010C = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ010C IS NULL THEN NULL 
ELSE OSQ010C 
 END as broken_or_fractured_spine, 

CASE
            WHEN OSQ020A = 1 THEN '1' -- categorize numeric values
WHEN OSQ020A = 2 THEN '2' -- categorize numeric values
WHEN OSQ020A = 3 THEN '3' -- categorize numeric values
WHEN OSQ020A = 7777 THEN 'Refused' -- categorize numeric values
WHEN OSQ020A = 9999 THEN 'Dont know' -- categorize numeric values
WHEN OSQ020A IS NULL THEN NULL 
ELSE OSQ020A 
 END as times_broken_fractured_hip, 

CASE
            WHEN OSQ020B = 1 THEN '1' -- categorize numeric values
WHEN OSQ020B = 2 THEN '2' -- categorize numeric values
WHEN OSQ020B = 3 THEN '3' -- categorize numeric values
WHEN OSQ020B = 4 THEN '4' -- categorize numeric values
WHEN OSQ020B = 5 THEN '5' -- categorize numeric values
WHEN OSQ020B = 7777 THEN 'Refused' -- categorize numeric values
WHEN OSQ020B = 9999 THEN 'Dont know' -- categorize numeric values
WHEN OSQ020B IS NULL THEN NULL 
ELSE OSQ020B 
 END as times_broken_fractured_wrist, 

CASE
            WHEN OSQ020C = 1 THEN '1' -- categorize numeric values
WHEN OSQ020C = 2 THEN '2' -- categorize numeric values
WHEN OSQ020C = 3 THEN '3' -- categorize numeric values
WHEN OSQ020C = 4 THEN '4' -- categorize numeric values
WHEN OSQ020C = 5 THEN '5' -- categorize numeric values
WHEN OSQ020C = 7777 THEN 'Refused' -- categorize numeric values
WHEN OSQ020C = 9999 THEN 'Dont know' -- categorize numeric values
WHEN OSQ020C IS NULL THEN NULL 
ELSE OSQ020C 
 END as times_broken_fractured_spine, 

OSQ025 as OSQ025, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OSD030AA IS NULL THEN NULL 
ELSE OSD030AA 
 END as age_when_fractured_hip_1st_time, 

CASE
            WHEN OSQ040AA = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040AA = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040AA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040AA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040AA IS NULL THEN NULL 
ELSE OSQ040AA 
 END as under_over_50_when_fracd_hip_1st_time, 

CASE
            WHEN OSD050AA = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050AA = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050AA = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050AA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050AA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050AA IS NULL THEN NULL 
ELSE OSD050AA 
 END as reason_hip_fracture_occurred_1st_time, 

CASE
            WHEN OSD030AB IS NULL THEN NULL 
ELSE OSD030AB 
 END as age_when_fractured_hip_2nd_time, 

CASE
            WHEN OSQ040AB = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040AB = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040AB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040AB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040AB IS NULL THEN NULL 
ELSE OSQ040AB 
 END as under_over_50_when_fracd_hip_2nd_time, 

CASE
            WHEN OSD050AB = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050AB = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050AB = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050AB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050AB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050AB IS NULL THEN NULL 
ELSE OSD050AB 
 END as reason_hip_fracture_occurred_2nd_time, 

CASE
            WHEN OSD030AC = 65 THEN '65' -- categorize numeric values
WHEN OSD030AC = 80 THEN '80 or older' -- categorize numeric values
WHEN OSD030AC = 77777 THEN 'Refused' -- categorize numeric values
WHEN OSD030AC = 99999 THEN 'Dont know' -- categorize numeric values
WHEN OSD030AC IS NULL THEN NULL 
ELSE OSD030AC 
 END as age_when_fractured_hip_3rd_time, 

CASE
            WHEN OSQ040AC = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040AC = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040AC = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040AC = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040AC IS NULL THEN NULL 
ELSE OSQ040AC 
 END as under_over_50_when_fracd_hip_3rd_time, 

CASE
            WHEN OSD050AC = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050AC = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050AC = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050AC = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050AC = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050AC IS NULL THEN NULL 
ELSE OSD050AC 
 END as reason_hip_fracture_occurred_3rd_time, 

CASE
            WHEN OSD030BA IS NULL THEN NULL 
ELSE OSD030BA 
 END as age_when_fractured_wrist_1st_time, 

CASE
            WHEN OSQ040BA = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040BA = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040BA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040BA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040BA IS NULL THEN NULL 
ELSE OSQ040BA 
 END as under_over_50_when_fracd_wrist_1st_time, 

CASE
            WHEN OSD050BA = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050BA = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050BA = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050BA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050BA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050BA IS NULL THEN NULL 
ELSE OSD050BA 
 END as reason_wrist_fracture_occurred_1st_time, 

CASE
            WHEN OSD030BB IS NULL THEN NULL 
ELSE OSD030BB 
 END as age_when_fractured_wrist_2nd_time, 

CASE
            WHEN OSQ040BB = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040BB = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040BB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040BB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040BB IS NULL THEN NULL 
ELSE OSQ040BB 
 END as under_over_50_when_fracd_wrist_2nd_time, 

CASE
            WHEN OSD050BB = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050BB = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050BB = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050BB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050BB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050BB IS NULL THEN NULL 
ELSE OSD050BB 
 END as reason_wrist_fracture_occurred_2nd_time, 

CASE
            WHEN OSD030BC IS NULL THEN NULL 
ELSE OSD030BC 
 END as age_when_fractured_wrist_3rd_time, 

CASE
            WHEN OSQ040BC = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040BC = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040BC = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040BC = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040BC IS NULL THEN NULL 
ELSE OSQ040BC 
 END as under_over_50_when_fracd_wrist_3rd_time, 

CASE
            WHEN OSD050BC = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050BC = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050BC = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050BC = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050BC = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050BC IS NULL THEN NULL 
ELSE OSD050BC 
 END as reason_wrist_fracture_occurred_3rd_time, 

CASE
            WHEN OSD030BD IS NULL THEN NULL 
ELSE OSD030BD 
 END as age_when_fractured_wrist_4th_time, 

CASE
            WHEN OSQ040BD = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040BD = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040BD = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040BD = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040BD IS NULL THEN NULL 
ELSE OSQ040BD 
 END as under_over_50_when_fracd_wrist_4th_time, 

CASE
            WHEN OSD050BD = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050BD = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050BD = 3 THEN 'A car accident or other severe trama?' -- categorize numeric values
WHEN OSD050BD = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050BD = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050BD IS NULL THEN NULL 
ELSE OSD050BD 
 END as reason_wrist_fracture_occurred_4th_time, 

CASE
            WHEN OSD030BE IS NULL THEN NULL 
ELSE OSD030BE 
 END as age_when_fractured_wrist_5th_time, 

CASE
            WHEN OSQ040BE = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040BE = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040BE = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040BE = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040BE IS NULL THEN NULL 
ELSE OSQ040BE 
 END as under_over_50_when_fracd_wrist_5th_time, 

CASE
            WHEN OSD050BE = '1' THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize string values 
WHEN OSD050BE = '2' THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' -- categorize string values 
WHEN OSD050BE = '3' THEN 'A car accident or other severe trama?' -- categorize string values 
WHEN OSD050BE = '7' THEN 'Refused' -- categorize string values 
WHEN OSD050BE = '9' THEN 'Dont know' -- categorize string values 
WHEN OSD050BE IS NULL THEN NULL 
ELSE OSD050BE 
 END as reason_wrist_fracture_occurred_5th_time, 

CASE
            WHEN OSD030CA IS NULL THEN NULL 
ELSE OSD030CA 
 END as age_when_fractured_spine_1st_time, 

CASE
            WHEN OSQ040CA = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040CA = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040CA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040CA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040CA IS NULL THEN NULL 
ELSE OSQ040CA 
 END as under_over_50_when_fracd_spine_1st_time, 

CASE
            WHEN OSD050CA = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050CA = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050CA = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050CA = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050CA = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050CA IS NULL THEN NULL 
ELSE OSD050CA 
 END as reason_spine_fracture_occurred_1st_time, 

CASE
            WHEN OSD030CB IS NULL THEN NULL 
ELSE OSD030CB 
 END as age_when_fractured_spine_2nd_time, 

CASE
            WHEN OSQ040CB = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040CB = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040CB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040CB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040CB IS NULL THEN NULL 
ELSE OSQ040CB 
 END as under_over_50_when_fracd_spine_2nd_time, 

CASE
            WHEN OSD050CB = 1 THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize numeric values
WHEN OSD050CB = 2 THEN 'A hard fall, such as falling off a ladder or step stool, down stairs' -- categorize numeric values
WHEN OSD050CB = 3 THEN 'A car accident or other severe trauma' -- categorize numeric values
WHEN OSD050CB = 7 THEN 'Refused' -- categorize numeric values
WHEN OSD050CB = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSD050CB IS NULL THEN NULL 
ELSE OSD050CB 
 END as reason_spine_fracture_occurred_2nd_time, 

CASE
            WHEN OSD030CC IS NULL THEN NULL 
ELSE OSD030CC 
 END as age_when_fractured_spine_3rd_time, 

CASE
            WHEN OSQ040CC = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040CC = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040CC = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040CC = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040CC IS NULL THEN NULL 
ELSE OSQ040CC 
 END as under_over_50_when_fracd_spine_3rd_time, 

CASE
            WHEN OSD050CC = '1' THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize string values 
WHEN OSD050CC = '2' THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' -- categorize string values 
WHEN OSD050CC = '3' THEN 'A car accident or other severe trama?' -- categorize string values 
WHEN OSD050CC = '7' THEN 'Refused' -- categorize string values 
WHEN OSD050CC = '9' THEN 'Dont know' -- categorize string values 
WHEN OSD050CC IS NULL THEN NULL 
ELSE OSD050CC 
 END as reason_spine_fracture_occurred_3rd_time, 

CASE
            WHEN OSD030CD IS NULL THEN NULL 
ELSE OSD030CD 
 END as age_when_fractured_spine_4th_time, 

CASE
            WHEN OSQ040CD = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040CD = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040CD = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040CD = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040CD IS NULL THEN NULL 
ELSE OSQ040CD 
 END as under_over_50_when_fracd_spine_4th_time, 

CASE
            WHEN OSD050CD = '1' THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize string values 
WHEN OSD050CD = '2' THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' -- categorize string values 
WHEN OSD050CD = '3' THEN 'A car accident or other severe trama?' -- categorize string values 
WHEN OSD050CD = '7' THEN 'Refused' -- categorize string values 
WHEN OSD050CD = '9' THEN 'Dont know' -- categorize string values 
WHEN OSD050CD IS NULL THEN NULL 
ELSE OSD050CD 
 END as reason_spine_fracture_occurred_4th_time, 

CASE
            WHEN OSD030CE = 58 THEN '58' -- categorize numeric values
WHEN OSD030CE = 80 THEN '80 or older' -- categorize numeric values
WHEN OSD030CE = 77777 THEN 'Refused' -- categorize numeric values
WHEN OSD030CE = 99999 THEN 'Dont know' -- categorize numeric values
WHEN OSD030CE IS NULL THEN NULL 
ELSE OSD030CE 
 END as age_when_fractured_spine_5th_time, 

CASE
            WHEN OSQ040CE = 1 THEN 'Under 50 years old, or' -- categorize numeric values
WHEN OSQ040CE = 2 THEN '50 years old or older?' -- categorize numeric values
WHEN OSQ040CE = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ040CE = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ040CE IS NULL THEN NULL 
ELSE OSQ040CE 
 END as under_over_50_when_fracd_spine_5th_time, 

CASE
            WHEN OSD050CE = '1' THEN 'A fall from standing height or less, for example, tripped, slipped, fell out of bed' -- categorize string values 
WHEN OSD050CE = '2' THEN 'A hard fall, such as falling off a ladder or step stool, down stairs or...' -- categorize string values 
WHEN OSD050CE = '3' THEN 'A car accident or other severe trama?' -- categorize string values 
WHEN OSD050CE = '7' THEN 'Refused' -- categorize string values 
WHEN OSD050CE = '9' THEN 'Dont know' -- categorize string values 
WHEN OSD050CE IS NULL THEN NULL 
ELSE OSD050CE 
 END as reason_spine_fracture_occurred_5th_time, 

CASE
            WHEN OSQ080 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ080 = '2' THEN 'No' -- categorize string values 
WHEN OSQ080 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ080 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ080 IS NULL THEN NULL 
ELSE OSQ080 
 END as doctor_ever_told_any_other_fractures, 

CASE
            WHEN OSQ090A = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090A = '2' THEN 'No' -- categorize string values 
WHEN OSQ090A = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090A = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090A IS NULL THEN NULL 
ELSE OSQ090A 
 END as fracture_result_of_severe_trauma, 

CASE
            WHEN OSQ100A = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100A = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100A = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100A = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100A = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100A = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100A = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100A = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100A = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100A = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100A = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100A = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100A = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100A = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100A = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100A = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100A = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100A = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100A = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100A = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100A IS NULL THEN NULL 
ELSE OSQ100A 
 END as where_fracture_occurred, 

CASE
            WHEN SAFE_CAST(OSD110A AS FLOAT64) > 79.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110A IS NULL THEN NULL 
ELSE OSD110A 
 END as how_old_when_fracture_occurred, 

CASE
            WHEN OSQ120A = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120A = '2' THEN 'No' -- categorize string values 
WHEN OSQ120A = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120A = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120A IS NULL THEN NULL 
ELSE OSQ120A 
 END as any_other_fractures, 

CASE
            WHEN OSQ090B = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090B = '2' THEN 'No' -- categorize string values 
WHEN OSQ090B = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090B = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090B IS NULL THEN NULL 
ELSE OSQ090B 
 END as fracture_result_of_severe_trauma_OSQ090B, 

CASE
            WHEN OSQ100B = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100B = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100B = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100B = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100B = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100B = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100B = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100B = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100B = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100B = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100B = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100B = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100B = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100B = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100B = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100B = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100B = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100B = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100B = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100B = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100B IS NULL THEN NULL 
ELSE OSQ100B 
 END as where_fracture_occurred_OSQ100B, 

CASE
            WHEN SAFE_CAST(OSD110B AS FLOAT64) > 78.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110B IS NULL THEN NULL 
ELSE OSD110B 
 END as how_old_when_fracture_occurred_OSD110B, 

CASE
            WHEN OSQ120B = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120B = '2' THEN 'No' -- categorize string values 
WHEN OSQ120B = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120B = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120B IS NULL THEN NULL 
ELSE OSQ120B 
 END as any_other_fractures_OSQ120B, 

CASE
            WHEN OSQ090C = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090C = '2' THEN 'No' -- categorize string values 
WHEN OSQ090C = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090C = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090C IS NULL THEN NULL 
ELSE OSQ090C 
 END as fracture_result_of_severe_trauma_OSQ090C, 

CASE
            WHEN OSQ100C = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100C = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100C = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100C = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100C = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100C = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100C = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100C = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100C = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100C = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100C = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100C = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100C = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100C = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100C = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100C = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100C = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100C = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100C = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100C = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100C IS NULL THEN NULL 
ELSE OSQ100C 
 END as where_fracture_occurred_OSQ100C, 

CASE
            WHEN SAFE_CAST(OSD110C AS FLOAT64) > 67.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110C IS NULL THEN NULL 
ELSE OSD110C 
 END as how_old_when_fracture_occurred_OSD110C, 

CASE
            WHEN OSQ120C = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120C = '2' THEN 'No' -- categorize string values 
WHEN OSQ120C = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120C = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120C IS NULL THEN NULL 
ELSE OSQ120C 
 END as any_other_fractures_OSQ120C, 

CASE
            WHEN OSQ090D = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090D = '2' THEN 'No' -- categorize string values 
WHEN OSQ090D = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090D = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090D IS NULL THEN NULL 
ELSE OSQ090D 
 END as fracture_result_of_severe_trauma_OSQ090D, 

CASE
            WHEN OSQ100D = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100D = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100D = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100D = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100D = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100D = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100D = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100D = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100D = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100D = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100D = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100D = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100D = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100D = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100D = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100D = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100D = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100D = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100D = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100D = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100D IS NULL THEN NULL 
ELSE OSQ100D 
 END as where_fracture_occurred_OSQ100D, 

CASE
            WHEN SAFE_CAST(OSD110D AS FLOAT64) > 68.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110D IS NULL THEN NULL 
ELSE OSD110D 
 END as how_old_when_fracture_occurred_OSD110D, 

CASE
            WHEN OSQ120D = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120D = '2' THEN 'No' -- categorize string values 
WHEN OSQ120D = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120D = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120D IS NULL THEN NULL 
ELSE OSQ120D 
 END as any_other_fractures_OSQ120D, 

CASE
            WHEN OSQ090E = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090E = '2' THEN 'No' -- categorize string values 
WHEN OSQ090E = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090E = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090E IS NULL THEN NULL 
ELSE OSQ090E 
 END as fracture_result_of_severe_trauma_OSQ090E, 

CASE
            WHEN OSQ100E = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100E = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100E = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100E = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100E = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100E = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100E = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100E = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100E = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100E = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100E = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100E = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100E = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100E = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100E = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100E = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100E = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100E = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100E = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100E = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100E IS NULL THEN NULL 
ELSE OSQ100E 
 END as where_fracture_occurred_OSQ100E, 

CASE
            WHEN SAFE_CAST(OSD110E AS FLOAT64) > 34.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110E IS NULL THEN NULL 
ELSE OSD110E 
 END as how_old_when_fracture_occurred_OSD110E, 

CASE
            WHEN OSQ120E = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120E = '2' THEN 'No' -- categorize string values 
WHEN OSQ120E = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120E = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120E IS NULL THEN NULL 
ELSE OSQ120E 
 END as any_other_fractures_OSQ120E, 

CASE
            WHEN OSQ090F = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090F = '2' THEN 'No' -- categorize string values 
WHEN OSQ090F = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090F = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090F IS NULL THEN NULL 
ELSE OSQ090F 
 END as fracture_result_of_severe_trauma_OSQ090F, 

CASE
            WHEN OSQ100F = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100F = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100F = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100F = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100F = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100F = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100F = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100F = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100F = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100F = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100F = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100F = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100F = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100F = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100F = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100F = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100F = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100F = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100F = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100F = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100F IS NULL THEN NULL 
ELSE OSQ100F 
 END as where_fracture_occurred_OSQ100F, 

CASE
            WHEN SAFE_CAST(OSD110F AS FLOAT64) > 55.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSD110F IS NULL THEN NULL 
ELSE OSD110F 
 END as how_old_when_fracture_occurred_OSD110F, 

CASE
            WHEN OSQ120F = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120F = '2' THEN 'No' -- categorize string values 
WHEN OSQ120F = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120F = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120F IS NULL THEN NULL 
ELSE OSQ120F 
 END as any_other_fractures_OSQ120F, 

CASE
            WHEN OSQ090G = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090G = '2' THEN 'No' -- categorize string values 
WHEN OSQ090G = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090G = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090G IS NULL THEN NULL 
ELSE OSQ090G 
 END as fracture_result_of_severe_trauma_OSQ090G, 

CASE
            WHEN OSQ120G = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120G = '2' THEN 'No' -- categorize string values 
WHEN OSQ120G = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120G = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120G IS NULL THEN NULL 
ELSE OSQ120G 
 END as any_other_fractures_OSQ120G, 

CASE
            WHEN OSQ090H = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090H = '2' THEN 'No' -- categorize string values 
WHEN OSQ090H = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090H = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090H IS NULL THEN NULL 
ELSE OSQ090H 
 END as fracture_result_of_severe_trauma_OSQ090H, 

CASE
            WHEN OSQ120H = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120H = '2' THEN 'No' -- categorize string values 
WHEN OSQ120H = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120H = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120H IS NULL THEN NULL 
ELSE OSQ120H 
 END as any_other_fractures_OSQ120H, 

CASE
            WHEN OSQ090I = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090I = '2' THEN 'No' -- categorize string values 
WHEN OSQ090I = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090I = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090I IS NULL THEN NULL 
ELSE OSQ090I 
 END as fracture_result_of_severe_trauma_OSQ090I, 

CASE
            WHEN OSQ120I = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120I = '2' THEN 'No' -- categorize string values 
WHEN OSQ120I = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120I = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120I IS NULL THEN NULL 
ELSE OSQ120I 
 END as any_other_fractures_OSQ120I, 

CASE
            WHEN OSQ090J = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ090J = '2' THEN 'No' -- categorize string values 
WHEN OSQ090J = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ090J = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ090J IS NULL THEN NULL 
ELSE OSQ090J 
 END as fracture_result_of_severe_trauma_OSQ090J, 

CASE
            WHEN OSQ100J = '10' THEN 'HEAD/FACE' -- categorize string values 
WHEN OSQ100J = '11' THEN 'UPPER ARM (HUMERUS)' -- categorize string values 
WHEN OSQ100J = '12' THEN 'LOWER ARM BETWEEN WRIST AND ELBOW (DO NOT INCLUDE WRIST)' -- categorize string values 
WHEN OSQ100J = '13' THEN 'ELBOW' -- categorize string values 
WHEN OSQ100J = '14' THEN 'HAND' -- categorize string values 
WHEN OSQ100J = '15' THEN 'FINGERS' -- categorize string values 
WHEN OSQ100J = '16' THEN 'SHOULDER' -- categorize string values 
WHEN OSQ100J = '17' THEN 'COLLAR BONE' -- categorize string values 
WHEN OSQ100J = '18' THEN 'RIBS (EITHER SIDE)' -- categorize string values 
WHEN OSQ100J = '19' THEN 'PELVIS (NOT HIP)' -- categorize string values 
WHEN OSQ100J = '20' THEN 'UPPER LEG (THIGH EXCLUDING HIP)' -- categorize string values 
WHEN OSQ100J = '21' THEN 'LOWER LEG (BETWEEN ANKLE AND KNEE)' -- categorize string values 
WHEN OSQ100J = '22' THEN 'KNEE (PATELLA)' -- categorize string values 
WHEN OSQ100J = '23' THEN 'ANKLE' -- categorize string values 
WHEN OSQ100J = '24' THEN 'HEEL' -- categorize string values 
WHEN OSQ100J = '25' THEN 'FOOT' -- categorize string values 
WHEN OSQ100J = '26' THEN 'TOES' -- categorize string values 
WHEN OSQ100J = '27' THEN 'OTHER (DO NOT SPECIFY)' -- categorize string values 
WHEN OSQ100J = '77' THEN 'Refused' -- categorize string values 
WHEN OSQ100J = '99' THEN 'Dont know' -- categorize string values 
WHEN OSQ100J IS NULL THEN NULL 
ELSE OSQ100J 
 END as where_fracture_occurred_OSQ100J, 

CASE
            WHEN OSD110J = '80' THEN '80 or older' -- categorize string values 
WHEN OSD110J = '777' THEN 'Refused' -- categorize string values 
WHEN OSD110J = '999' THEN 'Dont know' -- categorize string values 
WHEN OSD110J IS NULL THEN NULL 
ELSE OSD110J 
 END as how_old_when_fracture_occurred_OSD110J, 

CASE
            WHEN OSQ120J = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ120J = '2' THEN 'No' -- categorize string values 
WHEN OSQ120J = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ120J = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ120J IS NULL THEN NULL 
ELSE OSQ120J 
 END as any_other_fractures_OSQ120J, 

OSQ129 as OSQ129, -- could not automatically decode name of variable or transformation logic 

CASE
            WHEN OSQ060 = 1 THEN 'Yes' -- categorize numeric values
WHEN OSQ060 = 2 THEN 'No' -- categorize numeric values
WHEN OSQ060 = 7 THEN 'Refused' -- categorize numeric values
WHEN OSQ060 = 9 THEN 'Dont know' -- categorize numeric values
WHEN OSQ060 IS NULL THEN NULL 
ELSE OSQ060 
 END as ever_told_had_osteoporosis_brittle_bones, 

CASE
            WHEN OSQ072 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ072 = '2' THEN 'No' -- categorize string values 
WHEN OSQ072 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ072 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ072 IS NULL THEN NULL 
ELSE OSQ072 
 END as doctor_prescribe_rx_for_osteoporosis, 

CASE
            WHEN OSQ130 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ130 = '2' THEN 'No' -- categorize string values 
WHEN OSQ130 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ130 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ130 IS NULL THEN NULL 
ELSE OSQ130 
 END as ever_taken_prednisone_or_cortisone_daily, 

CASE
            WHEN SAFE_CAST(OSQ140Q AS FLOAT64) > 42.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSQ140Q IS NULL THEN NULL 
ELSE OSQ140Q 
 END as how_long_used_prednisone_or_cortisone, 

CASE
            WHEN OSQ140U = '1' THEN 'Month' -- categorize string values 
WHEN OSQ140U = '2' THEN 'Year' -- categorize string values 
WHEN OSQ140U = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ140U = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ140U IS NULL THEN NULL 
ELSE OSQ140U 
 END as how_long_used_prednisone_or_cortisone_OSQ140U, 

CASE
            WHEN OSQ150 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ150 = '2' THEN 'No' -- categorize string values 
WHEN OSQ150 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ150 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ150 IS NULL THEN NULL 
ELSE OSQ150 
 END as parents_ever_told_had_osteoporosis, 

CASE
            WHEN OSQ160A = '1' THEN 'Mother' -- categorize string values 
WHEN OSQ160A = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ160A = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ160A IS NULL THEN NULL 
ELSE OSQ160A 
 END as mother_was_told_had_osteoporosis, 

CASE
            WHEN OSQ160B = '2' THEN 'Father' -- categorize string values 
WHEN OSQ160B IS NULL THEN NULL 
ELSE OSQ160B 
 END as father_was_told_had_osteoporosis, 

CASE
            WHEN OSQ170 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ170 = '2' THEN 'No' -- categorize string values 
WHEN OSQ170 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ170 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ170 IS NULL THEN NULL 
ELSE OSQ170 
 END as did_mother_ever_fracture_hip, 

CASE
            WHEN SAFE_CAST(OSQ180 AS FLOAT64) > 103.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSQ180 IS NULL THEN NULL 
ELSE OSQ180 
 END as how_old_mother_when_fractured_hip, 

CASE
            WHEN OSQ190 = '1' THEN 'under 50 years or' -- categorize string values 
WHEN OSQ190 = '2' THEN '50 years or older?' -- categorize string values 
WHEN OSQ190 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ190 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ190 IS NULL THEN NULL 
ELSE OSQ190 
 END as over_or_under_50_years_old, 

CASE
            WHEN OSQ200 = '1' THEN 'Yes' -- categorize string values 
WHEN OSQ200 = '2' THEN 'No' -- categorize string values 
WHEN OSQ200 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ200 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ200 IS NULL THEN NULL 
ELSE OSQ200 
 END as did_father_ever_fracture_hip, 

CASE
            WHEN SAFE_CAST(OSQ210 AS FLOAT64) > 99.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN OSQ210 IS NULL THEN NULL 
ELSE OSQ210 
 END as how_old_father_when_fractured_hip, 

CASE
            WHEN OSQ220 = '1' THEN 'Under 50 years old, or' -- categorize string values 
WHEN OSQ220 = '2' THEN '50 years old or older?' -- categorize string values 
WHEN OSQ220 = '7' THEN 'Refused' -- categorize string values 
WHEN OSQ220 = '9' THEN 'Dont know' -- categorize string values 
WHEN OSQ220 IS NULL THEN NULL 
ELSE OSQ220 
 END as over_or_under_50_years_old_OSQ220, 

 FROM {{ ref('stg_osteoporosis_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/OSQ_J.htm
        