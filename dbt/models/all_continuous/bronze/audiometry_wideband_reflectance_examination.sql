SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN SAFE_CAST(WBXFEAR AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Right Ear' -- categorize numeric values
WHEN SAFE_CAST(WBXFEAR AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Left Ear' -- categorize numeric values
WHEN WBXFEAR IS NULL THEN NULL 
ELSE SAFE_CAST(WBXFEAR AS STRING) 
 END as ear_tested, 

CASE
            WHEN WBXF001 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF001 AS STRING) 
 END as frequency_array_data_point_001, 

CASE
            WHEN WBXF002 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF002 AS STRING) 
 END as frequency_array_data_point_002, 

CASE
            WHEN WBXF003 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF003 AS STRING) 
 END as frequency_array_data_point_003, 

CASE
            WHEN WBXF004 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF004 AS STRING) 
 END as frequency_array_data_point_004, 

CASE
            WHEN WBXF005 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF005 AS STRING) 
 END as frequency_array_data_point_005, 

CASE
            WHEN WBXF006 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF006 AS STRING) 
 END as frequency_array_data_point_006, 

CASE
            WHEN WBXF007 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF007 AS STRING) 
 END as frequency_array_data_point_007, 

CASE
            WHEN WBXF008 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF008 AS STRING) 
 END as frequency_array_data_point_008, 

CASE
            WHEN WBXF009 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF009 AS STRING) 
 END as frequency_array_data_point_009, 

CASE
            WHEN WBXF010 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF010 AS STRING) 
 END as frequency_array_data_point_010, 

CASE
            WHEN WBXF011 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF011 AS STRING) 
 END as frequency_array_data_point_011, 

CASE
            WHEN WBXF012 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF012 AS STRING) 
 END as frequency_array_data_point_012, 

CASE
            WHEN WBXF013 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF013 AS STRING) 
 END as frequency_array_data_point_013, 

CASE
            WHEN WBXF014 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF014 AS STRING) 
 END as frequency_array_data_point_014, 

CASE
            WHEN WBXF015 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF015 AS STRING) 
 END as frequency_array_data_point_015, 

CASE
            WHEN WBXF016 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF016 AS STRING) 
 END as frequency_array_data_point_016, 

CASE
            WHEN WBXF017 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF017 AS STRING) 
 END as frequency_array_data_point_017, 

CASE
            WHEN WBXF018 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF018 AS STRING) 
 END as frequency_array_data_point_018, 

CASE
            WHEN WBXF019 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF019 AS STRING) 
 END as frequency_array_data_point_019, 

CASE
            WHEN WBXF020 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF020 AS STRING) 
 END as frequency_array_data_point_020, 

CASE
            WHEN WBXF021 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF021 AS STRING) 
 END as frequency_array_data_point_021, 

CASE
            WHEN WBXF022 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF022 AS STRING) 
 END as frequency_array_data_point_022, 

CASE
            WHEN WBXF023 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF023 AS STRING) 
 END as frequency_array_data_point_023, 

CASE
            WHEN WBXF024 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF024 AS STRING) 
 END as frequency_array_data_point_024, 

CASE
            WHEN WBXF025 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF025 AS STRING) 
 END as frequency_array_data_point_025, 

CASE
            WHEN WBXF026 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF026 AS STRING) 
 END as frequency_array_data_point_026, 

CASE
            WHEN WBXF027 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF027 AS STRING) 
 END as frequency_array_data_point_027, 

CASE
            WHEN WBXF028 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF028 AS STRING) 
 END as frequency_array_data_point_028, 

CASE
            WHEN WBXF029 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF029 AS STRING) 
 END as frequency_array_data_point_029, 

CASE
            WHEN WBXF030 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF030 AS STRING) 
 END as frequency_array_data_point_030, 

CASE
            WHEN WBXF031 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF031 AS STRING) 
 END as frequency_array_data_point_031, 

CASE
            WHEN WBXF032 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF032 AS STRING) 
 END as frequency_array_data_point_032, 

CASE
            WHEN WBXF033 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF033 AS STRING) 
 END as frequency_array_data_point_033, 

CASE
            WHEN WBXF034 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF034 AS STRING) 
 END as frequency_array_data_point_034, 

CASE
            WHEN WBXF035 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF035 AS STRING) 
 END as frequency_array_data_point_035, 

CASE
            WHEN WBXF036 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF036 AS STRING) 
 END as frequency_array_data_point_036, 

CASE
            WHEN WBXF037 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF037 AS STRING) 
 END as frequency_array_data_point_037, 

CASE
            WHEN WBXF038 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF038 AS STRING) 
 END as frequency_array_data_point_038, 

CASE
            WHEN WBXF039 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF039 AS STRING) 
 END as frequency_array_data_point_039, 

CASE
            WHEN WBXF040 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF040 AS STRING) 
 END as frequency_array_data_point_040, 

CASE
            WHEN WBXF041 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF041 AS STRING) 
 END as frequency_array_data_point_041, 

CASE
            WHEN WBXF042 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF042 AS STRING) 
 END as frequency_array_data_point_042, 

CASE
            WHEN WBXF043 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF043 AS STRING) 
 END as frequency_array_data_point_043, 

CASE
            WHEN WBXF044 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF044 AS STRING) 
 END as frequency_array_data_point_044, 

CASE
            WHEN WBXF045 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF045 AS STRING) 
 END as frequency_array_data_point_045, 

CASE
            WHEN WBXF046 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF046 AS STRING) 
 END as frequency_array_data_point_046, 

CASE
            WHEN WBXF047 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF047 AS STRING) 
 END as frequency_array_data_point_047, 

CASE
            WHEN WBXF048 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF048 AS STRING) 
 END as frequency_array_data_point_048, 

CASE
            WHEN WBXF049 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF049 AS STRING) 
 END as frequency_array_data_point_049, 

CASE
            WHEN WBXF050 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF050 AS STRING) 
 END as frequency_array_data_point_050, 

CASE
            WHEN WBXF051 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF051 AS STRING) 
 END as frequency_array_data_point_051, 

CASE
            WHEN WBXF052 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF052 AS STRING) 
 END as frequency_array_data_point_052, 

CASE
            WHEN WBXF053 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF053 AS STRING) 
 END as frequency_array_data_point_053, 

CASE
            WHEN WBXF054 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF054 AS STRING) 
 END as frequency_array_data_point_054, 

CASE
            WHEN WBXF055 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF055 AS STRING) 
 END as frequency_array_data_point_055, 

CASE
            WHEN WBXF056 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF056 AS STRING) 
 END as frequency_array_data_point_056, 

CASE
            WHEN WBXF057 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF057 AS STRING) 
 END as frequency_array_data_point_057, 

CASE
            WHEN WBXF058 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF058 AS STRING) 
 END as frequency_array_data_point_058, 

CASE
            WHEN WBXF059 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF059 AS STRING) 
 END as frequency_array_data_point_059, 

CASE
            WHEN WBXF060 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF060 AS STRING) 
 END as frequency_array_data_point_060, 

CASE
            WHEN WBXF061 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF061 AS STRING) 
 END as frequency_array_data_point_061, 

CASE
            WHEN WBXF062 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF062 AS STRING) 
 END as frequency_array_data_point_062, 

CASE
            WHEN WBXF063 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF063 AS STRING) 
 END as frequency_array_data_point_063, 

CASE
            WHEN WBXF064 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF064 AS STRING) 
 END as frequency_array_data_point_064, 

CASE
            WHEN WBXF065 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF065 AS STRING) 
 END as frequency_array_data_point_065, 

CASE
            WHEN WBXF066 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF066 AS STRING) 
 END as frequency_array_data_point_066, 

CASE
            WHEN WBXF067 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF067 AS STRING) 
 END as frequency_array_data_point_067, 

CASE
            WHEN WBXF068 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF068 AS STRING) 
 END as frequency_array_data_point_068, 

CASE
            WHEN WBXF069 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF069 AS STRING) 
 END as frequency_array_data_point_069, 

CASE
            WHEN WBXF070 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF070 AS STRING) 
 END as frequency_array_data_point_070, 

CASE
            WHEN WBXF071 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF071 AS STRING) 
 END as frequency_array_data_point_071, 

CASE
            WHEN WBXF072 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF072 AS STRING) 
 END as frequency_array_data_point_072, 

CASE
            WHEN WBXF073 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF073 AS STRING) 
 END as frequency_array_data_point_073, 

CASE
            WHEN WBXF074 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF074 AS STRING) 
 END as frequency_array_data_point_074, 

CASE
            WHEN WBXF075 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF075 AS STRING) 
 END as frequency_array_data_point_075, 

CASE
            WHEN WBXF076 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF076 AS STRING) 
 END as frequency_array_data_point_076, 

CASE
            WHEN WBXF077 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF077 AS STRING) 
 END as frequency_array_data_point_077, 

CASE
            WHEN WBXF078 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF078 AS STRING) 
 END as frequency_array_data_point_078, 

CASE
            WHEN WBXF079 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF079 AS STRING) 
 END as frequency_array_data_point_079, 

CASE
            WHEN WBXF080 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF080 AS STRING) 
 END as frequency_array_data_point_080, 

CASE
            WHEN WBXF081 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF081 AS STRING) 
 END as frequency_array_data_point_081, 

CASE
            WHEN WBXF082 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF082 AS STRING) 
 END as frequency_array_data_point_082, 

CASE
            WHEN WBXF083 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF083 AS STRING) 
 END as frequency_array_data_point_083, 

CASE
            WHEN WBXF084 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF084 AS STRING) 
 END as frequency_array_data_point_084, 

CASE
            WHEN WBXF085 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF085 AS STRING) 
 END as frequency_array_data_point_085, 

CASE
            WHEN WBXF086 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF086 AS STRING) 
 END as frequency_array_data_point_086, 

CASE
            WHEN WBXF087 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF087 AS STRING) 
 END as frequency_array_data_point_087, 

CASE
            WHEN WBXF088 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF088 AS STRING) 
 END as frequency_array_data_point_088, 

CASE
            WHEN WBXF089 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF089 AS STRING) 
 END as frequency_array_data_point_089, 

CASE
            WHEN WBXF090 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF090 AS STRING) 
 END as frequency_array_data_point_090, 

CASE
            WHEN WBXF091 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF091 AS STRING) 
 END as frequency_array_data_point_091, 

CASE
            WHEN WBXF092 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF092 AS STRING) 
 END as frequency_array_data_point_092, 

CASE
            WHEN WBXF093 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF093 AS STRING) 
 END as frequency_array_data_point_093, 

CASE
            WHEN WBXF094 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF094 AS STRING) 
 END as frequency_array_data_point_094, 

CASE
            WHEN WBXF095 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF095 AS STRING) 
 END as frequency_array_data_point_095, 

CASE
            WHEN WBXF096 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF096 AS STRING) 
 END as frequency_array_data_point_096, 

CASE
            WHEN WBXF097 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF097 AS STRING) 
 END as frequency_array_data_point_097, 

CASE
            WHEN WBXF098 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF098 AS STRING) 
 END as frequency_array_data_point_098, 

CASE
            WHEN WBXF099 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF099 AS STRING) 
 END as frequency_array_data_point_099, 

CASE
            WHEN WBXF100 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF100 AS STRING) 
 END as frequency_array_data_point_100, 

CASE
            WHEN WBXF101 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF101 AS STRING) 
 END as frequency_array_data_point_101, 

CASE
            WHEN WBXF102 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF102 AS STRING) 
 END as frequency_array_data_point_102, 

CASE
            WHEN WBXF103 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF103 AS STRING) 
 END as frequency_array_data_point_103, 

CASE
            WHEN WBXF104 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF104 AS STRING) 
 END as frequency_array_data_point_104, 

CASE
            WHEN WBXF105 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF105 AS STRING) 
 END as frequency_array_data_point_105, 

CASE
            WHEN WBXF106 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF106 AS STRING) 
 END as frequency_array_data_point_106, 

CASE
            WHEN WBXF107 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXF107 AS STRING) 
 END as frequency_array_data_point_107, 

CASE
            WHEN WBXA001 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA001 AS STRING) 
 END as absorbance_array_data_point_001, 

CASE
            WHEN WBXA002 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA002 AS STRING) 
 END as absorbance_array_data_point_002, 

CASE
            WHEN WBXA003 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA003 AS STRING) 
 END as absorbance_array_data_point_003, 

CASE
            WHEN WBXA004 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA004 AS STRING) 
 END as absorbance_array_data_point_004, 

CASE
            WHEN WBXA005 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA005 AS STRING) 
 END as absorbance_array_data_point_005, 

CASE
            WHEN WBXA006 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA006 AS STRING) 
 END as absorbance_array_data_point_006, 

CASE
            WHEN WBXA007 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA007 AS STRING) 
 END as absorbance_array_data_point_007, 

CASE
            WHEN WBXA008 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA008 AS STRING) 
 END as absorbance_array_data_point_008, 

CASE
            WHEN WBXA009 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA009 AS STRING) 
 END as absorbance_array_data_point_009, 

CASE
            WHEN WBXA010 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA010 AS STRING) 
 END as absorbance_array_data_point_010, 

CASE
            WHEN WBXA011 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA011 AS STRING) 
 END as absorbance_array_data_point_011, 

CASE
            WHEN WBXA012 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA012 AS STRING) 
 END as absorbance_array_data_point_012, 

CASE
            WHEN WBXA013 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA013 AS STRING) 
 END as absorbance_array_data_point_013, 

CASE
            WHEN WBXA014 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA014 AS STRING) 
 END as absorbance_array_data_point_014, 

CASE
            WHEN WBXA015 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA015 AS STRING) 
 END as absorbance_array_data_point_015, 

CASE
            WHEN WBXA016 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA016 AS STRING) 
 END as absorbance_array_data_point_016, 

CASE
            WHEN WBXA017 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA017 AS STRING) 
 END as absorbance_array_data_point_017, 

CASE
            WHEN WBXA018 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA018 AS STRING) 
 END as absorbance_array_data_point_018, 

CASE
            WHEN WBXA019 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA019 AS STRING) 
 END as absorbance_array_data_point_019, 

CASE
            WHEN WBXA020 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA020 AS STRING) 
 END as absorbance_array_data_point_020, 

CASE
            WHEN WBXA021 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA021 AS STRING) 
 END as absorbance_array_data_point_021, 

CASE
            WHEN WBXA022 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA022 AS STRING) 
 END as absorbance_array_data_point_022, 

CASE
            WHEN WBXA023 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA023 AS STRING) 
 END as absorbance_array_data_point_023, 

CASE
            WHEN WBXA024 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA024 AS STRING) 
 END as absorbance_array_data_point_024, 

CASE
            WHEN WBXA025 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA025 AS STRING) 
 END as absorbance_array_data_point_025, 

CASE
            WHEN WBXA026 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA026 AS STRING) 
 END as absorbance_array_data_point_026, 

CASE
            WHEN WBXA027 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA027 AS STRING) 
 END as absorbance_array_data_point_027, 

CASE
            WHEN WBXA028 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA028 AS STRING) 
 END as absorbance_array_data_point_028, 

CASE
            WHEN WBXA029 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA029 AS STRING) 
 END as absorbance_array_data_point_029, 

CASE
            WHEN WBXA030 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA030 AS STRING) 
 END as absorbance_array_data_point_030, 

CASE
            WHEN WBXA031 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA031 AS STRING) 
 END as absorbance_array_data_point_031, 

CASE
            WHEN WBXA032 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA032 AS STRING) 
 END as absorbance_array_data_point_032, 

CASE
            WHEN WBXA033 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA033 AS STRING) 
 END as absorbance_array_data_point_033, 

CASE
            WHEN WBXA034 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA034 AS STRING) 
 END as absorbance_array_data_point_034, 

CASE
            WHEN WBXA035 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA035 AS STRING) 
 END as absorbance_array_data_point_035, 

CASE
            WHEN WBXA036 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA036 AS STRING) 
 END as absorbance_array_data_point_036, 

CASE
            WHEN WBXA037 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA037 AS STRING) 
 END as absorbance_array_data_point_037, 

CASE
            WHEN WBXA038 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA038 AS STRING) 
 END as absorbance_array_data_point_038, 

CASE
            WHEN WBXA039 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA039 AS STRING) 
 END as absorbance_array_data_point_039, 

CASE
            WHEN WBXA040 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA040 AS STRING) 
 END as absorbance_array_data_point_040, 

CASE
            WHEN WBXA041 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA041 AS STRING) 
 END as absorbance_array_data_point_041, 

CASE
            WHEN WBXA042 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA042 AS STRING) 
 END as absorbance_array_data_point_042, 

CASE
            WHEN WBXA043 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA043 AS STRING) 
 END as absorbance_array_data_point_043, 

CASE
            WHEN WBXA044 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA044 AS STRING) 
 END as absorbance_array_data_point_044, 

CASE
            WHEN WBXA045 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA045 AS STRING) 
 END as absorbance_array_data_point_045, 

CASE
            WHEN WBXA046 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA046 AS STRING) 
 END as absorbance_array_data_point_046, 

CASE
            WHEN WBXA047 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA047 AS STRING) 
 END as absorbance_array_data_point_047, 

CASE
            WHEN WBXA048 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA048 AS STRING) 
 END as absorbance_array_data_point_048, 

CASE
            WHEN WBXA049 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA049 AS STRING) 
 END as absorbance_array_data_point_049, 

CASE
            WHEN WBXA050 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA050 AS STRING) 
 END as absorbance_array_data_point_050, 

CASE
            WHEN WBXA051 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA051 AS STRING) 
 END as absorbance_array_data_point_051, 

CASE
            WHEN WBXA052 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA052 AS STRING) 
 END as absorbance_array_data_point_052, 

CASE
            WHEN WBXA053 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA053 AS STRING) 
 END as absorbance_array_data_point_053, 

CASE
            WHEN WBXA054 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA054 AS STRING) 
 END as absorbance_array_data_point_054, 

CASE
            WHEN WBXA055 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA055 AS STRING) 
 END as absorbance_array_data_point_055, 

CASE
            WHEN WBXA056 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA056 AS STRING) 
 END as absorbance_array_data_point_056, 

CASE
            WHEN WBXA057 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA057 AS STRING) 
 END as absorbance_array_data_point_057, 

CASE
            WHEN WBXA058 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA058 AS STRING) 
 END as absorbance_array_data_point_058, 

CASE
            WHEN WBXA059 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA059 AS STRING) 
 END as absorbance_array_data_point_059, 

CASE
            WHEN WBXA060 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA060 AS STRING) 
 END as absorbance_array_data_point_060, 

CASE
            WHEN WBXA061 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA061 AS STRING) 
 END as absorbance_array_data_point_061, 

CASE
            WHEN WBXA062 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA062 AS STRING) 
 END as absorbance_array_data_point_062, 

CASE
            WHEN WBXA063 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA063 AS STRING) 
 END as absorbance_array_data_point_063, 

CASE
            WHEN WBXA064 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA064 AS STRING) 
 END as absorbance_array_data_point_064, 

CASE
            WHEN WBXA065 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA065 AS STRING) 
 END as absorbance_array_data_point_065, 

CASE
            WHEN WBXA066 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA066 AS STRING) 
 END as absorbance_array_data_point_066, 

CASE
            WHEN WBXA067 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA067 AS STRING) 
 END as absorbance_array_data_point_067, 

CASE
            WHEN WBXA068 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA068 AS STRING) 
 END as absorbance_array_data_point_068, 

CASE
            WHEN WBXA069 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA069 AS STRING) 
 END as absorbance_array_data_point_069, 

CASE
            WHEN WBXA070 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA070 AS STRING) 
 END as absorbance_array_data_point_070, 

CASE
            WHEN WBXA071 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA071 AS STRING) 
 END as absorbance_array_data_point_071, 

CASE
            WHEN WBXA072 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA072 AS STRING) 
 END as absorbance_array_data_point_072, 

CASE
            WHEN WBXA073 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA073 AS STRING) 
 END as absorbance_array_data_point_073, 

CASE
            WHEN WBXA074 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA074 AS STRING) 
 END as absorbance_array_data_point_074, 

CASE
            WHEN WBXA075 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA075 AS STRING) 
 END as absorbance_array_data_point_075, 

CASE
            WHEN WBXA076 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA076 AS STRING) 
 END as absorbance_array_data_point_076, 

CASE
            WHEN WBXA077 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA077 AS STRING) 
 END as absorbance_array_data_point_077, 

CASE
            WHEN WBXA078 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA078 AS STRING) 
 END as absorbance_array_data_point_078, 

CASE
            WHEN WBXA079 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA079 AS STRING) 
 END as absorbance_array_data_point_079, 

CASE
            WHEN WBXA080 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA080 AS STRING) 
 END as absorbance_array_data_point_080, 

CASE
            WHEN WBXA081 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA081 AS STRING) 
 END as absorbance_array_data_point_081, 

CASE
            WHEN WBXA082 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA082 AS STRING) 
 END as absorbance_array_data_point_082, 

CASE
            WHEN WBXA083 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA083 AS STRING) 
 END as absorbance_array_data_point_083, 

CASE
            WHEN WBXA084 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA084 AS STRING) 
 END as absorbance_array_data_point_084, 

CASE
            WHEN WBXA085 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA085 AS STRING) 
 END as absorbance_array_data_point_085, 

CASE
            WHEN WBXA086 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA086 AS STRING) 
 END as absorbance_array_data_point_086, 

CASE
            WHEN WBXA087 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA087 AS STRING) 
 END as absorbance_array_data_point_087, 

CASE
            WHEN WBXA088 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA088 AS STRING) 
 END as absorbance_array_data_point_088, 

CASE
            WHEN WBXA089 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA089 AS STRING) 
 END as absorbance_array_data_point_089, 

CASE
            WHEN WBXA090 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA090 AS STRING) 
 END as absorbance_array_data_point_090, 

CASE
            WHEN WBXA091 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA091 AS STRING) 
 END as absorbance_array_data_point_091, 

CASE
            WHEN WBXA092 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA092 AS STRING) 
 END as absorbance_array_data_point_092, 

CASE
            WHEN WBXA093 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA093 AS STRING) 
 END as absorbance_array_data_point_093, 

CASE
            WHEN WBXA094 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA094 AS STRING) 
 END as absorbance_array_data_point_094, 

CASE
            WHEN WBXA095 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA095 AS STRING) 
 END as absorbance_array_data_point_095, 

CASE
            WHEN WBXA096 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA096 AS STRING) 
 END as absorbance_array_data_point_096, 

CASE
            WHEN WBXA097 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA097 AS STRING) 
 END as absorbance_array_data_point_097, 

CASE
            WHEN WBXA098 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA098 AS STRING) 
 END as absorbance_array_data_point_098, 

CASE
            WHEN WBXA099 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA099 AS STRING) 
 END as absorbance_array_data_point_099, 

CASE
            WHEN WBXA100 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA100 AS STRING) 
 END as absorbance_array_data_point_100, 

CASE
            WHEN WBXA101 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA101 AS STRING) 
 END as absorbance_array_data_point_101, 

CASE
            WHEN WBXA102 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA102 AS STRING) 
 END as absorbance_array_data_point_102, 

CASE
            WHEN WBXA103 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA103 AS STRING) 
 END as absorbance_array_data_point_103, 

CASE
            WHEN WBXA104 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA104 AS STRING) 
 END as absorbance_array_data_point_104, 

CASE
            WHEN WBXA105 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA105 AS STRING) 
 END as absorbance_array_data_point_105, 

CASE
            WHEN WBXA106 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA106 AS STRING) 
 END as absorbance_array_data_point_106, 

CASE
            WHEN WBXA107 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXA107 AS STRING) 
 END as absorbance_array_data_point_107, 

CASE
            WHEN WBXP001 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP001 AS STRING) 
 END as phase_array_data_point_001, 

CASE
            WHEN WBXP002 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP002 AS STRING) 
 END as phase_array_data_point_002, 

CASE
            WHEN WBXP003 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP003 AS STRING) 
 END as phase_array_data_point_003, 

CASE
            WHEN WBXP004 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP004 AS STRING) 
 END as phase_array_data_point_004, 

CASE
            WHEN WBXP005 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP005 AS STRING) 
 END as phase_array_data_point_005, 

CASE
            WHEN WBXP006 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP006 AS STRING) 
 END as phase_array_data_point_006, 

CASE
            WHEN WBXP007 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP007 AS STRING) 
 END as phase_array_data_point_007, 

CASE
            WHEN WBXP008 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP008 AS STRING) 
 END as phase_array_data_point_008, 

CASE
            WHEN WBXP009 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP009 AS STRING) 
 END as phase_array_data_point_009, 

CASE
            WHEN WBXP010 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP010 AS STRING) 
 END as phase_array_data_point_010, 

CASE
            WHEN WBXP011 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP011 AS STRING) 
 END as phase_array_data_point_011, 

CASE
            WHEN WBXP012 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP012 AS STRING) 
 END as phase_array_data_point_012, 

CASE
            WHEN WBXP013 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP013 AS STRING) 
 END as phase_array_data_point_013, 

CASE
            WHEN WBXP014 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP014 AS STRING) 
 END as phase_array_data_point_014, 

CASE
            WHEN WBXP015 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP015 AS STRING) 
 END as phase_array_data_point_015, 

CASE
            WHEN WBXP016 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP016 AS STRING) 
 END as phase_array_data_point_016, 

CASE
            WHEN WBXP017 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP017 AS STRING) 
 END as phase_array_data_point_017, 

CASE
            WHEN WBXP018 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP018 AS STRING) 
 END as phase_array_data_point_018, 

CASE
            WHEN WBXP019 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP019 AS STRING) 
 END as phase_array_data_point_019, 

CASE
            WHEN WBXP020 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP020 AS STRING) 
 END as phase_array_data_point_020, 

CASE
            WHEN WBXP021 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP021 AS STRING) 
 END as phase_array_data_point_021, 

CASE
            WHEN WBXP022 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP022 AS STRING) 
 END as phase_array_data_point_022, 

CASE
            WHEN WBXP023 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP023 AS STRING) 
 END as phase_array_data_point_023, 

CASE
            WHEN WBXP024 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP024 AS STRING) 
 END as phase_array_data_point_024, 

CASE
            WHEN WBXP025 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP025 AS STRING) 
 END as phase_array_data_point_025, 

CASE
            WHEN WBXP026 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP026 AS STRING) 
 END as phase_array_data_point_026, 

CASE
            WHEN WBXP027 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP027 AS STRING) 
 END as phase_array_data_point_027, 

CASE
            WHEN WBXP028 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP028 AS STRING) 
 END as phase_array_data_point_028, 

CASE
            WHEN WBXP029 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP029 AS STRING) 
 END as phase_array_data_point_029, 

CASE
            WHEN WBXP030 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP030 AS STRING) 
 END as phase_array_data_point_030, 

CASE
            WHEN WBXP031 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP031 AS STRING) 
 END as phase_array_data_point_031, 

CASE
            WHEN WBXP032 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP032 AS STRING) 
 END as phase_array_data_point_032, 

CASE
            WHEN WBXP033 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP033 AS STRING) 
 END as phase_array_data_point_033, 

CASE
            WHEN WBXP034 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP034 AS STRING) 
 END as phase_array_data_point_034, 

CASE
            WHEN WBXP035 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP035 AS STRING) 
 END as phase_array_data_point_035, 

CASE
            WHEN WBXP036 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP036 AS STRING) 
 END as phase_array_data_point_036, 

CASE
            WHEN WBXP037 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP037 AS STRING) 
 END as phase_array_data_point_037, 

CASE
            WHEN WBXP038 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP038 AS STRING) 
 END as phase_array_data_point_038, 

CASE
            WHEN WBXP039 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP039 AS STRING) 
 END as phase_array_data_point_039, 

CASE
            WHEN WBXP040 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP040 AS STRING) 
 END as phase_array_data_point_040, 

CASE
            WHEN WBXP041 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP041 AS STRING) 
 END as phase_array_data_point_041, 

CASE
            WHEN WBXP042 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP042 AS STRING) 
 END as phase_array_data_point_042, 

CASE
            WHEN WBXP043 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP043 AS STRING) 
 END as phase_array_data_point_043, 

CASE
            WHEN WBXP044 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP044 AS STRING) 
 END as phase_array_data_point_044, 

CASE
            WHEN WBXP045 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP045 AS STRING) 
 END as phase_array_data_point_045, 

CASE
            WHEN WBXP046 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP046 AS STRING) 
 END as phase_array_data_point_046, 

CASE
            WHEN WBXP047 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP047 AS STRING) 
 END as phase_array_data_point_047, 

CASE
            WHEN WBXP048 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP048 AS STRING) 
 END as phase_array_data_point_048, 

CASE
            WHEN WBXP049 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP049 AS STRING) 
 END as phase_array_data_point_049, 

CASE
            WHEN WBXP050 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP050 AS STRING) 
 END as phase_array_data_point_050, 

CASE
            WHEN WBXP051 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP051 AS STRING) 
 END as phase_array_data_point_051, 

CASE
            WHEN WBXP052 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP052 AS STRING) 
 END as phase_array_data_point_052, 

CASE
            WHEN WBXP053 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP053 AS STRING) 
 END as phase_array_data_point_053, 

CASE
            WHEN WBXP054 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP054 AS STRING) 
 END as phase_array_data_point_054, 

CASE
            WHEN WBXP055 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP055 AS STRING) 
 END as phase_array_data_point_055, 

CASE
            WHEN WBXP056 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP056 AS STRING) 
 END as phase_array_data_point_056, 

CASE
            WHEN WBXP057 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP057 AS STRING) 
 END as phase_array_data_point_057, 

CASE
            WHEN WBXP058 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP058 AS STRING) 
 END as phase_array_data_point_058, 

CASE
            WHEN WBXP059 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP059 AS STRING) 
 END as phase_array_data_point_059, 

CASE
            WHEN WBXP060 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP060 AS STRING) 
 END as phase_array_data_point_060, 

CASE
            WHEN WBXP061 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP061 AS STRING) 
 END as phase_array_data_point_061, 

CASE
            WHEN WBXP062 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP062 AS STRING) 
 END as phase_array_data_point_062, 

CASE
            WHEN WBXP063 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP063 AS STRING) 
 END as phase_array_data_point_063, 

CASE
            WHEN WBXP064 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP064 AS STRING) 
 END as phase_array_data_point_064, 

CASE
            WHEN WBXP065 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP065 AS STRING) 
 END as phase_array_data_point_065, 

CASE
            WHEN WBXP066 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP066 AS STRING) 
 END as phase_array_data_point_066, 

CASE
            WHEN WBXP067 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP067 AS STRING) 
 END as phase_array_data_point_067, 

CASE
            WHEN WBXP068 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP068 AS STRING) 
 END as phase_array_data_point_068, 

CASE
            WHEN WBXP069 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP069 AS STRING) 
 END as phase_array_data_point_069, 

CASE
            WHEN WBXP070 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP070 AS STRING) 
 END as phase_array_data_point_070, 

CASE
            WHEN WBXP071 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP071 AS STRING) 
 END as phase_array_data_point_071, 

CASE
            WHEN WBXP072 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP072 AS STRING) 
 END as phase_array_data_point_072, 

CASE
            WHEN WBXP073 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP073 AS STRING) 
 END as phase_array_data_point_073, 

CASE
            WHEN WBXP074 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP074 AS STRING) 
 END as phase_array_data_point_074, 

CASE
            WHEN WBXP075 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP075 AS STRING) 
 END as phase_array_data_point_075, 

CASE
            WHEN WBXP076 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP076 AS STRING) 
 END as phase_array_data_point_076, 

CASE
            WHEN WBXP077 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP077 AS STRING) 
 END as phase_array_data_point_077, 

CASE
            WHEN WBXP078 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP078 AS STRING) 
 END as phase_array_data_point_078, 

CASE
            WHEN WBXP079 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP079 AS STRING) 
 END as phase_array_data_point_079, 

CASE
            WHEN WBXP080 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP080 AS STRING) 
 END as phase_array_data_point_080, 

CASE
            WHEN WBXP081 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP081 AS STRING) 
 END as phase_array_data_point_081, 

CASE
            WHEN WBXP082 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP082 AS STRING) 
 END as phase_array_data_point_082, 

CASE
            WHEN WBXP083 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP083 AS STRING) 
 END as phase_array_data_point_083, 

CASE
            WHEN WBXP084 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP084 AS STRING) 
 END as phase_array_data_point_084, 

CASE
            WHEN WBXP085 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP085 AS STRING) 
 END as phase_array_data_point_085, 

CASE
            WHEN WBXP086 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP086 AS STRING) 
 END as phase_array_data_point_086, 

CASE
            WHEN WBXP087 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP087 AS STRING) 
 END as phase_array_data_point_087, 

CASE
            WHEN WBXP088 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP088 AS STRING) 
 END as phase_array_data_point_088, 

CASE
            WHEN WBXP089 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP089 AS STRING) 
 END as phase_array_data_point_089, 

CASE
            WHEN WBXP090 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP090 AS STRING) 
 END as phase_array_data_point_090, 

CASE
            WHEN WBXP091 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP091 AS STRING) 
 END as phase_array_data_point_091, 

CASE
            WHEN WBXP092 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP092 AS STRING) 
 END as phase_array_data_point_092, 

CASE
            WHEN WBXP093 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP093 AS STRING) 
 END as phase_array_data_point_093, 

CASE
            WHEN WBXP094 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP094 AS STRING) 
 END as phase_array_data_point_094, 

CASE
            WHEN WBXP095 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP095 AS STRING) 
 END as phase_array_data_point_095, 

CASE
            WHEN WBXP096 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP096 AS STRING) 
 END as phase_array_data_point_096, 

CASE
            WHEN WBXP097 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP097 AS STRING) 
 END as phase_array_data_point_097, 

CASE
            WHEN WBXP098 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP098 AS STRING) 
 END as phase_array_data_point_098, 

CASE
            WHEN WBXP099 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP099 AS STRING) 
 END as phase_array_data_point_099, 

CASE
            WHEN WBXP100 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP100 AS STRING) 
 END as phase_array_data_point_100, 

CASE
            WHEN WBXP101 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP101 AS STRING) 
 END as phase_array_data_point_101, 

CASE
            WHEN WBXP102 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP102 AS STRING) 
 END as phase_array_data_point_102, 

CASE
            WHEN WBXP103 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP103 AS STRING) 
 END as phase_array_data_point_103, 

CASE
            WHEN WBXP104 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP104 AS STRING) 
 END as phase_array_data_point_104, 

CASE
            WHEN WBXP105 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP105 AS STRING) 
 END as phase_array_data_point_105, 

CASE
            WHEN WBXP106 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP106 AS STRING) 
 END as phase_array_data_point_106, 

CASE
            WHEN WBXP107 IS NULL THEN NULL 
ELSE SAFE_CAST(WBXP107 AS STRING) 
 END as phase_array_data_point_107, 

 FROM {{ ref('stg_audiometry_wideband_reflectance_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUXWBR_J.htm
        