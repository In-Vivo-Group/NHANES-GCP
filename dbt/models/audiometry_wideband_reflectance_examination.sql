SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN WBXFEAR = 1 THEN 'Right Ear' 
WHEN WBXFEAR = 2 THEN 'Left Ear' 
WHEN WBXFEAR IS NULL THEN NULL 
ELSE NULL 
 END as ear_tested,
CASE
    WHEN WBXF001 = 226 to 226 THEN 'Range of Values' 
WHEN WBXF001 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_001,
CASE
    WHEN WBXF002 = 257.3256 to 257.3256 THEN 'Range of Values' 
WHEN WBXF002 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_002,
CASE
    WHEN WBXF003 = 280.6155 to 280.6155 THEN 'Range of Values' 
WHEN WBXF003 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_003,
CASE
    WHEN WBXF004 = 297.3018 to 297.3018 THEN 'Range of Values' 
WHEN WBXF004 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_004,
CASE
    WHEN WBXF005 = 324.2099 to 324.2099 THEN 'Range of Values' 
WHEN WBXF005 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_005,
CASE
    WHEN WBXF006 = 343.4884 to 343.4884 THEN 'Range of Values' 
WHEN WBXF006 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_006,
CASE
    WHEN WBXF007 = 363.9133 to 363.9133 THEN 'Range of Values' 
WHEN WBXF007 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_007,
CASE
    WHEN WBXF008 = 385.5527 to 385.5527 THEN 'Range of Values' 
WHEN WBXF008 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_008,
CASE
    WHEN WBXF009 = 408.4789 to 408.4789 THEN 'Range of Values' 
WHEN WBXF009 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_009,
CASE
    WHEN WBXF010 = 432.7683 to 432.7683 THEN 'Range of Values' 
WHEN WBXF010 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_010,
CASE
    WHEN WBXF011 = 458.502 to 458.502 THEN 'Range of Values' 
WHEN WBXF011 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_011,
CASE
    WHEN WBXF012 = 471.9372 to 471.9372 THEN 'Range of Values' 
WHEN WBXF012 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_012,
CASE
    WHEN WBXF013 = 500 to 500 THEN 'Range of Values' 
WHEN WBXF013 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_013,
CASE
    WHEN WBXF014 = 514.6511 to 514.6511 THEN 'Range of Values' 
WHEN WBXF014 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_014,
CASE
    WHEN WBXF015 = 545.2539 to 545.2539 THEN 'Range of Values' 
WHEN WBXF015 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_015,
CASE
    WHEN WBXF016 = 561.231 to 561.231 THEN 'Range of Values' 
WHEN WBXF016 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_016,
CASE
    WHEN WBXF017 = 577.6763 to 577.6763 THEN 'Range of Values' 
WHEN WBXF017 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_017,
CASE
    WHEN WBXF018 = 594.6036 to 594.6036 THEN 'Range of Values' 
WHEN WBXF018 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_018,
CASE
    WHEN WBXF019 = 629.9605 to 629.9605 THEN 'Range of Values' 
WHEN WBXF019 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_019,
CASE
    WHEN WBXF020 = 648.4198 to 648.4198 THEN 'Range of Values' 
WHEN WBXF020 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_020,
CASE
    WHEN WBXF021 = 667.4199 to 667.4199 THEN 'Range of Values' 
WHEN WBXF021 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_021,
CASE
    WHEN WBXF022 = 686.9768 to 686.9768 THEN 'Range of Values' 
WHEN WBXF022 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_022,
CASE
    WHEN WBXF023 = 707.1068 to 707.1068 THEN 'Range of Values' 
WHEN WBXF023 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_023,
CASE
    WHEN WBXF024 = 727.8266 to 727.8266 THEN 'Range of Values' 
WHEN WBXF024 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_024,
CASE
    WHEN WBXF025 = 749.1535 to 749.1535 THEN 'Range of Values' 
WHEN WBXF025 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_025,
CASE
    WHEN WBXF026 = 771.1054 to 771.1054 THEN 'Range of Values' 
WHEN WBXF026 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_026,
CASE
    WHEN WBXF027 = 793.7005 to 793.7005 THEN 'Range of Values' 
WHEN WBXF027 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_027,
CASE
    WHEN WBXF028 = 816.9577 to 816.9577 THEN 'Range of Values' 
WHEN WBXF028 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_028,
CASE
    WHEN WBXF029 = 840.8964 to 840.8964 THEN 'Range of Values' 
WHEN WBXF029 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_029,
CASE
    WHEN WBXF030 = 865.5366 to 865.5366 THEN 'Range of Values' 
WHEN WBXF030 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_030,
CASE
    WHEN WBXF031 = 890.8987 to 890.8987 THEN 'Range of Values' 
WHEN WBXF031 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_031,
CASE
    WHEN WBXF032 = 917.004 to 917.004 THEN 'Range of Values' 
WHEN WBXF032 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_032,
CASE
    WHEN WBXF033 = 943.8743 to 943.8743 THEN 'Range of Values' 
WHEN WBXF033 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_033,
CASE
    WHEN WBXF034 = 971.5319 to 971.5319 THEN 'Range of Values' 
WHEN WBXF034 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_034,
CASE
    WHEN WBXF035 = 1000 to 1000 THEN 'Range of Values' 
WHEN WBXF035 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_035,
CASE
    WHEN WBXF036 = 1029.3022 to 1029.3022 THEN 'Range of Values' 
WHEN WBXF036 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_036,
CASE
    WHEN WBXF037 = 1059.4631 to 1059.4631 THEN 'Range of Values' 
WHEN WBXF037 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_037,
CASE
    WHEN WBXF038 = 1090.5077 to 1090.5077 THEN 'Range of Values' 
WHEN WBXF038 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_038,
CASE
    WHEN WBXF039 = 1122.462 to 1122.462 THEN 'Range of Values' 
WHEN WBXF039 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_039,
CASE
    WHEN WBXF040 = 1155.3527 to 1155.3527 THEN 'Range of Values' 
WHEN WBXF040 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_040,
CASE
    WHEN WBXF041 = 1189.2071 to 1189.2071 THEN 'Range of Values' 
WHEN WBXF041 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_041,
CASE
    WHEN WBXF042 = 1224.0535 to 1224.0535 THEN 'Range of Values' 
WHEN WBXF042 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_042,
CASE
    WHEN WBXF043 = 1259.921 to 1259.921 THEN 'Range of Values' 
WHEN WBXF043 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_043,
CASE
    WHEN WBXF044 = 1296.8396 to 1296.8396 THEN 'Range of Values' 
WHEN WBXF044 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_044,
CASE
    WHEN WBXF045 = 1334.8399 to 1334.8399 THEN 'Range of Values' 
WHEN WBXF045 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_045,
CASE
    WHEN WBXF046 = 1373.9536 to 1373.9536 THEN 'Range of Values' 
WHEN WBXF046 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_046,
CASE
    WHEN WBXF047 = 1414.2136 to 1414.2136 THEN 'Range of Values' 
WHEN WBXF047 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_047,
CASE
    WHEN WBXF048 = 1455.6532 to 1455.6532 THEN 'Range of Values' 
WHEN WBXF048 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_048,
CASE
    WHEN WBXF049 = 1498.3071 to 1498.3071 THEN 'Range of Values' 
WHEN WBXF049 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_049,
CASE
    WHEN WBXF050 = 1542.2108 to 1542.2108 THEN 'Range of Values' 
WHEN WBXF050 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_050,
CASE
    WHEN WBXF051 = 1587.4011 to 1587.4011 THEN 'Range of Values' 
WHEN WBXF051 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_051,
CASE
    WHEN WBXF052 = 1633.9155 to 1633.9155 THEN 'Range of Values' 
WHEN WBXF052 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_052,
CASE
    WHEN WBXF053 = 1681.7928 to 1681.7928 THEN 'Range of Values' 
WHEN WBXF053 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_053,
CASE
    WHEN WBXF054 = 1731.0731 to 1731.0731 THEN 'Range of Values' 
WHEN WBXF054 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_054,
CASE
    WHEN WBXF055 = 1781.7974 to 1781.7974 THEN 'Range of Values' 
WHEN WBXF055 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_055,
CASE
    WHEN WBXF056 = 1834.0081 to 1834.0081 THEN 'Range of Values' 
WHEN WBXF056 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_056,
CASE
    WHEN WBXF057 = 1887.7486 to 1887.7486 THEN 'Range of Values' 
WHEN WBXF057 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_057,
CASE
    WHEN WBXF058 = 1943.0639 to 1943.0639 THEN 'Range of Values' 
WHEN WBXF058 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_058,
CASE
    WHEN WBXF059 = 2000 to 2000 THEN 'Range of Values' 
WHEN WBXF059 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_059,
CASE
    WHEN WBXF060 = 2058.6045 to 2058.6045 THEN 'Range of Values' 
WHEN WBXF060 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_060,
CASE
    WHEN WBXF061 = 2118.9262 to 2118.9262 THEN 'Range of Values' 
WHEN WBXF061 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_061,
CASE
    WHEN WBXF062 = 2181.0155 to 2181.0155 THEN 'Range of Values' 
WHEN WBXF062 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_062,
CASE
    WHEN WBXF063 = 2244.9241 to 2244.9241 THEN 'Range of Values' 
WHEN WBXF063 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_063,
CASE
    WHEN WBXF064 = 2310.7054 to 2310.7054 THEN 'Range of Values' 
WHEN WBXF064 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_064,
CASE
    WHEN WBXF065 = 2378.4142 to 2378.4142 THEN 'Range of Values' 
WHEN WBXF065 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_065,
CASE
    WHEN WBXF066 = 2448.1071 to 2448.1071 THEN 'Range of Values' 
WHEN WBXF066 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_066,
CASE
    WHEN WBXF067 = 2519.8421 to 2519.8421 THEN 'Range of Values' 
WHEN WBXF067 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_067,
CASE
    WHEN WBXF068 = 2593.6791 to 2593.6791 THEN 'Range of Values' 
WHEN WBXF068 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_068,
CASE
    WHEN WBXF069 = 2669.6797 to 2669.6797 THEN 'Range of Values' 
WHEN WBXF069 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_069,
CASE
    WHEN WBXF070 = 2747.9073 to 2747.9073 THEN 'Range of Values' 
WHEN WBXF070 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_070,
CASE
    WHEN WBXF071 = 2828.4271 to 2828.4271 THEN 'Range of Values' 
WHEN WBXF071 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_071,
CASE
    WHEN WBXF072 = 2911.3064 to 2911.3064 THEN 'Range of Values' 
WHEN WBXF072 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_072,
CASE
    WHEN WBXF073 = 2996.6142 to 2996.6142 THEN 'Range of Values' 
WHEN WBXF073 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_073,
CASE
    WHEN WBXF074 = 3084.4217 to 3084.4217 THEN 'Range of Values' 
WHEN WBXF074 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_074,
CASE
    WHEN WBXF075 = 3174.8021 to 3174.8021 THEN 'Range of Values' 
WHEN WBXF075 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_075,
CASE
    WHEN WBXF076 = 3267.8309 to 3267.8309 THEN 'Range of Values' 
WHEN WBXF076 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_076,
CASE
    WHEN WBXF077 = 3363.5857 to 3363.5857 THEN 'Range of Values' 
WHEN WBXF077 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_077,
CASE
    WHEN WBXF078 = 3462.1462 to 3462.1462 THEN 'Range of Values' 
WHEN WBXF078 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_078,
CASE
    WHEN WBXF079 = 3563.5949 to 3563.5949 THEN 'Range of Values' 
WHEN WBXF079 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_079,
CASE
    WHEN WBXF080 = 3668.0162 to 3668.0162 THEN 'Range of Values' 
WHEN WBXF080 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_080,
CASE
    WHEN WBXF081 = 3775.4973 to 3775.4973 THEN 'Range of Values' 
WHEN WBXF081 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_081,
CASE
    WHEN WBXF082 = 3886.1278 to 3886.1278 THEN 'Range of Values' 
WHEN WBXF082 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_082,
CASE
    WHEN WBXF083 = 4000 to 4000 THEN 'Range of Values' 
WHEN WBXF083 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_083,
CASE
    WHEN WBXF084 = 4117.2089 to 4117.2089 THEN 'Range of Values' 
WHEN WBXF084 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_084,
CASE
    WHEN WBXF085 = 4237.8524 to 4237.8524 THEN 'Range of Values' 
WHEN WBXF085 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_085,
CASE
    WHEN WBXF086 = 4362.0309 to 4362.0309 THEN 'Range of Values' 
WHEN WBXF086 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_086,
CASE
    WHEN WBXF087 = 4489.8482 to 4489.8482 THEN 'Range of Values' 
WHEN WBXF087 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_087,
CASE
    WHEN WBXF088 = 4621.4108 to 4621.4108 THEN 'Range of Values' 
WHEN WBXF088 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_088,
CASE
    WHEN WBXF089 = 4756.8285 to 4756.8285 THEN 'Range of Values' 
WHEN WBXF089 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_089,
CASE
    WHEN WBXF090 = 4896.2142 to 4896.2142 THEN 'Range of Values' 
WHEN WBXF090 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_090,
CASE
    WHEN WBXF091 = 5039.6842 to 5039.6842 THEN 'Range of Values' 
WHEN WBXF091 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_091,
CASE
    WHEN WBXF092 = 5187.3582 to 5187.3582 THEN 'Range of Values' 
WHEN WBXF092 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_092,
CASE
    WHEN WBXF093 = 5339.3594 to 5339.3594 THEN 'Range of Values' 
WHEN WBXF093 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_093,
CASE
    WHEN WBXF094 = 5495.8146 to 5495.8146 THEN 'Range of Values' 
WHEN WBXF094 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_094,
CASE
    WHEN WBXF095 = 5656.8542 to 5656.8542 THEN 'Range of Values' 
WHEN WBXF095 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_095,
CASE
    WHEN WBXF096 = 5822.6127 to 5822.6127 THEN 'Range of Values' 
WHEN WBXF096 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_096,
CASE
    WHEN WBXF097 = 5993.2283 to 5993.2283 THEN 'Range of Values' 
WHEN WBXF097 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_097,
CASE
    WHEN WBXF098 = 6168.8433 to 6168.8433 THEN 'Range of Values' 
WHEN WBXF098 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_098,
CASE
    WHEN WBXF099 = 6349.6042 to 6349.6042 THEN 'Range of Values' 
WHEN WBXF099 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_099,
CASE
    WHEN WBXF100 = 6535.6618 to 6535.6618 THEN 'Range of Values' 
WHEN WBXF100 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_100,
CASE
    WHEN WBXF101 = 6727.1713 to 6727.1713 THEN 'Range of Values' 
WHEN WBXF101 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_101,
CASE
    WHEN WBXF102 = 6924.2925 to 6924.2925 THEN 'Range of Values' 
WHEN WBXF102 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_102,
CASE
    WHEN WBXF103 = 7127.1897 to 7127.1897 THEN 'Range of Values' 
WHEN WBXF103 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_103,
CASE
    WHEN WBXF104 = 7336.0323 to 7336.0323 THEN 'Range of Values' 
WHEN WBXF104 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_104,
CASE
    WHEN WBXF105 = 7550.9945 to 7550.9945 THEN 'Range of Values' 
WHEN WBXF105 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_105,
CASE
    WHEN WBXF106 = 7772.2555 to 7772.2555 THEN 'Range of Values' 
WHEN WBXF106 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_106,
CASE
    WHEN WBXF107 = 8000 to 8000 THEN 'Range of Values' 
WHEN WBXF107 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_107,
CASE
    WHEN WBXA001 = -3.8933 to 1 THEN 'Range of Values' 
WHEN WBXA001 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_001,
CASE
    WHEN WBXA002 = -4.6738 to 1 THEN 'Range of Values' 
WHEN WBXA002 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_002,
CASE
    WHEN WBXA003 = -5.5902 to 1 THEN 'Range of Values' 
WHEN WBXA003 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_003,
CASE
    WHEN WBXA004 = -6.6814 to 1 THEN 'Range of Values' 
WHEN WBXA004 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_004,
CASE
    WHEN WBXA005 = -7.5577 to 1 THEN 'Range of Values' 
WHEN WBXA005 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_005,
CASE
    WHEN WBXA006 = -7.243 to 1 THEN 'Range of Values' 
WHEN WBXA006 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_006,
CASE
    WHEN WBXA007 = -6.0813 to 1 THEN 'Range of Values' 
WHEN WBXA007 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_007,
CASE
    WHEN WBXA008 = -5.0678 to 1 THEN 'Range of Values' 
WHEN WBXA008 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_008,
CASE
    WHEN WBXA009 = -4.7971 to 1 THEN 'Range of Values' 
WHEN WBXA009 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_009,
CASE
    WHEN WBXA010 = -4.7542 to 1 THEN 'Range of Values' 
WHEN WBXA010 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_010,
CASE
    WHEN WBXA011 = -4.3242 to 1 THEN 'Range of Values' 
WHEN WBXA011 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_011,
CASE
    WHEN WBXA012 = -3.6681 to 1 THEN 'Range of Values' 
WHEN WBXA012 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_012,
CASE
    WHEN WBXA013 = -3.011 to 1 THEN 'Range of Values' 
WHEN WBXA013 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_013,
CASE
    WHEN WBXA014 = -2.5879 to 1 THEN 'Range of Values' 
WHEN WBXA014 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_014,
CASE
    WHEN WBXA015 = -2.2934 to 1 THEN 'Range of Values' 
WHEN WBXA015 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_015,
CASE
    WHEN WBXA016 = -2.0173 to 1 THEN 'Range of Values' 
WHEN WBXA016 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_016,
CASE
    WHEN WBXA017 = -1.9147 to 1 THEN 'Range of Values' 
WHEN WBXA017 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_017,
CASE
    WHEN WBXA018 = -1.9105 to 1 THEN 'Range of Values' 
WHEN WBXA018 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_018,
CASE
    WHEN WBXA019 = -2.0264 to 1 THEN 'Range of Values' 
WHEN WBXA019 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_019,
CASE
    WHEN WBXA020 = -2.2664 to 1 THEN 'Range of Values' 
WHEN WBXA020 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_020,
CASE
    WHEN WBXA021 = -2.6243 to 1 THEN 'Range of Values' 
WHEN WBXA021 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_021,
CASE
    WHEN WBXA022 = -3.2961 to 1 THEN 'Range of Values' 
WHEN WBXA022 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_022,
CASE
    WHEN WBXA023 = -3.5714 to 1 THEN 'Range of Values' 
WHEN WBXA023 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_023,
CASE
    WHEN WBXA024 = -3.8397 to 1 THEN 'Range of Values' 
WHEN WBXA024 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_024,
CASE
    WHEN WBXA025 = -3.7934 to 1 THEN 'Range of Values' 
WHEN WBXA025 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_025,
CASE
    WHEN WBXA026 = -3.656 to 1 THEN 'Range of Values' 
WHEN WBXA026 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_026,
CASE
    WHEN WBXA027 = -3.8729 to 1 THEN 'Range of Values' 
WHEN WBXA027 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_027,
CASE
    WHEN WBXA028 = -3.8957 to 1 THEN 'Range of Values' 
WHEN WBXA028 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_028,
CASE
    WHEN WBXA029 = -3.9138 to 1 THEN 'Range of Values' 
WHEN WBXA029 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_029,
CASE
    WHEN WBXA030 = -4.1925 to 1 THEN 'Range of Values' 
WHEN WBXA030 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_030,
CASE
    WHEN WBXA031 = -4.9175 to 1 THEN 'Range of Values' 
WHEN WBXA031 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_031,
CASE
    WHEN WBXA032 = -6.2277 to 1 THEN 'Range of Values' 
WHEN WBXA032 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_032,
CASE
    WHEN WBXA033 = -6.2678 to 1 THEN 'Range of Values' 
WHEN WBXA033 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_033,
CASE
    WHEN WBXA034 = -6.0611 to 1 THEN 'Range of Values' 
WHEN WBXA034 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_034,
CASE
    WHEN WBXA035 = -7.1472 to 1 THEN 'Range of Values' 
WHEN WBXA035 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_035,
CASE
    WHEN WBXA036 = -9.3193 to 1 THEN 'Range of Values' 
WHEN WBXA036 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_036,
CASE
    WHEN WBXA037 = -9.6516 to 1 THEN 'Range of Values' 
WHEN WBXA037 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_037,
CASE
    WHEN WBXA038 = -8.1425 to 1 THEN 'Range of Values' 
WHEN WBXA038 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_038,
CASE
    WHEN WBXA039 = -6.9508 to 1 THEN 'Range of Values' 
WHEN WBXA039 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_039,
CASE
    WHEN WBXA040 = -6.3987 to 1 THEN 'Range of Values' 
WHEN WBXA040 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_040,
CASE
    WHEN WBXA041 = -5.7494 to 1 THEN 'Range of Values' 
WHEN WBXA041 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_041,
CASE
    WHEN WBXA042 = -6.5767 to 1 THEN 'Range of Values' 
WHEN WBXA042 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_042,
CASE
    WHEN WBXA043 = -8.1463 to 1 THEN 'Range of Values' 
WHEN WBXA043 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_043,
CASE
    WHEN WBXA044 = -11.8413 to 1 THEN 'Range of Values' 
WHEN WBXA044 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_044,
CASE
    WHEN WBXA045 = -17.5159 to 1 THEN 'Range of Values' 
WHEN WBXA045 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_045,
CASE
    WHEN WBXA046 = -28.8328 to 1 THEN 'Range of Values' 
WHEN WBXA046 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_046,
CASE
    WHEN WBXA047 = -49.0356 to 1 THEN 'Range of Values' 
WHEN WBXA047 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_047,
CASE
    WHEN WBXA048 = -96.5769 to 1 THEN 'Range of Values' 
WHEN WBXA048 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_048,
CASE
    WHEN WBXA049 = -249.3412 to 1 THEN 'Range of Values' 
WHEN WBXA049 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_049,
CASE
    WHEN WBXA050 = -112.0537 to 1 THEN 'Range of Values' 
WHEN WBXA050 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_050,
CASE
    WHEN WBXA051 = -40.5167 to 1 THEN 'Range of Values' 
WHEN WBXA051 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_051,
CASE
    WHEN WBXA052 = -23.8561 to 1 THEN 'Range of Values' 
WHEN WBXA052 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_052,
CASE
    WHEN WBXA053 = -14.2091 to 1 THEN 'Range of Values' 
WHEN WBXA053 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_053,
CASE
    WHEN WBXA054 = -8.4286 to 1 THEN 'Range of Values' 
WHEN WBXA054 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_054,
CASE
    WHEN WBXA055 = -5.9781 to 1 THEN 'Range of Values' 
WHEN WBXA055 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_055,
CASE
    WHEN WBXA056 = -3.807 to 1 THEN 'Range of Values' 
WHEN WBXA056 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_056,
CASE
    WHEN WBXA057 = -3.2359 to 1 THEN 'Range of Values' 
WHEN WBXA057 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_057,
CASE
    WHEN WBXA058 = -3.2135 to 1 THEN 'Range of Values' 
WHEN WBXA058 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_058,
CASE
    WHEN WBXA059 = -3.0691 to 1 THEN 'Range of Values' 
WHEN WBXA059 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_059,
CASE
    WHEN WBXA060 = -2.9696 to 1 THEN 'Range of Values' 
WHEN WBXA060 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_060,
CASE
    WHEN WBXA061 = -2.4299 to 1 THEN 'Range of Values' 
WHEN WBXA061 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_061,
CASE
    WHEN WBXA062 = -2.0267 to 1 THEN 'Range of Values' 
WHEN WBXA062 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_062,
CASE
    WHEN WBXA063 = -1.4173 to 1 THEN 'Range of Values' 
WHEN WBXA063 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_063,
CASE
    WHEN WBXA064 = -1.0781 to 1 THEN 'Range of Values' 
WHEN WBXA064 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_064,
CASE
    WHEN WBXA065 = -0.7006 to 1 THEN 'Range of Values' 
WHEN WBXA065 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_065,
CASE
    WHEN WBXA066 = -0.4751 to 1 THEN 'Range of Values' 
WHEN WBXA066 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_066,
CASE
    WHEN WBXA067 = -0.3433 to 1 THEN 'Range of Values' 
WHEN WBXA067 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_067,
CASE
    WHEN WBXA068 = -0.2165 to 1 THEN 'Range of Values' 
WHEN WBXA068 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_068,
CASE
    WHEN WBXA069 = -0.2193 to 1 THEN 'Range of Values' 
WHEN WBXA069 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_069,
CASE
    WHEN WBXA070 = -0.2697 to 1 THEN 'Range of Values' 
WHEN WBXA070 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_070,
CASE
    WHEN WBXA071 = -0.33 to 1 THEN 'Range of Values' 
WHEN WBXA071 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_071,
CASE
    WHEN WBXA072 = -0.2474 to 1 THEN 'Range of Values' 
WHEN WBXA072 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_072,
CASE
    WHEN WBXA073 = -0.2868 to 1 THEN 'Range of Values' 
WHEN WBXA073 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_073,
CASE
    WHEN WBXA074 = -0.149 to 1 THEN 'Range of Values' 
WHEN WBXA074 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_074,
CASE
    WHEN WBXA075 = -0.2612 to 1 THEN 'Range of Values' 
WHEN WBXA075 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_075,
CASE
    WHEN WBXA076 = -0.3405 to 1 THEN 'Range of Values' 
WHEN WBXA076 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_076,
CASE
    WHEN WBXA077 = -0.4 to 1 THEN 'Range of Values' 
WHEN WBXA077 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_077,
CASE
    WHEN WBXA078 = -0.4721 to 1 THEN 'Range of Values' 
WHEN WBXA078 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_078,
CASE
    WHEN WBXA079 = -0.4732 to 1 THEN 'Range of Values' 
WHEN WBXA079 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_079,
CASE
    WHEN WBXA080 = -0.5192 to 1 THEN 'Range of Values' 
WHEN WBXA080 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_080,
CASE
    WHEN WBXA081 = -0.5851 to 1 THEN 'Range of Values' 
WHEN WBXA081 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_081,
CASE
    WHEN WBXA082 = -0.6957 to 1 THEN 'Range of Values' 
WHEN WBXA082 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_082,
CASE
    WHEN WBXA083 = -0.7133 to 1 THEN 'Range of Values' 
WHEN WBXA083 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_083,
CASE
    WHEN WBXA084 = -0.6 to 1 THEN 'Range of Values' 
WHEN WBXA084 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_084,
CASE
    WHEN WBXA085 = -0.7013 to 1 THEN 'Range of Values' 
WHEN WBXA085 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_085,
CASE
    WHEN WBXA086 = -0.6553 to 1 THEN 'Range of Values' 
WHEN WBXA086 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_086,
CASE
    WHEN WBXA087 = -0.9868 to 1 THEN 'Range of Values' 
WHEN WBXA087 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_087,
CASE
    WHEN WBXA088 = -1.3223 to 1 THEN 'Range of Values' 
WHEN WBXA088 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_088,
CASE
    WHEN WBXA089 = -1.9653 to 1 THEN 'Range of Values' 
WHEN WBXA089 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_089,
CASE
    WHEN WBXA090 = -2.8482 to 1 THEN 'Range of Values' 
WHEN WBXA090 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_090,
CASE
    WHEN WBXA091 = -3.7924 to 1 THEN 'Range of Values' 
WHEN WBXA091 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_091,
CASE
    WHEN WBXA092 = -5.7343 to 1 THEN 'Range of Values' 
WHEN WBXA092 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_092,
CASE
    WHEN WBXA093 = -8.5804 to 1 THEN 'Range of Values' 
WHEN WBXA093 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_093,
CASE
    WHEN WBXA094 = -11.5039 to 1 THEN 'Range of Values' 
WHEN WBXA094 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_094,
CASE
    WHEN WBXA095 = -18.5572 to 1 THEN 'Range of Values' 
WHEN WBXA095 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_095,
CASE
    WHEN WBXA096 = -26.318 to 1 THEN 'Range of Values' 
WHEN WBXA096 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_096,
CASE
    WHEN WBXA097 = -39.3104 to 1 THEN 'Range of Values' 
WHEN WBXA097 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_097,
CASE
    WHEN WBXA098 = -85.8949 to 1 THEN 'Range of Values' 
WHEN WBXA098 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_098,
CASE
    WHEN WBXA099 = -197.7625 to 1 THEN 'Range of Values' 
WHEN WBXA099 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_099,
CASE
    WHEN WBXA100 = -287.2568 to 1 THEN 'Range of Values' 
WHEN WBXA100 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_100,
CASE
    WHEN WBXA101 = -378.7883 to 1 THEN 'Range of Values' 
WHEN WBXA101 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_101,
CASE
    WHEN WBXA102 = -186.6816 to 1 THEN 'Range of Values' 
WHEN WBXA102 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_102,
CASE
    WHEN WBXA103 = -99.6758 to 1 THEN 'Range of Values' 
WHEN WBXA103 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_103,
CASE
    WHEN WBXA104 = -59.6207 to 1 THEN 'Range of Values' 
WHEN WBXA104 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_104,
CASE
    WHEN WBXA105 = -36.3775 to 1 THEN 'Range of Values' 
WHEN WBXA105 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_105,
CASE
    WHEN WBXA106 = -25.8817 to 1 THEN 'Range of Values' 
WHEN WBXA106 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_106,
CASE
    WHEN WBXA107 = -19.8292 to 1 THEN 'Range of Values' 
WHEN WBXA107 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_107,
CASE
    WHEN WBXP001 = -44.4602 to 149.0756 THEN 'Range of Values' 
WHEN WBXP001 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_001,
CASE
    WHEN WBXP002 = -75.0274 to 161.2179 THEN 'Range of Values' 
WHEN WBXP002 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_002,
CASE
    WHEN WBXP003 = -49.2346 to 147.9164 THEN 'Range of Values' 
WHEN WBXP003 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_003,
CASE
    WHEN WBXP004 = -98.159 to 143.1439 THEN 'Range of Values' 
WHEN WBXP004 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_004,
CASE
    WHEN WBXP005 = -69.1898 to 160.8446 THEN 'Range of Values' 
WHEN WBXP005 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_005,
CASE
    WHEN WBXP006 = -41.3417 to 148.6071 THEN 'Range of Values' 
WHEN WBXP006 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_006,
CASE
    WHEN WBXP007 = -179.782 to 142.6646 THEN 'Range of Values' 
WHEN WBXP007 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_007,
CASE
    WHEN WBXP008 = -43.3472 to 178.2919 THEN 'Range of Values' 
WHEN WBXP008 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_008,
CASE
    WHEN WBXP009 = -40.6916 to 143.0484 THEN 'Range of Values' 
WHEN WBXP009 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_009,
CASE
    WHEN WBXP010 = -165.9945 to 145.8068 THEN 'Range of Values' 
WHEN WBXP010 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_010,
CASE
    WHEN WBXP011 = -179.5901 to 148.0981 THEN 'Range of Values' 
WHEN WBXP011 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_011,
CASE
    WHEN WBXP012 = -30.5985 to 150.2292 THEN 'Range of Values' 
WHEN WBXP012 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_012,
CASE
    WHEN WBXP013 = -176.2444 to 147.4406 THEN 'Range of Values' 
WHEN WBXP013 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_013,
CASE
    WHEN WBXP014 = -170.5706 to 146.751 THEN 'Range of Values' 
WHEN WBXP014 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_014,
CASE
    WHEN WBXP015 = -22.5785 to 177.422 THEN 'Range of Values' 
WHEN WBXP015 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_015,
CASE
    WHEN WBXP016 = -170.2174 to 148.2655 THEN 'Range of Values' 
WHEN WBXP016 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_016,
CASE
    WHEN WBXP017 = -170.5996 to 147.8652 THEN 'Range of Values' 
WHEN WBXP017 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_017,
CASE
    WHEN WBXP018 = -164.8153 to 146.8166 THEN 'Range of Values' 
WHEN WBXP018 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_018,
CASE
    WHEN WBXP019 = -10.4588 to 160.568 THEN 'Range of Values' 
WHEN WBXP019 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_019,
CASE
    WHEN WBXP020 = -19.1835 to 152.8848 THEN 'Range of Values' 
WHEN WBXP020 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_020,
CASE
    WHEN WBXP021 = -162.8648 to 148.6147 THEN 'Range of Values' 
WHEN WBXP021 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_021,
CASE
    WHEN WBXP022 = -157.9258 to 150.0244 THEN 'Range of Values' 
WHEN WBXP022 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_022,
CASE
    WHEN WBXP023 = -22.6247 to 174.724 THEN 'Range of Values' 
WHEN WBXP023 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_023,
CASE
    WHEN WBXP024 = -24.3887 to 155.0366 THEN 'Range of Values' 
WHEN WBXP024 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_024,
CASE
    WHEN WBXP025 = -163.0009 to 148.0918 THEN 'Range of Values' 
WHEN WBXP025 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_025,
CASE
    WHEN WBXP026 = -30.0605 to 155.1774 THEN 'Range of Values' 
WHEN WBXP026 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_026,
CASE
    WHEN WBXP027 = -32.8387 to 165.7168 THEN 'Range of Values' 
WHEN WBXP027 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_027,
CASE
    WHEN WBXP028 = -34.9007 to 144.6193 THEN 'Range of Values' 
WHEN WBXP028 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_028,
CASE
    WHEN WBXP029 = -172.4057 to 143.122 THEN 'Range of Values' 
WHEN WBXP029 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_029,
CASE
    WHEN WBXP030 = -38.2037 to 144.7175 THEN 'Range of Values' 
WHEN WBXP030 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_030,
CASE
    WHEN WBXP031 = -37.1268 to 165.005 THEN 'Range of Values' 
WHEN WBXP031 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_031,
CASE
    WHEN WBXP032 = -37.4135 to 146.3569 THEN 'Range of Values' 
WHEN WBXP032 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_032,
CASE
    WHEN WBXP033 = -44.7362 to 144.293 THEN 'Range of Values' 
WHEN WBXP033 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_033,
CASE
    WHEN WBXP034 = -109.2644 to 142.7153 THEN 'Range of Values' 
WHEN WBXP034 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_034,
CASE
    WHEN WBXP035 = -53.1644 to 144.6525 THEN 'Range of Values' 
WHEN WBXP035 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_035,
CASE
    WHEN WBXP036 = -54.5466 to 154.2961 THEN 'Range of Values' 
WHEN WBXP036 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_036,
CASE
    WHEN WBXP037 = -144.6029 to 146.3522 THEN 'Range of Values' 
WHEN WBXP037 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_037,
CASE
    WHEN WBXP038 = -60.8938 to 144.2048 THEN 'Range of Values' 
WHEN WBXP038 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_038,
CASE
    WHEN WBXP039 = -63.8058 to 147.3695 THEN 'Range of Values' 
WHEN WBXP039 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_039,
CASE
    WHEN WBXP040 = -64.7336 to 142.6392 THEN 'Range of Values' 
WHEN WBXP040 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_040,
CASE
    WHEN WBXP041 = -65.5197 to 177.0552 THEN 'Range of Values' 
WHEN WBXP041 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_041,
CASE
    WHEN WBXP042 = -121.1192 to 146.8608 THEN 'Range of Values' 
WHEN WBXP042 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_042,
CASE
    WHEN WBXP043 = -165.6339 to 150.0542 THEN 'Range of Values' 
WHEN WBXP043 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_043,
CASE
    WHEN WBXP044 = -92.4089 to 155.1148 THEN 'Range of Values' 
WHEN WBXP044 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_044,
CASE
    WHEN WBXP045 = -112.7966 to 159.2948 THEN 'Range of Values' 
WHEN WBXP045 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_045,
CASE
    WHEN WBXP046 = -112.2908 to 162.6729 THEN 'Range of Values' 
WHEN WBXP046 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_046,
CASE
    WHEN WBXP047 = -64.713 to 165.2787 THEN 'Range of Values' 
WHEN WBXP047 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_047,
CASE
    WHEN WBXP048 = -88.2508 to 168.6766 THEN 'Range of Values' 
WHEN WBXP048 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_048,
CASE
    WHEN WBXP049 = -68.2359 to 174.0014 THEN 'Range of Values' 
WHEN WBXP049 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_049,
CASE
    WHEN WBXP050 = -69.4057 to 177.5286 THEN 'Range of Values' 
WHEN WBXP050 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_050,
CASE
    WHEN WBXP051 = -108.5764 to 178.9713 THEN 'Range of Values' 
WHEN WBXP051 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_051,
CASE
    WHEN WBXP052 = -92.3726 to 156.4154 THEN 'Range of Values' 
WHEN WBXP052 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_052,
CASE
    WHEN WBXP053 = -176.514 to 163.6738 THEN 'Range of Values' 
WHEN WBXP053 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_053,
CASE
    WHEN WBXP054 = -173.511 to 165.1846 THEN 'Range of Values' 
WHEN WBXP054 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_054,
CASE
    WHEN WBXP055 = -171.3504 to 164.1955 THEN 'Range of Values' 
WHEN WBXP055 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_055,
CASE
    WHEN WBXP056 = -168.8182 to 156.8838 THEN 'Range of Values' 
WHEN WBXP056 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_056,
CASE
    WHEN WBXP057 = -170.5028 to 155.194 THEN 'Range of Values' 
WHEN WBXP057 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_057,
CASE
    WHEN WBXP058 = -171.2024 to 154.4859 THEN 'Range of Values' 
WHEN WBXP058 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_058,
CASE
    WHEN WBXP059 = -171.9975 to 153.2034 THEN 'Range of Values' 
WHEN WBXP059 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_059,
CASE
    WHEN WBXP060 = -172.2126 to 150.862 THEN 'Range of Values' 
WHEN WBXP060 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_060,
CASE
    WHEN WBXP061 = -176.0875 to 148.9714 THEN 'Range of Values' 
WHEN WBXP061 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_061,
CASE
    WHEN WBXP062 = -177.9382 to 143.289 THEN 'Range of Values' 
WHEN WBXP062 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_062,
CASE
    WHEN WBXP063 = -107.0371 to 176.7536 THEN 'Range of Values' 
WHEN WBXP063 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_063,
CASE
    WHEN WBXP064 = -118.1456 to 174.4619 THEN 'Range of Values' 
WHEN WBXP064 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_064,
CASE
    WHEN WBXP065 = -114.159 to 167.1573 THEN 'Range of Values' 
WHEN WBXP065 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_065,
CASE
    WHEN WBXP066 = -147.102 to 158.2673 THEN 'Range of Values' 
WHEN WBXP066 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_066,
CASE
    WHEN WBXP067 = -108.1853 to 151.3926 THEN 'Range of Values' 
WHEN WBXP067 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_067,
CASE
    WHEN WBXP068 = -110.6081 to 141.2893 THEN 'Range of Values' 
WHEN WBXP068 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_068,
CASE
    WHEN WBXP069 = -108.13 to 130.4112 THEN 'Range of Values' 
WHEN WBXP069 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_069,
CASE
    WHEN WBXP070 = -118.2891 to 117.8929 THEN 'Range of Values' 
WHEN WBXP070 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_070,
CASE
    WHEN WBXP071 = -122.5004 to 107.6497 THEN 'Range of Values' 
WHEN WBXP071 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_071,
CASE
    WHEN WBXP072 = -125.2819 to 100.1849 THEN 'Range of Values' 
WHEN WBXP072 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_072,
CASE
    WHEN WBXP073 = -129.49 to 108.3146 THEN 'Range of Values' 
WHEN WBXP073 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_073,
CASE
    WHEN WBXP074 = -135.7467 to 109.0366 THEN 'Range of Values' 
WHEN WBXP074 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_074,
CASE
    WHEN WBXP075 = -151.5715 to 162.205 THEN 'Range of Values' 
WHEN WBXP075 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_075,
CASE
    WHEN WBXP076 = -169.9324 to 161.7368 THEN 'Range of Values' 
WHEN WBXP076 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_076,
CASE
    WHEN WBXP077 = -174.675 to 168.9551 THEN 'Range of Values' 
WHEN WBXP077 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_077,
CASE
    WHEN WBXP078 = -170.6447 to 163.8122 THEN 'Range of Values' 
WHEN WBXP078 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_078,
CASE
    WHEN WBXP079 = -173.2776 to 172.2509 THEN 'Range of Values' 
WHEN WBXP079 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_079,
CASE
    WHEN WBXP080 = -169.2923 to 175.8947 THEN 'Range of Values' 
WHEN WBXP080 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_080,
CASE
    WHEN WBXP081 = -175.7564 to 176.1403 THEN 'Range of Values' 
WHEN WBXP081 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_081,
CASE
    WHEN WBXP082 = -172.8416 to 174.4059 THEN 'Range of Values' 
WHEN WBXP082 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_082,
CASE
    WHEN WBXP083 = -174.9083 to 178.7888 THEN 'Range of Values' 
WHEN WBXP083 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_083,
CASE
    WHEN WBXP084 = -179.5358 to 177.7726 THEN 'Range of Values' 
WHEN WBXP084 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_084,
CASE
    WHEN WBXP085 = -176.4705 to 174.5625 THEN 'Range of Values' 
WHEN WBXP085 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_085,
CASE
    WHEN WBXP086 = -173.5847 to 174.6963 THEN 'Range of Values' 
WHEN WBXP086 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_086,
CASE
    WHEN WBXP087 = -174.9811 to 174.0048 THEN 'Range of Values' 
WHEN WBXP087 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_087,
CASE
    WHEN WBXP088 = -174.7548 to 176.8625 THEN 'Range of Values' 
WHEN WBXP088 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_088,
CASE
    WHEN WBXP089 = -158.7211 to 167.7039 THEN 'Range of Values' 
WHEN WBXP089 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_089,
CASE
    WHEN WBXP090 = -178.5048 to 156.0213 THEN 'Range of Values' 
WHEN WBXP090 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_090,
CASE
    WHEN WBXP091 = -145.9389 to 173.7202 THEN 'Range of Values' 
WHEN WBXP091 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_091,
CASE
    WHEN WBXP092 = -151.0835 to 155.5009 THEN 'Range of Values' 
WHEN WBXP092 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_092,
CASE
    WHEN WBXP093 = -155.2055 to 148.7524 THEN 'Range of Values' 
WHEN WBXP093 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_093,
CASE
    WHEN WBXP094 = -156.4213 to 155.1604 THEN 'Range of Values' 
WHEN WBXP094 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_094,
CASE
    WHEN WBXP095 = -160.4314 to 160.0173 THEN 'Range of Values' 
WHEN WBXP095 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_095,
CASE
    WHEN WBXP096 = -162.0991 to 167.4039 THEN 'Range of Values' 
WHEN WBXP096 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_096,
CASE
    WHEN WBXP097 = -165.6984 to 168.364 THEN 'Range of Values' 
WHEN WBXP097 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_097,
CASE
    WHEN WBXP098 = -170.3515 to 159.2542 THEN 'Range of Values' 
WHEN WBXP098 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_098,
CASE
    WHEN WBXP099 = -173.9772 to 143.5549 THEN 'Range of Values' 
WHEN WBXP099 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_099,
CASE
    WHEN WBXP100 = -177.814 to 136.3808 THEN 'Range of Values' 
WHEN WBXP100 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_100,
CASE
    WHEN WBXP101 = -156.8157 to 176.995 THEN 'Range of Values' 
WHEN WBXP101 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_101,
CASE
    WHEN WBXP102 = -155.8151 to 172.5658 THEN 'Range of Values' 
WHEN WBXP102 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_102,
CASE
    WHEN WBXP103 = -146.8798 to 168.8117 THEN 'Range of Values' 
WHEN WBXP103 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_103,
CASE
    WHEN WBXP104 = -133.6946 to 165.3709 THEN 'Range of Values' 
WHEN WBXP104 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_104,
CASE
    WHEN WBXP105 = -141.4786 to 161.5004 THEN 'Range of Values' 
WHEN WBXP105 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_105,
CASE
    WHEN WBXP106 = -123.4122 to 167.2752 THEN 'Range of Values' 
WHEN WBXP106 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_106,
CASE
    WHEN WBXP107 = -173.7476 to 167.101 THEN 'Range of Values' 
WHEN WBXP107 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_107,
 FROM { ref('stg_audiometry_wideband_reflectance_examination') }