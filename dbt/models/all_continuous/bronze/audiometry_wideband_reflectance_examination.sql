SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN WBXFEAR = 1 THEN 'Right Ear' -- categorize numeric values
WHEN WBXFEAR = 2 THEN 'Left Ear' -- categorize numeric values
WHEN WBXFEAR IS NULL THEN NULL 
ELSE WBXFEAR 
 END as ear_tested, 

CASE
            WHEN WBXF001 IS NULL THEN NULL 
ELSE WBXF001 
 END as frequency_array_data_point_001, 

CASE
            WHEN WBXF002 IS NULL THEN NULL 
ELSE WBXF002 
 END as frequency_array_data_point_002, 

CASE
            WHEN WBXF003 IS NULL THEN NULL 
ELSE WBXF003 
 END as frequency_array_data_point_003, 

CASE
            WHEN WBXF004 IS NULL THEN NULL 
ELSE WBXF004 
 END as frequency_array_data_point_004, 

CASE
            WHEN WBXF005 IS NULL THEN NULL 
ELSE WBXF005 
 END as frequency_array_data_point_005, 

CASE
            WHEN WBXF006 IS NULL THEN NULL 
ELSE WBXF006 
 END as frequency_array_data_point_006, 

CASE
            WHEN WBXF007 IS NULL THEN NULL 
ELSE WBXF007 
 END as frequency_array_data_point_007, 

CASE
            WHEN WBXF008 IS NULL THEN NULL 
ELSE WBXF008 
 END as frequency_array_data_point_008, 

CASE
            WHEN WBXF009 IS NULL THEN NULL 
ELSE WBXF009 
 END as frequency_array_data_point_009, 

CASE
            WHEN WBXF010 IS NULL THEN NULL 
ELSE WBXF010 
 END as frequency_array_data_point_010, 

CASE
            WHEN WBXF011 IS NULL THEN NULL 
ELSE WBXF011 
 END as frequency_array_data_point_011, 

CASE
            WHEN WBXF012 IS NULL THEN NULL 
ELSE WBXF012 
 END as frequency_array_data_point_012, 

CASE
            WHEN WBXF013 IS NULL THEN NULL 
ELSE WBXF013 
 END as frequency_array_data_point_013, 

CASE
            WHEN WBXF014 IS NULL THEN NULL 
ELSE WBXF014 
 END as frequency_array_data_point_014, 

CASE
            WHEN WBXF015 IS NULL THEN NULL 
ELSE WBXF015 
 END as frequency_array_data_point_015, 

CASE
            WHEN WBXF016 IS NULL THEN NULL 
ELSE WBXF016 
 END as frequency_array_data_point_016, 

CASE
            WHEN WBXF017 IS NULL THEN NULL 
ELSE WBXF017 
 END as frequency_array_data_point_017, 

CASE
            WHEN WBXF018 IS NULL THEN NULL 
ELSE WBXF018 
 END as frequency_array_data_point_018, 

CASE
            WHEN WBXF019 IS NULL THEN NULL 
ELSE WBXF019 
 END as frequency_array_data_point_019, 

CASE
            WHEN WBXF020 IS NULL THEN NULL 
ELSE WBXF020 
 END as frequency_array_data_point_020, 

CASE
            WHEN WBXF021 IS NULL THEN NULL 
ELSE WBXF021 
 END as frequency_array_data_point_021, 

CASE
            WHEN WBXF022 IS NULL THEN NULL 
ELSE WBXF022 
 END as frequency_array_data_point_022, 

CASE
            WHEN WBXF023 IS NULL THEN NULL 
ELSE WBXF023 
 END as frequency_array_data_point_023, 

CASE
            WHEN WBXF024 IS NULL THEN NULL 
ELSE WBXF024 
 END as frequency_array_data_point_024, 

CASE
            WHEN WBXF025 IS NULL THEN NULL 
ELSE WBXF025 
 END as frequency_array_data_point_025, 

CASE
            WHEN WBXF026 IS NULL THEN NULL 
ELSE WBXF026 
 END as frequency_array_data_point_026, 

CASE
            WHEN WBXF027 IS NULL THEN NULL 
ELSE WBXF027 
 END as frequency_array_data_point_027, 

CASE
            WHEN WBXF028 IS NULL THEN NULL 
ELSE WBXF028 
 END as frequency_array_data_point_028, 

CASE
            WHEN WBXF029 IS NULL THEN NULL 
ELSE WBXF029 
 END as frequency_array_data_point_029, 

CASE
            WHEN WBXF030 IS NULL THEN NULL 
ELSE WBXF030 
 END as frequency_array_data_point_030, 

CASE
            WHEN WBXF031 IS NULL THEN NULL 
ELSE WBXF031 
 END as frequency_array_data_point_031, 

CASE
            WHEN WBXF032 IS NULL THEN NULL 
ELSE WBXF032 
 END as frequency_array_data_point_032, 

CASE
            WHEN WBXF033 IS NULL THEN NULL 
ELSE WBXF033 
 END as frequency_array_data_point_033, 

CASE
            WHEN WBXF034 IS NULL THEN NULL 
ELSE WBXF034 
 END as frequency_array_data_point_034, 

CASE
            WHEN WBXF035 IS NULL THEN NULL 
ELSE WBXF035 
 END as frequency_array_data_point_035, 

CASE
            WHEN WBXF036 IS NULL THEN NULL 
ELSE WBXF036 
 END as frequency_array_data_point_036, 

CASE
            WHEN WBXF037 IS NULL THEN NULL 
ELSE WBXF037 
 END as frequency_array_data_point_037, 

CASE
            WHEN WBXF038 IS NULL THEN NULL 
ELSE WBXF038 
 END as frequency_array_data_point_038, 

CASE
            WHEN WBXF039 IS NULL THEN NULL 
ELSE WBXF039 
 END as frequency_array_data_point_039, 

CASE
            WHEN WBXF040 IS NULL THEN NULL 
ELSE WBXF040 
 END as frequency_array_data_point_040, 

CASE
            WHEN WBXF041 IS NULL THEN NULL 
ELSE WBXF041 
 END as frequency_array_data_point_041, 

CASE
            WHEN WBXF042 IS NULL THEN NULL 
ELSE WBXF042 
 END as frequency_array_data_point_042, 

CASE
            WHEN WBXF043 IS NULL THEN NULL 
ELSE WBXF043 
 END as frequency_array_data_point_043, 

CASE
            WHEN WBXF044 IS NULL THEN NULL 
ELSE WBXF044 
 END as frequency_array_data_point_044, 

CASE
            WHEN WBXF045 IS NULL THEN NULL 
ELSE WBXF045 
 END as frequency_array_data_point_045, 

CASE
            WHEN WBXF046 IS NULL THEN NULL 
ELSE WBXF046 
 END as frequency_array_data_point_046, 

CASE
            WHEN WBXF047 IS NULL THEN NULL 
ELSE WBXF047 
 END as frequency_array_data_point_047, 

CASE
            WHEN WBXF048 IS NULL THEN NULL 
ELSE WBXF048 
 END as frequency_array_data_point_048, 

CASE
            WHEN WBXF049 IS NULL THEN NULL 
ELSE WBXF049 
 END as frequency_array_data_point_049, 

CASE
            WHEN WBXF050 IS NULL THEN NULL 
ELSE WBXF050 
 END as frequency_array_data_point_050, 

CASE
            WHEN WBXF051 IS NULL THEN NULL 
ELSE WBXF051 
 END as frequency_array_data_point_051, 

CASE
            WHEN WBXF052 IS NULL THEN NULL 
ELSE WBXF052 
 END as frequency_array_data_point_052, 

CASE
            WHEN WBXF053 IS NULL THEN NULL 
ELSE WBXF053 
 END as frequency_array_data_point_053, 

CASE
            WHEN WBXF054 IS NULL THEN NULL 
ELSE WBXF054 
 END as frequency_array_data_point_054, 

CASE
            WHEN WBXF055 IS NULL THEN NULL 
ELSE WBXF055 
 END as frequency_array_data_point_055, 

CASE
            WHEN WBXF056 IS NULL THEN NULL 
ELSE WBXF056 
 END as frequency_array_data_point_056, 

CASE
            WHEN WBXF057 IS NULL THEN NULL 
ELSE WBXF057 
 END as frequency_array_data_point_057, 

CASE
            WHEN WBXF058 IS NULL THEN NULL 
ELSE WBXF058 
 END as frequency_array_data_point_058, 

CASE
            WHEN WBXF059 IS NULL THEN NULL 
ELSE WBXF059 
 END as frequency_array_data_point_059, 

CASE
            WHEN WBXF060 IS NULL THEN NULL 
ELSE WBXF060 
 END as frequency_array_data_point_060, 

CASE
            WHEN WBXF061 IS NULL THEN NULL 
ELSE WBXF061 
 END as frequency_array_data_point_061, 

CASE
            WHEN WBXF062 IS NULL THEN NULL 
ELSE WBXF062 
 END as frequency_array_data_point_062, 

CASE
            WHEN WBXF063 IS NULL THEN NULL 
ELSE WBXF063 
 END as frequency_array_data_point_063, 

CASE
            WHEN WBXF064 IS NULL THEN NULL 
ELSE WBXF064 
 END as frequency_array_data_point_064, 

CASE
            WHEN WBXF065 IS NULL THEN NULL 
ELSE WBXF065 
 END as frequency_array_data_point_065, 

CASE
            WHEN WBXF066 IS NULL THEN NULL 
ELSE WBXF066 
 END as frequency_array_data_point_066, 

CASE
            WHEN WBXF067 IS NULL THEN NULL 
ELSE WBXF067 
 END as frequency_array_data_point_067, 

CASE
            WHEN WBXF068 IS NULL THEN NULL 
ELSE WBXF068 
 END as frequency_array_data_point_068, 

CASE
            WHEN WBXF069 IS NULL THEN NULL 
ELSE WBXF069 
 END as frequency_array_data_point_069, 

CASE
            WHEN WBXF070 IS NULL THEN NULL 
ELSE WBXF070 
 END as frequency_array_data_point_070, 

CASE
            WHEN WBXF071 IS NULL THEN NULL 
ELSE WBXF071 
 END as frequency_array_data_point_071, 

CASE
            WHEN WBXF072 IS NULL THEN NULL 
ELSE WBXF072 
 END as frequency_array_data_point_072, 

CASE
            WHEN WBXF073 IS NULL THEN NULL 
ELSE WBXF073 
 END as frequency_array_data_point_073, 

CASE
            WHEN WBXF074 IS NULL THEN NULL 
ELSE WBXF074 
 END as frequency_array_data_point_074, 

CASE
            WHEN WBXF075 IS NULL THEN NULL 
ELSE WBXF075 
 END as frequency_array_data_point_075, 

CASE
            WHEN WBXF076 IS NULL THEN NULL 
ELSE WBXF076 
 END as frequency_array_data_point_076, 

CASE
            WHEN WBXF077 IS NULL THEN NULL 
ELSE WBXF077 
 END as frequency_array_data_point_077, 

CASE
            WHEN WBXF078 IS NULL THEN NULL 
ELSE WBXF078 
 END as frequency_array_data_point_078, 

CASE
            WHEN WBXF079 IS NULL THEN NULL 
ELSE WBXF079 
 END as frequency_array_data_point_079, 

CASE
            WHEN WBXF080 IS NULL THEN NULL 
ELSE WBXF080 
 END as frequency_array_data_point_080, 

CASE
            WHEN WBXF081 IS NULL THEN NULL 
ELSE WBXF081 
 END as frequency_array_data_point_081, 

CASE
            WHEN WBXF082 IS NULL THEN NULL 
ELSE WBXF082 
 END as frequency_array_data_point_082, 

CASE
            WHEN WBXF083 IS NULL THEN NULL 
ELSE WBXF083 
 END as frequency_array_data_point_083, 

CASE
            WHEN WBXF084 IS NULL THEN NULL 
ELSE WBXF084 
 END as frequency_array_data_point_084, 

CASE
            WHEN WBXF085 IS NULL THEN NULL 
ELSE WBXF085 
 END as frequency_array_data_point_085, 

CASE
            WHEN WBXF086 IS NULL THEN NULL 
ELSE WBXF086 
 END as frequency_array_data_point_086, 

CASE
            WHEN WBXF087 IS NULL THEN NULL 
ELSE WBXF087 
 END as frequency_array_data_point_087, 

CASE
            WHEN WBXF088 IS NULL THEN NULL 
ELSE WBXF088 
 END as frequency_array_data_point_088, 

CASE
            WHEN WBXF089 IS NULL THEN NULL 
ELSE WBXF089 
 END as frequency_array_data_point_089, 

CASE
            WHEN WBXF090 IS NULL THEN NULL 
ELSE WBXF090 
 END as frequency_array_data_point_090, 

CASE
            WHEN WBXF091 IS NULL THEN NULL 
ELSE WBXF091 
 END as frequency_array_data_point_091, 

CASE
            WHEN WBXF092 IS NULL THEN NULL 
ELSE WBXF092 
 END as frequency_array_data_point_092, 

CASE
            WHEN WBXF093 IS NULL THEN NULL 
ELSE WBXF093 
 END as frequency_array_data_point_093, 

CASE
            WHEN WBXF094 IS NULL THEN NULL 
ELSE WBXF094 
 END as frequency_array_data_point_094, 

CASE
            WHEN WBXF095 IS NULL THEN NULL 
ELSE WBXF095 
 END as frequency_array_data_point_095, 

CASE
            WHEN WBXF096 IS NULL THEN NULL 
ELSE WBXF096 
 END as frequency_array_data_point_096, 

CASE
            WHEN WBXF097 IS NULL THEN NULL 
ELSE WBXF097 
 END as frequency_array_data_point_097, 

CASE
            WHEN WBXF098 IS NULL THEN NULL 
ELSE WBXF098 
 END as frequency_array_data_point_098, 

CASE
            WHEN WBXF099 IS NULL THEN NULL 
ELSE WBXF099 
 END as frequency_array_data_point_099, 

CASE
            WHEN WBXF100 IS NULL THEN NULL 
ELSE WBXF100 
 END as frequency_array_data_point_100, 

CASE
            WHEN WBXF101 IS NULL THEN NULL 
ELSE WBXF101 
 END as frequency_array_data_point_101, 

CASE
            WHEN WBXF102 IS NULL THEN NULL 
ELSE WBXF102 
 END as frequency_array_data_point_102, 

CASE
            WHEN WBXF103 IS NULL THEN NULL 
ELSE WBXF103 
 END as frequency_array_data_point_103, 

CASE
            WHEN WBXF104 IS NULL THEN NULL 
ELSE WBXF104 
 END as frequency_array_data_point_104, 

CASE
            WHEN WBXF105 IS NULL THEN NULL 
ELSE WBXF105 
 END as frequency_array_data_point_105, 

CASE
            WHEN WBXF106 IS NULL THEN NULL 
ELSE WBXF106 
 END as frequency_array_data_point_106, 

CASE
            WHEN WBXF107 IS NULL THEN NULL 
ELSE WBXF107 
 END as frequency_array_data_point_107, 

CASE
            WHEN WBXA001 IS NULL THEN NULL 
ELSE WBXA001 
 END as absorbance_array_data_point_001, 

CASE
            WHEN WBXA002 IS NULL THEN NULL 
ELSE WBXA002 
 END as absorbance_array_data_point_002, 

CASE
            WHEN WBXA003 IS NULL THEN NULL 
ELSE WBXA003 
 END as absorbance_array_data_point_003, 

CASE
            WHEN WBXA004 IS NULL THEN NULL 
ELSE WBXA004 
 END as absorbance_array_data_point_004, 

CASE
            WHEN WBXA005 IS NULL THEN NULL 
ELSE WBXA005 
 END as absorbance_array_data_point_005, 

CASE
            WHEN WBXA006 IS NULL THEN NULL 
ELSE WBXA006 
 END as absorbance_array_data_point_006, 

CASE
            WHEN WBXA007 IS NULL THEN NULL 
ELSE WBXA007 
 END as absorbance_array_data_point_007, 

CASE
            WHEN WBXA008 IS NULL THEN NULL 
ELSE WBXA008 
 END as absorbance_array_data_point_008, 

CASE
            WHEN WBXA009 IS NULL THEN NULL 
ELSE WBXA009 
 END as absorbance_array_data_point_009, 

CASE
            WHEN WBXA010 IS NULL THEN NULL 
ELSE WBXA010 
 END as absorbance_array_data_point_010, 

CASE
            WHEN WBXA011 IS NULL THEN NULL 
ELSE WBXA011 
 END as absorbance_array_data_point_011, 

CASE
            WHEN WBXA012 IS NULL THEN NULL 
ELSE WBXA012 
 END as absorbance_array_data_point_012, 

CASE
            WHEN WBXA013 IS NULL THEN NULL 
ELSE WBXA013 
 END as absorbance_array_data_point_013, 

CASE
            WHEN WBXA014 IS NULL THEN NULL 
ELSE WBXA014 
 END as absorbance_array_data_point_014, 

CASE
            WHEN WBXA015 IS NULL THEN NULL 
ELSE WBXA015 
 END as absorbance_array_data_point_015, 

CASE
            WHEN WBXA016 IS NULL THEN NULL 
ELSE WBXA016 
 END as absorbance_array_data_point_016, 

CASE
            WHEN WBXA017 IS NULL THEN NULL 
ELSE WBXA017 
 END as absorbance_array_data_point_017, 

CASE
            WHEN WBXA018 IS NULL THEN NULL 
ELSE WBXA018 
 END as absorbance_array_data_point_018, 

CASE
            WHEN WBXA019 IS NULL THEN NULL 
ELSE WBXA019 
 END as absorbance_array_data_point_019, 

CASE
            WHEN WBXA020 IS NULL THEN NULL 
ELSE WBXA020 
 END as absorbance_array_data_point_020, 

CASE
            WHEN WBXA021 IS NULL THEN NULL 
ELSE WBXA021 
 END as absorbance_array_data_point_021, 

CASE
            WHEN WBXA022 IS NULL THEN NULL 
ELSE WBXA022 
 END as absorbance_array_data_point_022, 

CASE
            WHEN WBXA023 IS NULL THEN NULL 
ELSE WBXA023 
 END as absorbance_array_data_point_023, 

CASE
            WHEN WBXA024 IS NULL THEN NULL 
ELSE WBXA024 
 END as absorbance_array_data_point_024, 

CASE
            WHEN WBXA025 IS NULL THEN NULL 
ELSE WBXA025 
 END as absorbance_array_data_point_025, 

CASE
            WHEN WBXA026 IS NULL THEN NULL 
ELSE WBXA026 
 END as absorbance_array_data_point_026, 

CASE
            WHEN WBXA027 IS NULL THEN NULL 
ELSE WBXA027 
 END as absorbance_array_data_point_027, 

CASE
            WHEN WBXA028 IS NULL THEN NULL 
ELSE WBXA028 
 END as absorbance_array_data_point_028, 

CASE
            WHEN WBXA029 IS NULL THEN NULL 
ELSE WBXA029 
 END as absorbance_array_data_point_029, 

CASE
            WHEN WBXA030 IS NULL THEN NULL 
ELSE WBXA030 
 END as absorbance_array_data_point_030, 

CASE
            WHEN WBXA031 IS NULL THEN NULL 
ELSE WBXA031 
 END as absorbance_array_data_point_031, 

CASE
            WHEN WBXA032 IS NULL THEN NULL 
ELSE WBXA032 
 END as absorbance_array_data_point_032, 

CASE
            WHEN WBXA033 IS NULL THEN NULL 
ELSE WBXA033 
 END as absorbance_array_data_point_033, 

CASE
            WHEN WBXA034 IS NULL THEN NULL 
ELSE WBXA034 
 END as absorbance_array_data_point_034, 

CASE
            WHEN WBXA035 IS NULL THEN NULL 
ELSE WBXA035 
 END as absorbance_array_data_point_035, 

CASE
            WHEN WBXA036 IS NULL THEN NULL 
ELSE WBXA036 
 END as absorbance_array_data_point_036, 

CASE
            WHEN WBXA037 IS NULL THEN NULL 
ELSE WBXA037 
 END as absorbance_array_data_point_037, 

CASE
            WHEN WBXA038 IS NULL THEN NULL 
ELSE WBXA038 
 END as absorbance_array_data_point_038, 

CASE
            WHEN WBXA039 IS NULL THEN NULL 
ELSE WBXA039 
 END as absorbance_array_data_point_039, 

CASE
            WHEN WBXA040 IS NULL THEN NULL 
ELSE WBXA040 
 END as absorbance_array_data_point_040, 

CASE
            WHEN WBXA041 IS NULL THEN NULL 
ELSE WBXA041 
 END as absorbance_array_data_point_041, 

CASE
            WHEN WBXA042 IS NULL THEN NULL 
ELSE WBXA042 
 END as absorbance_array_data_point_042, 

CASE
            WHEN WBXA043 IS NULL THEN NULL 
ELSE WBXA043 
 END as absorbance_array_data_point_043, 

CASE
            WHEN WBXA044 IS NULL THEN NULL 
ELSE WBXA044 
 END as absorbance_array_data_point_044, 

CASE
            WHEN WBXA045 IS NULL THEN NULL 
ELSE WBXA045 
 END as absorbance_array_data_point_045, 

CASE
            WHEN WBXA046 IS NULL THEN NULL 
ELSE WBXA046 
 END as absorbance_array_data_point_046, 

CASE
            WHEN WBXA047 IS NULL THEN NULL 
ELSE WBXA047 
 END as absorbance_array_data_point_047, 

CASE
            WHEN WBXA048 IS NULL THEN NULL 
ELSE WBXA048 
 END as absorbance_array_data_point_048, 

CASE
            WHEN WBXA049 IS NULL THEN NULL 
ELSE WBXA049 
 END as absorbance_array_data_point_049, 

CASE
            WHEN WBXA050 IS NULL THEN NULL 
ELSE WBXA050 
 END as absorbance_array_data_point_050, 

CASE
            WHEN WBXA051 IS NULL THEN NULL 
ELSE WBXA051 
 END as absorbance_array_data_point_051, 

CASE
            WHEN WBXA052 IS NULL THEN NULL 
ELSE WBXA052 
 END as absorbance_array_data_point_052, 

CASE
            WHEN WBXA053 IS NULL THEN NULL 
ELSE WBXA053 
 END as absorbance_array_data_point_053, 

CASE
            WHEN WBXA054 IS NULL THEN NULL 
ELSE WBXA054 
 END as absorbance_array_data_point_054, 

CASE
            WHEN WBXA055 IS NULL THEN NULL 
ELSE WBXA055 
 END as absorbance_array_data_point_055, 

CASE
            WHEN WBXA056 IS NULL THEN NULL 
ELSE WBXA056 
 END as absorbance_array_data_point_056, 

CASE
            WHEN WBXA057 IS NULL THEN NULL 
ELSE WBXA057 
 END as absorbance_array_data_point_057, 

CASE
            WHEN WBXA058 IS NULL THEN NULL 
ELSE WBXA058 
 END as absorbance_array_data_point_058, 

CASE
            WHEN WBXA059 IS NULL THEN NULL 
ELSE WBXA059 
 END as absorbance_array_data_point_059, 

CASE
            WHEN WBXA060 IS NULL THEN NULL 
ELSE WBXA060 
 END as absorbance_array_data_point_060, 

CASE
            WHEN WBXA061 IS NULL THEN NULL 
ELSE WBXA061 
 END as absorbance_array_data_point_061, 

CASE
            WHEN WBXA062 IS NULL THEN NULL 
ELSE WBXA062 
 END as absorbance_array_data_point_062, 

CASE
            WHEN WBXA063 IS NULL THEN NULL 
ELSE WBXA063 
 END as absorbance_array_data_point_063, 

CASE
            WHEN WBXA064 IS NULL THEN NULL 
ELSE WBXA064 
 END as absorbance_array_data_point_064, 

CASE
            WHEN WBXA065 IS NULL THEN NULL 
ELSE WBXA065 
 END as absorbance_array_data_point_065, 

CASE
            WHEN WBXA066 IS NULL THEN NULL 
ELSE WBXA066 
 END as absorbance_array_data_point_066, 

CASE
            WHEN WBXA067 IS NULL THEN NULL 
ELSE WBXA067 
 END as absorbance_array_data_point_067, 

CASE
            WHEN WBXA068 IS NULL THEN NULL 
ELSE WBXA068 
 END as absorbance_array_data_point_068, 

CASE
            WHEN WBXA069 IS NULL THEN NULL 
ELSE WBXA069 
 END as absorbance_array_data_point_069, 

CASE
            WHEN WBXA070 IS NULL THEN NULL 
ELSE WBXA070 
 END as absorbance_array_data_point_070, 

CASE
            WHEN WBXA071 IS NULL THEN NULL 
ELSE WBXA071 
 END as absorbance_array_data_point_071, 

CASE
            WHEN WBXA072 IS NULL THEN NULL 
ELSE WBXA072 
 END as absorbance_array_data_point_072, 

CASE
            WHEN WBXA073 IS NULL THEN NULL 
ELSE WBXA073 
 END as absorbance_array_data_point_073, 

CASE
            WHEN WBXA074 IS NULL THEN NULL 
ELSE WBXA074 
 END as absorbance_array_data_point_074, 

CASE
            WHEN WBXA075 IS NULL THEN NULL 
ELSE WBXA075 
 END as absorbance_array_data_point_075, 

CASE
            WHEN WBXA076 IS NULL THEN NULL 
ELSE WBXA076 
 END as absorbance_array_data_point_076, 

CASE
            WHEN WBXA077 IS NULL THEN NULL 
ELSE WBXA077 
 END as absorbance_array_data_point_077, 

CASE
            WHEN WBXA078 IS NULL THEN NULL 
ELSE WBXA078 
 END as absorbance_array_data_point_078, 

CASE
            WHEN WBXA079 IS NULL THEN NULL 
ELSE WBXA079 
 END as absorbance_array_data_point_079, 

CASE
            WHEN WBXA080 IS NULL THEN NULL 
ELSE WBXA080 
 END as absorbance_array_data_point_080, 

CASE
            WHEN WBXA081 IS NULL THEN NULL 
ELSE WBXA081 
 END as absorbance_array_data_point_081, 

CASE
            WHEN WBXA082 IS NULL THEN NULL 
ELSE WBXA082 
 END as absorbance_array_data_point_082, 

CASE
            WHEN WBXA083 IS NULL THEN NULL 
ELSE WBXA083 
 END as absorbance_array_data_point_083, 

CASE
            WHEN WBXA084 IS NULL THEN NULL 
ELSE WBXA084 
 END as absorbance_array_data_point_084, 

CASE
            WHEN WBXA085 IS NULL THEN NULL 
ELSE WBXA085 
 END as absorbance_array_data_point_085, 

CASE
            WHEN WBXA086 IS NULL THEN NULL 
ELSE WBXA086 
 END as absorbance_array_data_point_086, 

CASE
            WHEN WBXA087 IS NULL THEN NULL 
ELSE WBXA087 
 END as absorbance_array_data_point_087, 

CASE
            WHEN WBXA088 IS NULL THEN NULL 
ELSE WBXA088 
 END as absorbance_array_data_point_088, 

CASE
            WHEN WBXA089 IS NULL THEN NULL 
ELSE WBXA089 
 END as absorbance_array_data_point_089, 

CASE
            WHEN WBXA090 IS NULL THEN NULL 
ELSE WBXA090 
 END as absorbance_array_data_point_090, 

CASE
            WHEN WBXA091 IS NULL THEN NULL 
ELSE WBXA091 
 END as absorbance_array_data_point_091, 

CASE
            WHEN WBXA092 IS NULL THEN NULL 
ELSE WBXA092 
 END as absorbance_array_data_point_092, 

CASE
            WHEN WBXA093 IS NULL THEN NULL 
ELSE WBXA093 
 END as absorbance_array_data_point_093, 

CASE
            WHEN WBXA094 IS NULL THEN NULL 
ELSE WBXA094 
 END as absorbance_array_data_point_094, 

CASE
            WHEN WBXA095 IS NULL THEN NULL 
ELSE WBXA095 
 END as absorbance_array_data_point_095, 

CASE
            WHEN WBXA096 IS NULL THEN NULL 
ELSE WBXA096 
 END as absorbance_array_data_point_096, 

CASE
            WHEN WBXA097 IS NULL THEN NULL 
ELSE WBXA097 
 END as absorbance_array_data_point_097, 

CASE
            WHEN WBXA098 IS NULL THEN NULL 
ELSE WBXA098 
 END as absorbance_array_data_point_098, 

CASE
            WHEN WBXA099 IS NULL THEN NULL 
ELSE WBXA099 
 END as absorbance_array_data_point_099, 

CASE
            WHEN WBXA100 IS NULL THEN NULL 
ELSE WBXA100 
 END as absorbance_array_data_point_100, 

CASE
            WHEN WBXA101 IS NULL THEN NULL 
ELSE WBXA101 
 END as absorbance_array_data_point_101, 

CASE
            WHEN WBXA102 IS NULL THEN NULL 
ELSE WBXA102 
 END as absorbance_array_data_point_102, 

CASE
            WHEN WBXA103 IS NULL THEN NULL 
ELSE WBXA103 
 END as absorbance_array_data_point_103, 

CASE
            WHEN WBXA104 IS NULL THEN NULL 
ELSE WBXA104 
 END as absorbance_array_data_point_104, 

CASE
            WHEN WBXA105 IS NULL THEN NULL 
ELSE WBXA105 
 END as absorbance_array_data_point_105, 

CASE
            WHEN WBXA106 IS NULL THEN NULL 
ELSE WBXA106 
 END as absorbance_array_data_point_106, 

CASE
            WHEN WBXA107 IS NULL THEN NULL 
ELSE WBXA107 
 END as absorbance_array_data_point_107, 

CASE
            WHEN WBXP001 IS NULL THEN NULL 
ELSE WBXP001 
 END as phase_array_data_point_001, 

CASE
            WHEN WBXP002 IS NULL THEN NULL 
ELSE WBXP002 
 END as phase_array_data_point_002, 

CASE
            WHEN WBXP003 IS NULL THEN NULL 
ELSE WBXP003 
 END as phase_array_data_point_003, 

CASE
            WHEN WBXP004 IS NULL THEN NULL 
ELSE WBXP004 
 END as phase_array_data_point_004, 

CASE
            WHEN WBXP005 IS NULL THEN NULL 
ELSE WBXP005 
 END as phase_array_data_point_005, 

CASE
            WHEN WBXP006 IS NULL THEN NULL 
ELSE WBXP006 
 END as phase_array_data_point_006, 

CASE
            WHEN WBXP007 IS NULL THEN NULL 
ELSE WBXP007 
 END as phase_array_data_point_007, 

CASE
            WHEN WBXP008 IS NULL THEN NULL 
ELSE WBXP008 
 END as phase_array_data_point_008, 

CASE
            WHEN WBXP009 IS NULL THEN NULL 
ELSE WBXP009 
 END as phase_array_data_point_009, 

CASE
            WHEN WBXP010 IS NULL THEN NULL 
ELSE WBXP010 
 END as phase_array_data_point_010, 

CASE
            WHEN WBXP011 IS NULL THEN NULL 
ELSE WBXP011 
 END as phase_array_data_point_011, 

CASE
            WHEN WBXP012 IS NULL THEN NULL 
ELSE WBXP012 
 END as phase_array_data_point_012, 

CASE
            WHEN WBXP013 IS NULL THEN NULL 
ELSE WBXP013 
 END as phase_array_data_point_013, 

CASE
            WHEN WBXP014 IS NULL THEN NULL 
ELSE WBXP014 
 END as phase_array_data_point_014, 

CASE
            WHEN WBXP015 IS NULL THEN NULL 
ELSE WBXP015 
 END as phase_array_data_point_015, 

CASE
            WHEN WBXP016 IS NULL THEN NULL 
ELSE WBXP016 
 END as phase_array_data_point_016, 

CASE
            WHEN WBXP017 IS NULL THEN NULL 
ELSE WBXP017 
 END as phase_array_data_point_017, 

CASE
            WHEN WBXP018 IS NULL THEN NULL 
ELSE WBXP018 
 END as phase_array_data_point_018, 

CASE
            WHEN WBXP019 IS NULL THEN NULL 
ELSE WBXP019 
 END as phase_array_data_point_019, 

CASE
            WHEN WBXP020 IS NULL THEN NULL 
ELSE WBXP020 
 END as phase_array_data_point_020, 

CASE
            WHEN WBXP021 IS NULL THEN NULL 
ELSE WBXP021 
 END as phase_array_data_point_021, 

CASE
            WHEN WBXP022 IS NULL THEN NULL 
ELSE WBXP022 
 END as phase_array_data_point_022, 

CASE
            WHEN WBXP023 IS NULL THEN NULL 
ELSE WBXP023 
 END as phase_array_data_point_023, 

CASE
            WHEN WBXP024 IS NULL THEN NULL 
ELSE WBXP024 
 END as phase_array_data_point_024, 

CASE
            WHEN WBXP025 IS NULL THEN NULL 
ELSE WBXP025 
 END as phase_array_data_point_025, 

CASE
            WHEN WBXP026 IS NULL THEN NULL 
ELSE WBXP026 
 END as phase_array_data_point_026, 

CASE
            WHEN WBXP027 IS NULL THEN NULL 
ELSE WBXP027 
 END as phase_array_data_point_027, 

CASE
            WHEN WBXP028 IS NULL THEN NULL 
ELSE WBXP028 
 END as phase_array_data_point_028, 

CASE
            WHEN WBXP029 IS NULL THEN NULL 
ELSE WBXP029 
 END as phase_array_data_point_029, 

CASE
            WHEN WBXP030 IS NULL THEN NULL 
ELSE WBXP030 
 END as phase_array_data_point_030, 

CASE
            WHEN WBXP031 IS NULL THEN NULL 
ELSE WBXP031 
 END as phase_array_data_point_031, 

CASE
            WHEN WBXP032 IS NULL THEN NULL 
ELSE WBXP032 
 END as phase_array_data_point_032, 

CASE
            WHEN WBXP033 IS NULL THEN NULL 
ELSE WBXP033 
 END as phase_array_data_point_033, 

CASE
            WHEN WBXP034 IS NULL THEN NULL 
ELSE WBXP034 
 END as phase_array_data_point_034, 

CASE
            WHEN WBXP035 IS NULL THEN NULL 
ELSE WBXP035 
 END as phase_array_data_point_035, 

CASE
            WHEN WBXP036 IS NULL THEN NULL 
ELSE WBXP036 
 END as phase_array_data_point_036, 

CASE
            WHEN WBXP037 IS NULL THEN NULL 
ELSE WBXP037 
 END as phase_array_data_point_037, 

CASE
            WHEN WBXP038 IS NULL THEN NULL 
ELSE WBXP038 
 END as phase_array_data_point_038, 

CASE
            WHEN WBXP039 IS NULL THEN NULL 
ELSE WBXP039 
 END as phase_array_data_point_039, 

CASE
            WHEN WBXP040 IS NULL THEN NULL 
ELSE WBXP040 
 END as phase_array_data_point_040, 

CASE
            WHEN WBXP041 IS NULL THEN NULL 
ELSE WBXP041 
 END as phase_array_data_point_041, 

CASE
            WHEN WBXP042 IS NULL THEN NULL 
ELSE WBXP042 
 END as phase_array_data_point_042, 

CASE
            WHEN WBXP043 IS NULL THEN NULL 
ELSE WBXP043 
 END as phase_array_data_point_043, 

CASE
            WHEN WBXP044 IS NULL THEN NULL 
ELSE WBXP044 
 END as phase_array_data_point_044, 

CASE
            WHEN WBXP045 IS NULL THEN NULL 
ELSE WBXP045 
 END as phase_array_data_point_045, 

CASE
            WHEN WBXP046 IS NULL THEN NULL 
ELSE WBXP046 
 END as phase_array_data_point_046, 

CASE
            WHEN WBXP047 IS NULL THEN NULL 
ELSE WBXP047 
 END as phase_array_data_point_047, 

CASE
            WHEN WBXP048 IS NULL THEN NULL 
ELSE WBXP048 
 END as phase_array_data_point_048, 

CASE
            WHEN WBXP049 IS NULL THEN NULL 
ELSE WBXP049 
 END as phase_array_data_point_049, 

CASE
            WHEN WBXP050 IS NULL THEN NULL 
ELSE WBXP050 
 END as phase_array_data_point_050, 

CASE
            WHEN WBXP051 IS NULL THEN NULL 
ELSE WBXP051 
 END as phase_array_data_point_051, 

CASE
            WHEN WBXP052 IS NULL THEN NULL 
ELSE WBXP052 
 END as phase_array_data_point_052, 

CASE
            WHEN WBXP053 IS NULL THEN NULL 
ELSE WBXP053 
 END as phase_array_data_point_053, 

CASE
            WHEN WBXP054 IS NULL THEN NULL 
ELSE WBXP054 
 END as phase_array_data_point_054, 

CASE
            WHEN WBXP055 IS NULL THEN NULL 
ELSE WBXP055 
 END as phase_array_data_point_055, 

CASE
            WHEN WBXP056 IS NULL THEN NULL 
ELSE WBXP056 
 END as phase_array_data_point_056, 

CASE
            WHEN WBXP057 IS NULL THEN NULL 
ELSE WBXP057 
 END as phase_array_data_point_057, 

CASE
            WHEN WBXP058 IS NULL THEN NULL 
ELSE WBXP058 
 END as phase_array_data_point_058, 

CASE
            WHEN WBXP059 IS NULL THEN NULL 
ELSE WBXP059 
 END as phase_array_data_point_059, 

CASE
            WHEN WBXP060 IS NULL THEN NULL 
ELSE WBXP060 
 END as phase_array_data_point_060, 

CASE
            WHEN WBXP061 IS NULL THEN NULL 
ELSE WBXP061 
 END as phase_array_data_point_061, 

CASE
            WHEN WBXP062 IS NULL THEN NULL 
ELSE WBXP062 
 END as phase_array_data_point_062, 

CASE
            WHEN WBXP063 IS NULL THEN NULL 
ELSE WBXP063 
 END as phase_array_data_point_063, 

CASE
            WHEN WBXP064 IS NULL THEN NULL 
ELSE WBXP064 
 END as phase_array_data_point_064, 

CASE
            WHEN WBXP065 IS NULL THEN NULL 
ELSE WBXP065 
 END as phase_array_data_point_065, 

CASE
            WHEN WBXP066 IS NULL THEN NULL 
ELSE WBXP066 
 END as phase_array_data_point_066, 

CASE
            WHEN WBXP067 IS NULL THEN NULL 
ELSE WBXP067 
 END as phase_array_data_point_067, 

CASE
            WHEN WBXP068 IS NULL THEN NULL 
ELSE WBXP068 
 END as phase_array_data_point_068, 

CASE
            WHEN WBXP069 IS NULL THEN NULL 
ELSE WBXP069 
 END as phase_array_data_point_069, 

CASE
            WHEN WBXP070 IS NULL THEN NULL 
ELSE WBXP070 
 END as phase_array_data_point_070, 

CASE
            WHEN WBXP071 IS NULL THEN NULL 
ELSE WBXP071 
 END as phase_array_data_point_071, 

CASE
            WHEN WBXP072 IS NULL THEN NULL 
ELSE WBXP072 
 END as phase_array_data_point_072, 

CASE
            WHEN WBXP073 IS NULL THEN NULL 
ELSE WBXP073 
 END as phase_array_data_point_073, 

CASE
            WHEN WBXP074 IS NULL THEN NULL 
ELSE WBXP074 
 END as phase_array_data_point_074, 

CASE
            WHEN WBXP075 IS NULL THEN NULL 
ELSE WBXP075 
 END as phase_array_data_point_075, 

CASE
            WHEN WBXP076 IS NULL THEN NULL 
ELSE WBXP076 
 END as phase_array_data_point_076, 

CASE
            WHEN WBXP077 IS NULL THEN NULL 
ELSE WBXP077 
 END as phase_array_data_point_077, 

CASE
            WHEN WBXP078 IS NULL THEN NULL 
ELSE WBXP078 
 END as phase_array_data_point_078, 

CASE
            WHEN WBXP079 IS NULL THEN NULL 
ELSE WBXP079 
 END as phase_array_data_point_079, 

CASE
            WHEN WBXP080 IS NULL THEN NULL 
ELSE WBXP080 
 END as phase_array_data_point_080, 

CASE
            WHEN WBXP081 IS NULL THEN NULL 
ELSE WBXP081 
 END as phase_array_data_point_081, 

CASE
            WHEN WBXP082 IS NULL THEN NULL 
ELSE WBXP082 
 END as phase_array_data_point_082, 

CASE
            WHEN WBXP083 IS NULL THEN NULL 
ELSE WBXP083 
 END as phase_array_data_point_083, 

CASE
            WHEN WBXP084 IS NULL THEN NULL 
ELSE WBXP084 
 END as phase_array_data_point_084, 

CASE
            WHEN WBXP085 IS NULL THEN NULL 
ELSE WBXP085 
 END as phase_array_data_point_085, 

CASE
            WHEN WBXP086 IS NULL THEN NULL 
ELSE WBXP086 
 END as phase_array_data_point_086, 

CASE
            WHEN WBXP087 IS NULL THEN NULL 
ELSE WBXP087 
 END as phase_array_data_point_087, 

CASE
            WHEN WBXP088 IS NULL THEN NULL 
ELSE WBXP088 
 END as phase_array_data_point_088, 

CASE
            WHEN WBXP089 IS NULL THEN NULL 
ELSE WBXP089 
 END as phase_array_data_point_089, 

CASE
            WHEN WBXP090 IS NULL THEN NULL 
ELSE WBXP090 
 END as phase_array_data_point_090, 

CASE
            WHEN WBXP091 IS NULL THEN NULL 
ELSE WBXP091 
 END as phase_array_data_point_091, 

CASE
            WHEN WBXP092 IS NULL THEN NULL 
ELSE WBXP092 
 END as phase_array_data_point_092, 

CASE
            WHEN WBXP093 IS NULL THEN NULL 
ELSE WBXP093 
 END as phase_array_data_point_093, 

CASE
            WHEN WBXP094 IS NULL THEN NULL 
ELSE WBXP094 
 END as phase_array_data_point_094, 

CASE
            WHEN WBXP095 IS NULL THEN NULL 
ELSE WBXP095 
 END as phase_array_data_point_095, 

CASE
            WHEN WBXP096 IS NULL THEN NULL 
ELSE WBXP096 
 END as phase_array_data_point_096, 

CASE
            WHEN WBXP097 IS NULL THEN NULL 
ELSE WBXP097 
 END as phase_array_data_point_097, 

CASE
            WHEN WBXP098 IS NULL THEN NULL 
ELSE WBXP098 
 END as phase_array_data_point_098, 

CASE
            WHEN WBXP099 IS NULL THEN NULL 
ELSE WBXP099 
 END as phase_array_data_point_099, 

CASE
            WHEN WBXP100 IS NULL THEN NULL 
ELSE WBXP100 
 END as phase_array_data_point_100, 

CASE
            WHEN WBXP101 IS NULL THEN NULL 
ELSE WBXP101 
 END as phase_array_data_point_101, 

CASE
            WHEN WBXP102 IS NULL THEN NULL 
ELSE WBXP102 
 END as phase_array_data_point_102, 

CASE
            WHEN WBXP103 IS NULL THEN NULL 
ELSE WBXP103 
 END as phase_array_data_point_103, 

CASE
            WHEN WBXP104 IS NULL THEN NULL 
ELSE WBXP104 
 END as phase_array_data_point_104, 

CASE
            WHEN WBXP105 IS NULL THEN NULL 
ELSE WBXP105 
 END as phase_array_data_point_105, 

CASE
            WHEN WBXP106 IS NULL THEN NULL 
ELSE WBXP106 
 END as phase_array_data_point_106, 

CASE
            WHEN WBXP107 IS NULL THEN NULL 
ELSE WBXP107 
 END as phase_array_data_point_107, 

 FROM {{ ref('stg_audiometry_wideband_reflectance_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUXWBR_J.htm
        