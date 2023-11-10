SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN RFXSEAR = 1 THEN 'Right Ear' 
WHEN RFXSEAR = 2 THEN 'Left Ear' 
WHEN RFXSEAR IS NULL THEN NULL 
ELSE NULL 
 END as ear_tested,
CASE
    WHEN RFXLEVEL = 1 THEN '85 dB and 1 kHz' 
WHEN RFXLEVEL = 5 THEN '95 dB and 1 kHz' 
WHEN RFXLEVEL = 9 THEN '105 dB and 1 kHz' 
WHEN RFXLEVEL = 10 THEN '85 dB and 2 kHz' 
WHEN RFXLEVEL = 14 THEN '95 dB and 2 kHz' 
WHEN RFXLEVEL = 18 THEN '105 dB and 2 kHz' 
WHEN RFXLEVEL IS NULL THEN NULL 
ELSE NULL 
 END as sound_stimulus_level,
CASE
    WHEN RFXRFXDC = 0 THEN 'False' 
WHEN RFXRFXDC = 1 THEN 'True' 
WHEN RFXRFXDC IS NULL THEN NULL 
ELSE NULL 
 END as reflex_detected,
CASE
    WHEN RFXT001 = 0 to 0 THEN 'Range of Values' 
WHEN RFXT001 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_001,
CASE
    WHEN RFXT002 = 0 to 9 THEN 'Range of Values' 
WHEN RFXT002 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_002,
CASE
    WHEN RFXT003 = 9 to 18 THEN 'Range of Values' 
WHEN RFXT003 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_003,
CASE
    WHEN RFXT004 = 18 to 27 THEN 'Range of Values' 
WHEN RFXT004 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_004,
CASE
    WHEN RFXT005 = 27 to 35 THEN 'Range of Values' 
WHEN RFXT005 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_005,
CASE
    WHEN RFXT006 = 35 to 44 THEN 'Range of Values' 
WHEN RFXT006 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_006,
CASE
    WHEN RFXT007 = 44 to 53 THEN 'Range of Values' 
WHEN RFXT007 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_007,
CASE
    WHEN RFXT008 = 53 to 62 THEN 'Range of Values' 
WHEN RFXT008 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_008,
CASE
    WHEN RFXT009 = 62 to 71 THEN 'Range of Values' 
WHEN RFXT009 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_009,
CASE
    WHEN RFXT010 = 71 to 80 THEN 'Range of Values' 
WHEN RFXT010 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_010,
CASE
    WHEN RFXT011 = 80 to 88 THEN 'Range of Values' 
WHEN RFXT011 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_011,
CASE
    WHEN RFXT012 = 88 to 97 THEN 'Range of Values' 
WHEN RFXT012 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_012,
CASE
    WHEN RFXT013 = 97 to 106 THEN 'Range of Values' 
WHEN RFXT013 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_013,
CASE
    WHEN RFXT014 = 106 to 115 THEN 'Range of Values' 
WHEN RFXT014 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_014,
CASE
    WHEN RFXT015 = 115 to 124 THEN 'Range of Values' 
WHEN RFXT015 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_015,
CASE
    WHEN RFXT016 = 124 to 133 THEN 'Range of Values' 
WHEN RFXT016 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_016,
CASE
    WHEN RFXT017 = 133 to 141 THEN 'Range of Values' 
WHEN RFXT017 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_017,
CASE
    WHEN RFXT018 = 141 to 150 THEN 'Range of Values' 
WHEN RFXT018 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_018,
CASE
    WHEN RFXT019 = 150 to 159 THEN 'Range of Values' 
WHEN RFXT019 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_019,
CASE
    WHEN RFXT020 = 159 to 168 THEN 'Range of Values' 
WHEN RFXT020 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_020,
CASE
    WHEN RFXT021 = 168 to 177 THEN 'Range of Values' 
WHEN RFXT021 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_021,
CASE
    WHEN RFXT022 = 177 to 186 THEN 'Range of Values' 
WHEN RFXT022 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_022,
CASE
    WHEN RFXT023 = 186 to 195 THEN 'Range of Values' 
WHEN RFXT023 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_023,
CASE
    WHEN RFXT024 = 195 to 203 THEN 'Range of Values' 
WHEN RFXT024 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_024,
CASE
    WHEN RFXT025 = 203 to 212 THEN 'Range of Values' 
WHEN RFXT025 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_025,
CASE
    WHEN RFXT026 = 212 to 221 THEN 'Range of Values' 
WHEN RFXT026 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_026,
CASE
    WHEN RFXT027 = 221 to 230 THEN 'Range of Values' 
WHEN RFXT027 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_027,
CASE
    WHEN RFXT028 = 230 to 239 THEN 'Range of Values' 
WHEN RFXT028 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_028,
CASE
    WHEN RFXT029 = 239 to 248 THEN 'Range of Values' 
WHEN RFXT029 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_029,
CASE
    WHEN RFXT030 = 248 to 256 THEN 'Range of Values' 
WHEN RFXT030 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_030,
CASE
    WHEN RFXT031 = 256 to 265 THEN 'Range of Values' 
WHEN RFXT031 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_031,
CASE
    WHEN RFXT032 = 265 to 274 THEN 'Range of Values' 
WHEN RFXT032 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_032,
CASE
    WHEN RFXT033 = 274 to 283 THEN 'Range of Values' 
WHEN RFXT033 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_033,
CASE
    WHEN RFXT034 = 283 to 292 THEN 'Range of Values' 
WHEN RFXT034 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_034,
CASE
    WHEN RFXT035 = 292 to 301 THEN 'Range of Values' 
WHEN RFXT035 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_035,
CASE
    WHEN RFXT036 = 301 to 310 THEN 'Range of Values' 
WHEN RFXT036 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_036,
CASE
    WHEN RFXT037 = 310 to 318 THEN 'Range of Values' 
WHEN RFXT037 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_037,
CASE
    WHEN RFXT038 = 318 to 327 THEN 'Range of Values' 
WHEN RFXT038 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_038,
CASE
    WHEN RFXT039 = 327 to 336 THEN 'Range of Values' 
WHEN RFXT039 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_039,
CASE
    WHEN RFXT040 = 336 to 345 THEN 'Range of Values' 
WHEN RFXT040 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_040,
CASE
    WHEN RFXT041 = 345 to 354 THEN 'Range of Values' 
WHEN RFXT041 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_041,
CASE
    WHEN RFXT042 = 354 to 363 THEN 'Range of Values' 
WHEN RFXT042 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_042,
CASE
    WHEN RFXT043 = 363 to 371 THEN 'Range of Values' 
WHEN RFXT043 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_043,
CASE
    WHEN RFXT044 = 371 to 380 THEN 'Range of Values' 
WHEN RFXT044 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_044,
CASE
    WHEN RFXT045 = 380 to 389 THEN 'Range of Values' 
WHEN RFXT045 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_045,
CASE
    WHEN RFXT046 = 389 to 398 THEN 'Range of Values' 
WHEN RFXT046 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_046,
CASE
    WHEN RFXT047 = 398 to 407 THEN 'Range of Values' 
WHEN RFXT047 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_047,
CASE
    WHEN RFXT048 = 407 to 416 THEN 'Range of Values' 
WHEN RFXT048 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_048,
CASE
    WHEN RFXT049 = 416 to 424 THEN 'Range of Values' 
WHEN RFXT049 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_049,
CASE
    WHEN RFXT050 = 424 to 433 THEN 'Range of Values' 
WHEN RFXT050 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_050,
CASE
    WHEN RFXT051 = 433 to 442 THEN 'Range of Values' 
WHEN RFXT051 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_051,
CASE
    WHEN RFXT052 = 442 to 451 THEN 'Range of Values' 
WHEN RFXT052 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_052,
CASE
    WHEN RFXT053 = 451 to 460 THEN 'Range of Values' 
WHEN RFXT053 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_053,
CASE
    WHEN RFXT054 = 460 to 469 THEN 'Range of Values' 
WHEN RFXT054 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_054,
CASE
    WHEN RFXT055 = 469 to 478 THEN 'Range of Values' 
WHEN RFXT055 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_055,
CASE
    WHEN RFXT056 = 478 to 486 THEN 'Range of Values' 
WHEN RFXT056 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_056,
CASE
    WHEN RFXT057 = 486 to 495 THEN 'Range of Values' 
WHEN RFXT057 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_057,
CASE
    WHEN RFXT058 = 495 to 504 THEN 'Range of Values' 
WHEN RFXT058 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_058,
CASE
    WHEN RFXT059 = 504 to 513 THEN 'Range of Values' 
WHEN RFXT059 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_059,
CASE
    WHEN RFXT060 = 513 to 522 THEN 'Range of Values' 
WHEN RFXT060 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_060,
CASE
    WHEN RFXT061 = 522 to 531 THEN 'Range of Values' 
WHEN RFXT061 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_061,
CASE
    WHEN RFXT062 = 531 to 539 THEN 'Range of Values' 
WHEN RFXT062 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_062,
CASE
    WHEN RFXT063 = 539 to 548 THEN 'Range of Values' 
WHEN RFXT063 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_063,
CASE
    WHEN RFXT064 = 548 to 557 THEN 'Range of Values' 
WHEN RFXT064 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_064,
CASE
    WHEN RFXT065 = 557 to 566 THEN 'Range of Values' 
WHEN RFXT065 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_065,
CASE
    WHEN RFXT066 = 566 to 575 THEN 'Range of Values' 
WHEN RFXT066 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_066,
CASE
    WHEN RFXT067 = 575 to 584 THEN 'Range of Values' 
WHEN RFXT067 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_067,
CASE
    WHEN RFXT068 = 584 to 593 THEN 'Range of Values' 
WHEN RFXT068 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_068,
CASE
    WHEN RFXT069 = 593 to 601 THEN 'Range of Values' 
WHEN RFXT069 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_069,
CASE
    WHEN RFXT070 = 601 to 610 THEN 'Range of Values' 
WHEN RFXT070 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_070,
CASE
    WHEN RFXT071 = 610 to 619 THEN 'Range of Values' 
WHEN RFXT071 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_071,
CASE
    WHEN RFXT072 = 619 to 628 THEN 'Range of Values' 
WHEN RFXT072 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_072,
CASE
    WHEN RFXT073 = 628 to 637 THEN 'Range of Values' 
WHEN RFXT073 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_073,
CASE
    WHEN RFXT074 = 637 to 646 THEN 'Range of Values' 
WHEN RFXT074 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_074,
CASE
    WHEN RFXT075 = 646 to 654 THEN 'Range of Values' 
WHEN RFXT075 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_075,
CASE
    WHEN RFXT076 = 654 to 663 THEN 'Range of Values' 
WHEN RFXT076 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_076,
CASE
    WHEN RFXT077 = 663 to 672 THEN 'Range of Values' 
WHEN RFXT077 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_077,
CASE
    WHEN RFXT078 = 672 to 681 THEN 'Range of Values' 
WHEN RFXT078 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_078,
CASE
    WHEN RFXT079 = 681 to 690 THEN 'Range of Values' 
WHEN RFXT079 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_079,
CASE
    WHEN RFXT080 = 690 to 699 THEN 'Range of Values' 
WHEN RFXT080 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_080,
CASE
    WHEN RFXT081 = 699 to 707 THEN 'Range of Values' 
WHEN RFXT081 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_081,
CASE
    WHEN RFXT082 = 707 to 716 THEN 'Range of Values' 
WHEN RFXT082 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_082,
CASE
    WHEN RFXT083 = 716 to 725 THEN 'Range of Values' 
WHEN RFXT083 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_083,
CASE
    WHEN RFXT084 = 725 to 734 THEN 'Range of Values' 
WHEN RFXT084 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_084,
CASE
    WHEN RFXT085 = 734 to 743 THEN 'Range of Values' 
WHEN RFXT085 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_085,
CASE
    WHEN RFXT086 = 743 to 752 THEN 'Range of Values' 
WHEN RFXT086 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_086,
CASE
    WHEN RFXT087 = 752 to 761 THEN 'Range of Values' 
WHEN RFXT087 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_087,
CASE
    WHEN RFXT088 = 761 to 769 THEN 'Range of Values' 
WHEN RFXT088 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_088,
CASE
    WHEN RFXT089 = 769 to 778 THEN 'Range of Values' 
WHEN RFXT089 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_089,
CASE
    WHEN RFXT090 = 778 to 787 THEN 'Range of Values' 
WHEN RFXT090 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_090,
CASE
    WHEN RFXT091 = 787 to 796 THEN 'Range of Values' 
WHEN RFXT091 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_091,
CASE
    WHEN RFXT092 = 796 to 805 THEN 'Range of Values' 
WHEN RFXT092 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_092,
CASE
    WHEN RFXT093 = 805 to 814 THEN 'Range of Values' 
WHEN RFXT093 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_093,
CASE
    WHEN RFXT094 = 814 to 822 THEN 'Range of Values' 
WHEN RFXT094 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_094,
CASE
    WHEN RFXT095 = 822 to 831 THEN 'Range of Values' 
WHEN RFXT095 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_095,
CASE
    WHEN RFXT096 = 831 to 840 THEN 'Range of Values' 
WHEN RFXT096 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_096,
CASE
    WHEN RFXT097 = 840 to 849 THEN 'Range of Values' 
WHEN RFXT097 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_097,
CASE
    WHEN RFXT098 = 849 to 858 THEN 'Range of Values' 
WHEN RFXT098 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_098,
CASE
    WHEN RFXT099 = 858 to 867 THEN 'Range of Values' 
WHEN RFXT099 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_099,
CASE
    WHEN RFXT100 = 867 to 876 THEN 'Range of Values' 
WHEN RFXT100 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_100,
CASE
    WHEN RFXT101 = 876 to 884 THEN 'Range of Values' 
WHEN RFXT101 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_101,
CASE
    WHEN RFXT102 = 884 to 893 THEN 'Range of Values' 
WHEN RFXT102 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_102,
CASE
    WHEN RFXT103 = 893 to 902 THEN 'Range of Values' 
WHEN RFXT103 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_103,
CASE
    WHEN RFXT104 = 902 to 911 THEN 'Range of Values' 
WHEN RFXT104 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_104,
CASE
    WHEN RFXT105 = 911 to 920 THEN 'Range of Values' 
WHEN RFXT105 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_105,
CASE
    WHEN RFXT106 = 920 to 929 THEN 'Range of Values' 
WHEN RFXT106 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_106,
CASE
    WHEN RFXT107 = 929 to 937 THEN 'Range of Values' 
WHEN RFXT107 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_107,
CASE
    WHEN RFXT108 = 937 to 946 THEN 'Range of Values' 
WHEN RFXT108 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_108,
CASE
    WHEN RFXT109 = 946 to 955 THEN 'Range of Values' 
WHEN RFXT109 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_109,
CASE
    WHEN RFXT110 = 955 to 964 THEN 'Range of Values' 
WHEN RFXT110 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_110,
CASE
    WHEN RFXT111 = 964 to 973 THEN 'Range of Values' 
WHEN RFXT111 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_111,
CASE
    WHEN RFXT112 = 973 to 982 THEN 'Range of Values' 
WHEN RFXT112 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_112,
CASE
    WHEN RFXT113 = 982 to 990 THEN 'Range of Values' 
WHEN RFXT113 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_113,
CASE
    WHEN RFXT114 = 990 to 999 THEN 'Range of Values' 
WHEN RFXT114 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_114,
CASE
    WHEN RFXT115 = 999 to 1008 THEN 'Range of Values' 
WHEN RFXT115 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_115,
CASE
    WHEN RFXT116 = 1008 to 1017 THEN 'Range of Values' 
WHEN RFXT116 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_116,
CASE
    WHEN RFXT117 = 1017 to 1026 THEN 'Range of Values' 
WHEN RFXT117 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_117,
CASE
    WHEN RFXT118 = 1026 to 1035 THEN 'Range of Values' 
WHEN RFXT118 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_118,
CASE
    WHEN RFXT119 = 1035 to 1044 THEN 'Range of Values' 
WHEN RFXT119 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_119,
CASE
    WHEN RFXT120 = 1044 to 1052 THEN 'Range of Values' 
WHEN RFXT120 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_120,
CASE
    WHEN RFXT121 = 1052 to 1061 THEN 'Range of Values' 
WHEN RFXT121 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_121,
CASE
    WHEN RFXT122 = 1061 to 1070 THEN 'Range of Values' 
WHEN RFXT122 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_122,
CASE
    WHEN RFXT123 = 1070 to 1079 THEN 'Range of Values' 
WHEN RFXT123 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_123,
CASE
    WHEN RFXT124 = 1079 to 1088 THEN 'Range of Values' 
WHEN RFXT124 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_124,
CASE
    WHEN RFXT125 = 1088 to 1097 THEN 'Range of Values' 
WHEN RFXT125 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_125,
CASE
    WHEN RFXT126 = 1097 to 1105 THEN 'Range of Values' 
WHEN RFXT126 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_126,
CASE
    WHEN RFXT127 = 1105 to 1114 THEN 'Range of Values' 
WHEN RFXT127 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_127,
CASE
    WHEN RFXT128 = 1114 to 1123 THEN 'Range of Values' 
WHEN RFXT128 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_128,
CASE
    WHEN RFXT129 = 1123 to 1132 THEN 'Range of Values' 
WHEN RFXT129 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_129,
CASE
    WHEN RFXT130 = 1132 to 1141 THEN 'Range of Values' 
WHEN RFXT130 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_130,
CASE
    WHEN RFXT131 = 1141 to 1150 THEN 'Range of Values' 
WHEN RFXT131 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_131,
CASE
    WHEN RFXT132 = 1150 to 1159 THEN 'Range of Values' 
WHEN RFXT132 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_132,
CASE
    WHEN RFXT133 = 1159 to 1167 THEN 'Range of Values' 
WHEN RFXT133 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_133,
CASE
    WHEN RFXT134 = 1167 to 1176 THEN 'Range of Values' 
WHEN RFXT134 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_134,
CASE
    WHEN RFXT135 = 1176 to 1185 THEN 'Range of Values' 
WHEN RFXT135 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_135,
CASE
    WHEN RFXT136 = 1185 to 1194 THEN 'Range of Values' 
WHEN RFXT136 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_136,
CASE
    WHEN RFXT137 = 1194 to 1203 THEN 'Range of Values' 
WHEN RFXT137 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_137,
CASE
    WHEN RFXT138 = 1203 to 1212 THEN 'Range of Values' 
WHEN RFXT138 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_138,
CASE
    WHEN RFXT139 = 1212 to 1220 THEN 'Range of Values' 
WHEN RFXT139 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_139,
CASE
    WHEN RFXT140 = 1220 to 1229 THEN 'Range of Values' 
WHEN RFXT140 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_140,
CASE
    WHEN RFXT141 = 1229 to 1238 THEN 'Range of Values' 
WHEN RFXT141 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_141,
CASE
    WHEN RFXT142 = 1238 to 1247 THEN 'Range of Values' 
WHEN RFXT142 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_142,
CASE
    WHEN RFXT143 = 1247 to 1256 THEN 'Range of Values' 
WHEN RFXT143 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_143,
CASE
    WHEN RFXT144 = 1256 to 1265 THEN 'Range of Values' 
WHEN RFXT144 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_144,
CASE
    WHEN RFXT145 = 1265 to 1273 THEN 'Range of Values' 
WHEN RFXT145 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_145,
CASE
    WHEN RFXT146 = 1273 to 1282 THEN 'Range of Values' 
WHEN RFXT146 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_146,
CASE
    WHEN RFXT147 = 1282 to 1291 THEN 'Range of Values' 
WHEN RFXT147 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_147,
CASE
    WHEN RFXT148 = 1291 to 1300 THEN 'Range of Values' 
WHEN RFXT148 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_148,
CASE
    WHEN RFXT149 = 1300 to 1309 THEN 'Range of Values' 
WHEN RFXT149 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_149,
CASE
    WHEN RFXT150 = 1309 to 1318 THEN 'Range of Values' 
WHEN RFXT150 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_150,
CASE
    WHEN RFXT151 = 1318 to 1327 THEN 'Range of Values' 
WHEN RFXT151 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_151,
CASE
    WHEN RFXT152 = 1327 to 1335 THEN 'Range of Values' 
WHEN RFXT152 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_152,
CASE
    WHEN RFXT153 = 1335 to 1344 THEN 'Range of Values' 
WHEN RFXT153 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_153,
CASE
    WHEN RFXT154 = 1344 to 1353 THEN 'Range of Values' 
WHEN RFXT154 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_154,
CASE
    WHEN RFXT155 = 1353 to 1362 THEN 'Range of Values' 
WHEN RFXT155 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_155,
CASE
    WHEN RFXT156 = 1362 to 1371 THEN 'Range of Values' 
WHEN RFXT156 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_156,
CASE
    WHEN RFXT157 = 1371 to 1380 THEN 'Range of Values' 
WHEN RFXT157 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_157,
CASE
    WHEN RFXT158 = 1380 to 1388 THEN 'Range of Values' 
WHEN RFXT158 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_158,
CASE
    WHEN RFXT159 = 1388 to 1397 THEN 'Range of Values' 
WHEN RFXT159 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_159,
CASE
    WHEN RFXT160 = 1397 to 1406 THEN 'Range of Values' 
WHEN RFXT160 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_160,
CASE
    WHEN RFXT161 = 1406 to 1415 THEN 'Range of Values' 
WHEN RFXT161 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_161,
CASE
    WHEN RFXT162 = 1415 to 1424 THEN 'Range of Values' 
WHEN RFXT162 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_162,
CASE
    WHEN RFXT163 = 1424 to 1433 THEN 'Range of Values' 
WHEN RFXT163 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_163,
CASE
    WHEN RFXT164 = 1433 to 1441 THEN 'Range of Values' 
WHEN RFXT164 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_164,
CASE
    WHEN RFXT165 = 1441 to 1450 THEN 'Range of Values' 
WHEN RFXT165 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_165,
CASE
    WHEN RFXT166 = 1450 to 1459 THEN 'Range of Values' 
WHEN RFXT166 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_166,
CASE
    WHEN RFXT167 = 1459 to 1468 THEN 'Range of Values' 
WHEN RFXT167 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_167,
CASE
    WHEN RFXT168 = 1468 to 1477 THEN 'Range of Values' 
WHEN RFXT168 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_168,
CASE
    WHEN RFXT169 = 1477 to 1486 THEN 'Range of Values' 
WHEN RFXT169 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_169,
CASE
    WHEN RFXT170 = 1486 to 1495 THEN 'Range of Values' 
WHEN RFXT170 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_time_array_data_point_170,
CASE
    WHEN RFXC001 = -0.99 to 1.672 THEN 'Range of Values' 
WHEN RFXC001 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_001,
CASE
    WHEN RFXC002 = -2.639 to 2.374 THEN 'Range of Values' 
WHEN RFXC002 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_002,
CASE
    WHEN RFXC003 = -3.519 to 3.043 THEN 'Range of Values' 
WHEN RFXC003 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_003,
CASE
    WHEN RFXC004 = -4.318 to 3.44 THEN 'Range of Values' 
WHEN RFXC004 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_004,
CASE
    WHEN RFXC005 = -4.318 to 3.713 THEN 'Range of Values' 
WHEN RFXC005 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_005,
CASE
    WHEN RFXC006 = -4.318 to 3.922 THEN 'Range of Values' 
WHEN RFXC006 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_006,
CASE
    WHEN RFXC007 = -4.318 to 4.087 THEN 'Range of Values' 
WHEN RFXC007 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_007,
CASE
    WHEN RFXC008 = -4.318 to 4.212 THEN 'Range of Values' 
WHEN RFXC008 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_008,
CASE
    WHEN RFXC009 = -4.318 to 4.296 THEN 'Range of Values' 
WHEN RFXC009 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_009,
CASE
    WHEN RFXC010 = -4.318 to 4.346 THEN 'Range of Values' 
WHEN RFXC010 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_010,
CASE
    WHEN RFXC011 = -4.318 to 4.368 THEN 'Range of Values' 
WHEN RFXC011 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_011,
CASE
    WHEN RFXC012 = -4.568 to 4.372 THEN 'Range of Values' 
WHEN RFXC012 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_012,
CASE
    WHEN RFXC013 = -4.932 to 4.723 THEN 'Range of Values' 
WHEN RFXC013 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_013,
CASE
    WHEN RFXC014 = -5.435 to 4.876 THEN 'Range of Values' 
WHEN RFXC014 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_014,
CASE
    WHEN RFXC015 = -5.651 to 5.056 THEN 'Range of Values' 
WHEN RFXC015 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_015,
CASE
    WHEN RFXC016 = -5.63 to 5.19 THEN 'Range of Values' 
WHEN RFXC016 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_016,
CASE
    WHEN RFXC017 = -5.944 to 5.265 THEN 'Range of Values' 
WHEN RFXC017 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_017,
CASE
    WHEN RFXC018 = -6.346 to 5.306 THEN 'Range of Values' 
WHEN RFXC018 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_018,
CASE
    WHEN RFXC019 = -6.625 to 5.328 THEN 'Range of Values' 
WHEN RFXC019 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_019,
CASE
    WHEN RFXC020 = -7.265 to 5.343 THEN 'Range of Values' 
WHEN RFXC020 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_020,
CASE
    WHEN RFXC021 = -7.841 to 5.355 THEN 'Range of Values' 
WHEN RFXC021 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_021,
CASE
    WHEN RFXC022 = -8.123 to 5.367 THEN 'Range of Values' 
WHEN RFXC022 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_022,
CASE
    WHEN RFXC023 = -8.123 to 5.376 THEN 'Range of Values' 
WHEN RFXC023 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_023,
CASE
    WHEN RFXC024 = -8.123 to 5.384 THEN 'Range of Values' 
WHEN RFXC024 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_024,
CASE
    WHEN RFXC025 = -8.123 to 5.391 THEN 'Range of Values' 
WHEN RFXC025 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_025,
CASE
    WHEN RFXC026 = -8.122 to 5.395 THEN 'Range of Values' 
WHEN RFXC026 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_026,
CASE
    WHEN RFXC027 = -8.122 to 5.395 THEN 'Range of Values' 
WHEN RFXC027 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_027,
CASE
    WHEN RFXC028 = -8.122 to 5.394 THEN 'Range of Values' 
WHEN RFXC028 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_028,
CASE
    WHEN RFXC029 = -8.215 to 5.392 THEN 'Range of Values' 
WHEN RFXC029 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_029,
CASE
    WHEN RFXC030 = -8.215 to 5.387 THEN 'Range of Values' 
WHEN RFXC030 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_030,
CASE
    WHEN RFXC031 = -8.215 to 5.379 THEN 'Range of Values' 
WHEN RFXC031 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_031,
CASE
    WHEN RFXC032 = -8.215 to 5.37 THEN 'Range of Values' 
WHEN RFXC032 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_032,
CASE
    WHEN RFXC033 = -8.215 to 5.36 THEN 'Range of Values' 
WHEN RFXC033 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_033,
CASE
    WHEN RFXC034 = -8.215 to 5.348 THEN 'Range of Values' 
WHEN RFXC034 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_034,
CASE
    WHEN RFXC035 = -8.214 to 5.335 THEN 'Range of Values' 
WHEN RFXC035 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_035,
CASE
    WHEN RFXC036 = -8.214 to 5.323 THEN 'Range of Values' 
WHEN RFXC036 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_036,
CASE
    WHEN RFXC037 = -7.948 to 5.312 THEN 'Range of Values' 
WHEN RFXC037 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_037,
CASE
    WHEN RFXC038 = -7.475 to 5.302 THEN 'Range of Values' 
WHEN RFXC038 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_038,
CASE
    WHEN RFXC039 = -7.147 to 5.291 THEN 'Range of Values' 
WHEN RFXC039 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_039,
CASE
    WHEN RFXC040 = -7.236 to 5.284 THEN 'Range of Values' 
WHEN RFXC040 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_040,
CASE
    WHEN RFXC041 = -7.241 to 5.278 THEN 'Range of Values' 
WHEN RFXC041 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_041,
CASE
    WHEN RFXC042 = -7.246 to 5.273 THEN 'Range of Values' 
WHEN RFXC042 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_042,
CASE
    WHEN RFXC043 = -7.252 to 5.269 THEN 'Range of Values' 
WHEN RFXC043 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_043,
CASE
    WHEN RFXC044 = -7.304 to 5.268 THEN 'Range of Values' 
WHEN RFXC044 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_044,
CASE
    WHEN RFXC045 = -7.831 to 5.267 THEN 'Range of Values' 
WHEN RFXC045 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_045,
CASE
    WHEN RFXC046 = -8.174 to 5.267 THEN 'Range of Values' 
WHEN RFXC046 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_046,
CASE
    WHEN RFXC047 = -8.174 to 5.267 THEN 'Range of Values' 
WHEN RFXC047 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_047,
CASE
    WHEN RFXC048 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC048 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_048,
CASE
    WHEN RFXC049 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC049 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_049,
CASE
    WHEN RFXC050 = -8.174 to 5.269 THEN 'Range of Values' 
WHEN RFXC050 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_050,
CASE
    WHEN RFXC051 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC051 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_051,
CASE
    WHEN RFXC052 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC052 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_052,
CASE
    WHEN RFXC053 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC053 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_053,
CASE
    WHEN RFXC054 = -8.174 to 5.268 THEN 'Range of Values' 
WHEN RFXC054 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_054,
CASE
    WHEN RFXC055 = -8.174 to 5.266 THEN 'Range of Values' 
WHEN RFXC055 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_055,
CASE
    WHEN RFXC056 = -7.553 to 5.265 THEN 'Range of Values' 
WHEN RFXC056 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_056,
CASE
    WHEN RFXC057 = -7.709 to 5.264 THEN 'Range of Values' 
WHEN RFXC057 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_057,
CASE
    WHEN RFXC058 = -7.962 to 5.262 THEN 'Range of Values' 
WHEN RFXC058 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_058,
CASE
    WHEN RFXC059 = -7.774 to 5.259 THEN 'Range of Values' 
WHEN RFXC059 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_059,
CASE
    WHEN RFXC060 = -7.556 to 5.256 THEN 'Range of Values' 
WHEN RFXC060 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_060,
CASE
    WHEN RFXC061 = -7.553 to 5.253 THEN 'Range of Values' 
WHEN RFXC061 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_061,
CASE
    WHEN RFXC062 = -7.553 to 5.25 THEN 'Range of Values' 
WHEN RFXC062 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_062,
CASE
    WHEN RFXC063 = -7.553 to 5.245 THEN 'Range of Values' 
WHEN RFXC063 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_063,
CASE
    WHEN RFXC064 = -7.553 to 5.241 THEN 'Range of Values' 
WHEN RFXC064 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_064,
CASE
    WHEN RFXC065 = -7.553 to 5.237 THEN 'Range of Values' 
WHEN RFXC065 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_065,
CASE
    WHEN RFXC066 = -7.553 to 5.233 THEN 'Range of Values' 
WHEN RFXC066 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_066,
CASE
    WHEN RFXC067 = -7.553 to 5.229 THEN 'Range of Values' 
WHEN RFXC067 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_067,
CASE
    WHEN RFXC068 = -7.553 to 5.225 THEN 'Range of Values' 
WHEN RFXC068 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_068,
CASE
    WHEN RFXC069 = -7.553 to 5.222 THEN 'Range of Values' 
WHEN RFXC069 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_069,
CASE
    WHEN RFXC070 = -7.553 to 5.219 THEN 'Range of Values' 
WHEN RFXC070 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_070,
CASE
    WHEN RFXC071 = -7.553 to 5.215 THEN 'Range of Values' 
WHEN RFXC071 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_071,
CASE
    WHEN RFXC072 = -7.553 to 5.212 THEN 'Range of Values' 
WHEN RFXC072 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_072,
CASE
    WHEN RFXC073 = -7.553 to 5.21 THEN 'Range of Values' 
WHEN RFXC073 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_073,
CASE
    WHEN RFXC074 = -7.553 to 5.206 THEN 'Range of Values' 
WHEN RFXC074 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_074,
CASE
    WHEN RFXC075 = -7.553 to 5.202 THEN 'Range of Values' 
WHEN RFXC075 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_075,
CASE
    WHEN RFXC076 = -7.553 to 5.198 THEN 'Range of Values' 
WHEN RFXC076 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_076,
CASE
    WHEN RFXC077 = -7.553 to 5.193 THEN 'Range of Values' 
WHEN RFXC077 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_077,
CASE
    WHEN RFXC078 = -7.553 to 5.187 THEN 'Range of Values' 
WHEN RFXC078 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_078,
CASE
    WHEN RFXC079 = -7.553 to 5.179 THEN 'Range of Values' 
WHEN RFXC079 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_079,
CASE
    WHEN RFXC080 = -7.553 to 5.171 THEN 'Range of Values' 
WHEN RFXC080 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_080,
CASE
    WHEN RFXC081 = -7.428 to 5.163 THEN 'Range of Values' 
WHEN RFXC081 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_081,
CASE
    WHEN RFXC082 = -7.428 to 5.154 THEN 'Range of Values' 
WHEN RFXC082 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_082,
CASE
    WHEN RFXC083 = -7.428 to 5.144 THEN 'Range of Values' 
WHEN RFXC083 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_083,
CASE
    WHEN RFXC084 = -7.428 to 5.134 THEN 'Range of Values' 
WHEN RFXC084 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_084,
CASE
    WHEN RFXC085 = -7.428 to 5.124 THEN 'Range of Values' 
WHEN RFXC085 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_085,
CASE
    WHEN RFXC086 = -7.428 to 5.109 THEN 'Range of Values' 
WHEN RFXC086 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_086,
CASE
    WHEN RFXC087 = -7.686 to 5.115 THEN 'Range of Values' 
WHEN RFXC087 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_087,
CASE
    WHEN RFXC088 = -7.686 to 5.204 THEN 'Range of Values' 
WHEN RFXC088 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_088,
CASE
    WHEN RFXC089 = -7.686 to 5.308 THEN 'Range of Values' 
WHEN RFXC089 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_089,
CASE
    WHEN RFXC090 = -7.524 to 5.473 THEN 'Range of Values' 
WHEN RFXC090 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_090,
CASE
    WHEN RFXC091 = -7.428 to 5.647 THEN 'Range of Values' 
WHEN RFXC091 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_091,
CASE
    WHEN RFXC092 = -7.428 to 5.708 THEN 'Range of Values' 
WHEN RFXC092 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_092,
CASE
    WHEN RFXC093 = -7.428 to 5.646 THEN 'Range of Values' 
WHEN RFXC093 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_093,
CASE
    WHEN RFXC094 = -7.428 to 5.072 THEN 'Range of Values' 
WHEN RFXC094 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_094,
CASE
    WHEN RFXC095 = -7.428 to 5.07 THEN 'Range of Values' 
WHEN RFXC095 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_095,
CASE
    WHEN RFXC096 = -5.311 to 5.056 THEN 'Range of Values' 
WHEN RFXC096 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_096,
CASE
    WHEN RFXC097 = -5.212 to 5.018 THEN 'Range of Values' 
WHEN RFXC097 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_097,
CASE
    WHEN RFXC098 = -5.175 to 4.941 THEN 'Range of Values' 
WHEN RFXC098 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_098,
CASE
    WHEN RFXC099 = -5.963 to 4.802 THEN 'Range of Values' 
WHEN RFXC099 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_099,
CASE
    WHEN RFXC100 = -6.78 to 4.841 THEN 'Range of Values' 
WHEN RFXC100 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_100,
CASE
    WHEN RFXC101 = -7.379 to 4.92 THEN 'Range of Values' 
WHEN RFXC101 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_101,
CASE
    WHEN RFXC102 = -7.379 to 4.982 THEN 'Range of Values' 
WHEN RFXC102 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_102,
CASE
    WHEN RFXC103 = -7.379 to 5.038 THEN 'Range of Values' 
WHEN RFXC103 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_103,
CASE
    WHEN RFXC104 = -7.379 to 5.139 THEN 'Range of Values' 
WHEN RFXC104 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_104,
CASE
    WHEN RFXC105 = -7.379 to 5.169 THEN 'Range of Values' 
WHEN RFXC105 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_105,
CASE
    WHEN RFXC106 = -7.379 to 5.198 THEN 'Range of Values' 
WHEN RFXC106 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_106,
CASE
    WHEN RFXC107 = -7.379 to 5.253 THEN 'Range of Values' 
WHEN RFXC107 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_107,
CASE
    WHEN RFXC108 = -7.379 to 5.312 THEN 'Range of Values' 
WHEN RFXC108 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_108,
CASE
    WHEN RFXC109 = -7.379 to 5.37 THEN 'Range of Values' 
WHEN RFXC109 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_109,
CASE
    WHEN RFXC110 = -7.379 to 5.43 THEN 'Range of Values' 
WHEN RFXC110 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_110,
CASE
    WHEN RFXC111 = -7.379 to 5.489 THEN 'Range of Values' 
WHEN RFXC111 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_111,
CASE
    WHEN RFXC112 = -7.379 to 5.544 THEN 'Range of Values' 
WHEN RFXC112 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_112,
CASE
    WHEN RFXC113 = -7.379 to 5.598 THEN 'Range of Values' 
WHEN RFXC113 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_113,
CASE
    WHEN RFXC114 = -7.555 to 5.648 THEN 'Range of Values' 
WHEN RFXC114 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_114,
CASE
    WHEN RFXC115 = -7.555 to 5.694 THEN 'Range of Values' 
WHEN RFXC115 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_115,
CASE
    WHEN RFXC116 = -7.555 to 5.736 THEN 'Range of Values' 
WHEN RFXC116 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_116,
CASE
    WHEN RFXC117 = -7.555 to 5.769 THEN 'Range of Values' 
WHEN RFXC117 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_117,
CASE
    WHEN RFXC118 = -7.555 to 5.789 THEN 'Range of Values' 
WHEN RFXC118 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_118,
CASE
    WHEN RFXC119 = -7.555 to 5.787 THEN 'Range of Values' 
WHEN RFXC119 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_119,
CASE
    WHEN RFXC120 = -7.555 to 5.753 THEN 'Range of Values' 
WHEN RFXC120 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_120,
CASE
    WHEN RFXC121 = -4.043 to 5.67 THEN 'Range of Values' 
WHEN RFXC121 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_121,
CASE
    WHEN RFXC122 = -3.747 to 5.504 THEN 'Range of Values' 
WHEN RFXC122 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_122,
CASE
    WHEN RFXC123 = -3.833 to 5.4 THEN 'Range of Values' 
WHEN RFXC123 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_123,
CASE
    WHEN RFXC124 = -3.925 to 5.8 THEN 'Range of Values' 
WHEN RFXC124 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_124,
CASE
    WHEN RFXC125 = -4.185 to 5.948 THEN 'Range of Values' 
WHEN RFXC125 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_125,
CASE
    WHEN RFXC126 = -4.707 to 6.069 THEN 'Range of Values' 
WHEN RFXC126 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_126,
CASE
    WHEN RFXC127 = -5.226 to 6.246 THEN 'Range of Values' 
WHEN RFXC127 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_127,
CASE
    WHEN RFXC128 = -5.724 to 6.836 THEN 'Range of Values' 
WHEN RFXC128 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_128,
CASE
    WHEN RFXC129 = -6.177 to 7.015 THEN 'Range of Values' 
WHEN RFXC129 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_129,
CASE
    WHEN RFXC130 = -6.553 to 7.144 THEN 'Range of Values' 
WHEN RFXC130 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_130,
CASE
    WHEN RFXC131 = -6.828 to 7.26 THEN 'Range of Values' 
WHEN RFXC131 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_131,
CASE
    WHEN RFXC132 = -6.979 to 7.33 THEN 'Range of Values' 
WHEN RFXC132 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_132,
CASE
    WHEN RFXC133 = -6.981 to 7.369 THEN 'Range of Values' 
WHEN RFXC133 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_133,
CASE
    WHEN RFXC134 = -6.984 to 7.408 THEN 'Range of Values' 
WHEN RFXC134 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_134,
CASE
    WHEN RFXC135 = -7.561 to 7.446 THEN 'Range of Values' 
WHEN RFXC135 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_135,
CASE
    WHEN RFXC136 = -7.79 to 7.485 THEN 'Range of Values' 
WHEN RFXC136 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_136,
CASE
    WHEN RFXC137 = -7.79 to 7.524 THEN 'Range of Values' 
WHEN RFXC137 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_137,
CASE
    WHEN RFXC138 = -7.79 to 7.563 THEN 'Range of Values' 
WHEN RFXC138 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_138,
CASE
    WHEN RFXC139 = -7.79 to 7.601 THEN 'Range of Values' 
WHEN RFXC139 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_139,
CASE
    WHEN RFXC140 = -7.79 to 7.64 THEN 'Range of Values' 
WHEN RFXC140 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_140,
CASE
    WHEN RFXC141 = -6.609 to 7.679 THEN 'Range of Values' 
WHEN RFXC141 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_141,
CASE
    WHEN RFXC142 = -6.012 to 7.717 THEN 'Range of Values' 
WHEN RFXC142 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_142,
CASE
    WHEN RFXC143 = -6.053 to 7.756 THEN 'Range of Values' 
WHEN RFXC143 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_143,
CASE
    WHEN RFXC144 = -6.349 to 7.795 THEN 'Range of Values' 
WHEN RFXC144 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_144,
CASE
    WHEN RFXC145 = -6.552 to 7.833 THEN 'Range of Values' 
WHEN RFXC145 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_145,
CASE
    WHEN RFXC146 = -6.653 to 7.872 THEN 'Range of Values' 
WHEN RFXC146 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_146,
CASE
    WHEN RFXC147 = -6.653 to 7.899 THEN 'Range of Values' 
WHEN RFXC147 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_147,
CASE
    WHEN RFXC148 = -6.653 to 7.878 THEN 'Range of Values' 
WHEN RFXC148 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_148,
CASE
    WHEN RFXC149 = -6.653 to 7.588 THEN 'Range of Values' 
WHEN RFXC149 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_149,
CASE
    WHEN RFXC150 = -6.653 to 6.747 THEN 'Range of Values' 
WHEN RFXC150 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_150,
CASE
    WHEN RFXC151 = -6.653 to 5.905 THEN 'Range of Values' 
WHEN RFXC151 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_151,
CASE
    WHEN RFXC152 = -6.653 to 5.927 THEN 'Range of Values' 
WHEN RFXC152 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_152,
CASE
    WHEN RFXC153 = -6.93 to 5.998 THEN 'Range of Values' 
WHEN RFXC153 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_153,
CASE
    WHEN RFXC154 = -7.054 to 6.065 THEN 'Range of Values' 
WHEN RFXC154 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_154,
CASE
    WHEN RFXC155 = -7.052 to 6.124 THEN 'Range of Values' 
WHEN RFXC155 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_155,
CASE
    WHEN RFXC156 = -7.051 to 6.17 THEN 'Range of Values' 
WHEN RFXC156 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_156,
CASE
    WHEN RFXC157 = -6.91 to 6.194 THEN 'Range of Values' 
WHEN RFXC157 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_157,
CASE
    WHEN RFXC158 = -6.493 to 6.173 THEN 'Range of Values' 
WHEN RFXC158 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_158,
CASE
    WHEN RFXC159 = -5.926 to 6.066 THEN 'Range of Values' 
WHEN RFXC159 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_159,
CASE
    WHEN RFXC160 = -5.276 to 5.694 THEN 'Range of Values' 
WHEN RFXC160 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_160,
CASE
    WHEN RFXC161 = -4.583 to 4.913 THEN 'Range of Values' 
WHEN RFXC161 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_161,
CASE
    WHEN RFXC162 = -3.867 to 4.335 THEN 'Range of Values' 
WHEN RFXC162 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_162,
CASE
    WHEN RFXC163 = -3.139 to 3.842 THEN 'Range of Values' 
WHEN RFXC163 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_163,
CASE
    WHEN RFXC164 = -2.406 to 3.251 THEN 'Range of Values' 
WHEN RFXC164 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_164,
CASE
    WHEN RFXC165 = -1.67 to 2.408 THEN 'Range of Values' 
WHEN RFXC165 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_165,
CASE
    WHEN RFXC166 = -0.931 to 1.55 THEN 'Range of Values' 
WHEN RFXC166 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_166,
CASE
    WHEN RFXC167 = -0.371 to 0.812 THEN 'Range of Values' 
WHEN RFXC167 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_167,
CASE
    WHEN RFXC168 = -0.154 to 0.114 THEN 'Range of Values' 
WHEN RFXC168 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_168,
CASE
    WHEN RFXC169 = -0.9 to 0.676 THEN 'Range of Values' 
WHEN RFXC169 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_169,
CASE
    WHEN RFXC170 = -1.758 to 1.498 THEN 'Range of Values' 
WHEN RFXC170 IS NULL THEN NULL 
ELSE NULL 
 END as reflex_compliance_array_data_point_170,
 FROM { ref('stg_audiometry_acoustic_reflex_examination') }