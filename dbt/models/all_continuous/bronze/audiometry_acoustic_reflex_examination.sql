SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXSEAR AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Right Ear' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXSEAR AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Left Ear' -- categorize string values 
WHEN RFXSEAR IS NULL THEN NULL 
ELSE SAFE_CAST(RFXSEAR AS STRING) 
 END as ear_tested, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '85 dB and 1 kHz' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN '95 dB and 1 kHz' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN '105 dB and 1 kHz' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN '85 dB and 2 kHz' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN '95 dB and 2 kHz' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXLEVEL AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN '105 dB and 2 kHz' -- categorize string values 
WHEN RFXLEVEL IS NULL THEN NULL 
ELSE SAFE_CAST(RFXLEVEL AS STRING) 
 END as sound_stimulus_level, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXRFXDC AS FLOAT64),0) AS INT64) AS STRING) = '0' THEN 'False' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(RFXRFXDC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'True' -- categorize string values 
WHEN RFXRFXDC IS NULL THEN NULL 
ELSE SAFE_CAST(RFXRFXDC AS STRING) 
 END as reflex_detected, 

CASE
    WHEN RFXT001 IS NOT NULL THEN SAFE_CAST(RFXT001 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT001 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT001 AS FLOAT64) 
 END as reflex_time_array_data_point_001, 

CASE
    WHEN RFXT002 IS NOT NULL THEN SAFE_CAST(RFXT002 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT002 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT002 AS FLOAT64) 
 END as reflex_time_array_data_point_002, 

CASE
    WHEN RFXT003 IS NOT NULL THEN SAFE_CAST(RFXT003 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT003 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT003 AS FLOAT64) 
 END as reflex_time_array_data_point_003, 

CASE
    WHEN RFXT004 IS NOT NULL THEN SAFE_CAST(RFXT004 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT004 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT004 AS FLOAT64) 
 END as reflex_time_array_data_point_004, 

CASE
    WHEN RFXT005 IS NOT NULL THEN SAFE_CAST(RFXT005 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT005 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT005 AS FLOAT64) 
 END as reflex_time_array_data_point_005, 

CASE
    WHEN RFXT006 IS NOT NULL THEN SAFE_CAST(RFXT006 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT006 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT006 AS FLOAT64) 
 END as reflex_time_array_data_point_006, 

CASE
    WHEN RFXT007 IS NOT NULL THEN SAFE_CAST(RFXT007 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT007 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT007 AS FLOAT64) 
 END as reflex_time_array_data_point_007, 

CASE
    WHEN RFXT008 IS NOT NULL THEN SAFE_CAST(RFXT008 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT008 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT008 AS FLOAT64) 
 END as reflex_time_array_data_point_008, 

CASE
    WHEN RFXT009 IS NOT NULL THEN SAFE_CAST(RFXT009 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT009 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT009 AS FLOAT64) 
 END as reflex_time_array_data_point_009, 

CASE
    WHEN RFXT010 IS NOT NULL THEN SAFE_CAST(RFXT010 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT010 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT010 AS FLOAT64) 
 END as reflex_time_array_data_point_010, 

CASE
    WHEN RFXT011 IS NOT NULL THEN SAFE_CAST(RFXT011 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT011 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT011 AS FLOAT64) 
 END as reflex_time_array_data_point_011, 

CASE
    WHEN RFXT012 IS NOT NULL THEN SAFE_CAST(RFXT012 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT012 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT012 AS FLOAT64) 
 END as reflex_time_array_data_point_012, 

CASE
    WHEN RFXT013 IS NOT NULL THEN SAFE_CAST(RFXT013 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT013 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT013 AS FLOAT64) 
 END as reflex_time_array_data_point_013, 

CASE
    WHEN RFXT014 IS NOT NULL THEN SAFE_CAST(RFXT014 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT014 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT014 AS FLOAT64) 
 END as reflex_time_array_data_point_014, 

CASE
    WHEN RFXT015 IS NOT NULL THEN SAFE_CAST(RFXT015 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT015 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT015 AS FLOAT64) 
 END as reflex_time_array_data_point_015, 

CASE
    WHEN RFXT016 IS NOT NULL THEN SAFE_CAST(RFXT016 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT016 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT016 AS FLOAT64) 
 END as reflex_time_array_data_point_016, 

CASE
    WHEN RFXT017 IS NOT NULL THEN SAFE_CAST(RFXT017 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT017 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT017 AS FLOAT64) 
 END as reflex_time_array_data_point_017, 

CASE
    WHEN RFXT018 IS NOT NULL THEN SAFE_CAST(RFXT018 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT018 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT018 AS FLOAT64) 
 END as reflex_time_array_data_point_018, 

CASE
    WHEN RFXT019 IS NOT NULL THEN SAFE_CAST(RFXT019 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT019 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT019 AS FLOAT64) 
 END as reflex_time_array_data_point_019, 

CASE
    WHEN RFXT020 IS NOT NULL THEN SAFE_CAST(RFXT020 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT020 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT020 AS FLOAT64) 
 END as reflex_time_array_data_point_020, 

CASE
    WHEN RFXT021 IS NOT NULL THEN SAFE_CAST(RFXT021 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT021 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT021 AS FLOAT64) 
 END as reflex_time_array_data_point_021, 

CASE
    WHEN RFXT022 IS NOT NULL THEN SAFE_CAST(RFXT022 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT022 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT022 AS FLOAT64) 
 END as reflex_time_array_data_point_022, 

CASE
    WHEN RFXT023 IS NOT NULL THEN SAFE_CAST(RFXT023 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT023 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT023 AS FLOAT64) 
 END as reflex_time_array_data_point_023, 

CASE
    WHEN RFXT024 IS NOT NULL THEN SAFE_CAST(RFXT024 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT024 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT024 AS FLOAT64) 
 END as reflex_time_array_data_point_024, 

CASE
    WHEN RFXT025 IS NOT NULL THEN SAFE_CAST(RFXT025 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT025 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT025 AS FLOAT64) 
 END as reflex_time_array_data_point_025, 

CASE
    WHEN RFXT026 IS NOT NULL THEN SAFE_CAST(RFXT026 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT026 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT026 AS FLOAT64) 
 END as reflex_time_array_data_point_026, 

CASE
    WHEN RFXT027 IS NOT NULL THEN SAFE_CAST(RFXT027 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT027 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT027 AS FLOAT64) 
 END as reflex_time_array_data_point_027, 

CASE
    WHEN RFXT028 IS NOT NULL THEN SAFE_CAST(RFXT028 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT028 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT028 AS FLOAT64) 
 END as reflex_time_array_data_point_028, 

CASE
    WHEN RFXT029 IS NOT NULL THEN SAFE_CAST(RFXT029 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT029 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT029 AS FLOAT64) 
 END as reflex_time_array_data_point_029, 

CASE
    WHEN RFXT030 IS NOT NULL THEN SAFE_CAST(RFXT030 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT030 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT030 AS FLOAT64) 
 END as reflex_time_array_data_point_030, 

CASE
    WHEN RFXT031 IS NOT NULL THEN SAFE_CAST(RFXT031 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT031 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT031 AS FLOAT64) 
 END as reflex_time_array_data_point_031, 

CASE
    WHEN RFXT032 IS NOT NULL THEN SAFE_CAST(RFXT032 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT032 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT032 AS FLOAT64) 
 END as reflex_time_array_data_point_032, 

CASE
    WHEN RFXT033 IS NOT NULL THEN SAFE_CAST(RFXT033 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT033 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT033 AS FLOAT64) 
 END as reflex_time_array_data_point_033, 

CASE
    WHEN RFXT034 IS NOT NULL THEN SAFE_CAST(RFXT034 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT034 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT034 AS FLOAT64) 
 END as reflex_time_array_data_point_034, 

CASE
    WHEN RFXT035 IS NOT NULL THEN SAFE_CAST(RFXT035 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT035 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT035 AS FLOAT64) 
 END as reflex_time_array_data_point_035, 

CASE
    WHEN RFXT036 IS NOT NULL THEN SAFE_CAST(RFXT036 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT036 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT036 AS FLOAT64) 
 END as reflex_time_array_data_point_036, 

CASE
    WHEN RFXT037 IS NOT NULL THEN SAFE_CAST(RFXT037 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT037 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT037 AS FLOAT64) 
 END as reflex_time_array_data_point_037, 

CASE
    WHEN RFXT038 IS NOT NULL THEN SAFE_CAST(RFXT038 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT038 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT038 AS FLOAT64) 
 END as reflex_time_array_data_point_038, 

CASE
    WHEN RFXT039 IS NOT NULL THEN SAFE_CAST(RFXT039 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT039 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT039 AS FLOAT64) 
 END as reflex_time_array_data_point_039, 

CASE
    WHEN RFXT040 IS NOT NULL THEN SAFE_CAST(RFXT040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT040 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT040 AS FLOAT64) 
 END as reflex_time_array_data_point_040, 

CASE
    WHEN RFXT041 IS NOT NULL THEN SAFE_CAST(RFXT041 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT041 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT041 AS FLOAT64) 
 END as reflex_time_array_data_point_041, 

CASE
    WHEN RFXT042 IS NOT NULL THEN SAFE_CAST(RFXT042 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT042 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT042 AS FLOAT64) 
 END as reflex_time_array_data_point_042, 

CASE
    WHEN RFXT043 IS NOT NULL THEN SAFE_CAST(RFXT043 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT043 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT043 AS FLOAT64) 
 END as reflex_time_array_data_point_043, 

CASE
    WHEN RFXT044 IS NOT NULL THEN SAFE_CAST(RFXT044 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT044 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT044 AS FLOAT64) 
 END as reflex_time_array_data_point_044, 

CASE
    WHEN RFXT045 IS NOT NULL THEN SAFE_CAST(RFXT045 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT045 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT045 AS FLOAT64) 
 END as reflex_time_array_data_point_045, 

CASE
    WHEN RFXT046 IS NOT NULL THEN SAFE_CAST(RFXT046 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT046 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT046 AS FLOAT64) 
 END as reflex_time_array_data_point_046, 

CASE
    WHEN RFXT047 IS NOT NULL THEN SAFE_CAST(RFXT047 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT047 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT047 AS FLOAT64) 
 END as reflex_time_array_data_point_047, 

CASE
    WHEN RFXT048 IS NOT NULL THEN SAFE_CAST(RFXT048 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT048 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT048 AS FLOAT64) 
 END as reflex_time_array_data_point_048, 

CASE
    WHEN RFXT049 IS NOT NULL THEN SAFE_CAST(RFXT049 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT049 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT049 AS FLOAT64) 
 END as reflex_time_array_data_point_049, 

CASE
    WHEN RFXT050 IS NOT NULL THEN SAFE_CAST(RFXT050 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT050 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT050 AS FLOAT64) 
 END as reflex_time_array_data_point_050, 

CASE
    WHEN RFXT051 IS NOT NULL THEN SAFE_CAST(RFXT051 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT051 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT051 AS FLOAT64) 
 END as reflex_time_array_data_point_051, 

CASE
    WHEN RFXT052 IS NOT NULL THEN SAFE_CAST(RFXT052 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT052 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT052 AS FLOAT64) 
 END as reflex_time_array_data_point_052, 

CASE
    WHEN RFXT053 IS NOT NULL THEN SAFE_CAST(RFXT053 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT053 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT053 AS FLOAT64) 
 END as reflex_time_array_data_point_053, 

CASE
    WHEN RFXT054 IS NOT NULL THEN SAFE_CAST(RFXT054 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT054 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT054 AS FLOAT64) 
 END as reflex_time_array_data_point_054, 

CASE
    WHEN RFXT055 IS NOT NULL THEN SAFE_CAST(RFXT055 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT055 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT055 AS FLOAT64) 
 END as reflex_time_array_data_point_055, 

CASE
    WHEN RFXT056 IS NOT NULL THEN SAFE_CAST(RFXT056 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT056 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT056 AS FLOAT64) 
 END as reflex_time_array_data_point_056, 

CASE
    WHEN RFXT057 IS NOT NULL THEN SAFE_CAST(RFXT057 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT057 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT057 AS FLOAT64) 
 END as reflex_time_array_data_point_057, 

CASE
    WHEN RFXT058 IS NOT NULL THEN SAFE_CAST(RFXT058 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT058 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT058 AS FLOAT64) 
 END as reflex_time_array_data_point_058, 

CASE
    WHEN RFXT059 IS NOT NULL THEN SAFE_CAST(RFXT059 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT059 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT059 AS FLOAT64) 
 END as reflex_time_array_data_point_059, 

CASE
    WHEN RFXT060 IS NOT NULL THEN SAFE_CAST(RFXT060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT060 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT060 AS FLOAT64) 
 END as reflex_time_array_data_point_060, 

CASE
    WHEN RFXT061 IS NOT NULL THEN SAFE_CAST(RFXT061 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT061 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT061 AS FLOAT64) 
 END as reflex_time_array_data_point_061, 

CASE
    WHEN RFXT062 IS NOT NULL THEN SAFE_CAST(RFXT062 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT062 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT062 AS FLOAT64) 
 END as reflex_time_array_data_point_062, 

CASE
    WHEN RFXT063 IS NOT NULL THEN SAFE_CAST(RFXT063 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT063 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT063 AS FLOAT64) 
 END as reflex_time_array_data_point_063, 

CASE
    WHEN RFXT064 IS NOT NULL THEN SAFE_CAST(RFXT064 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT064 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT064 AS FLOAT64) 
 END as reflex_time_array_data_point_064, 

CASE
    WHEN RFXT065 IS NOT NULL THEN SAFE_CAST(RFXT065 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT065 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT065 AS FLOAT64) 
 END as reflex_time_array_data_point_065, 

CASE
    WHEN RFXT066 IS NOT NULL THEN SAFE_CAST(RFXT066 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT066 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT066 AS FLOAT64) 
 END as reflex_time_array_data_point_066, 

CASE
    WHEN RFXT067 IS NOT NULL THEN SAFE_CAST(RFXT067 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT067 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT067 AS FLOAT64) 
 END as reflex_time_array_data_point_067, 

CASE
    WHEN RFXT068 IS NOT NULL THEN SAFE_CAST(RFXT068 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT068 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT068 AS FLOAT64) 
 END as reflex_time_array_data_point_068, 

CASE
    WHEN RFXT069 IS NOT NULL THEN SAFE_CAST(RFXT069 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT069 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT069 AS FLOAT64) 
 END as reflex_time_array_data_point_069, 

CASE
    WHEN RFXT070 IS NOT NULL THEN SAFE_CAST(RFXT070 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT070 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT070 AS FLOAT64) 
 END as reflex_time_array_data_point_070, 

CASE
    WHEN RFXT071 IS NOT NULL THEN SAFE_CAST(RFXT071 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT071 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT071 AS FLOAT64) 
 END as reflex_time_array_data_point_071, 

CASE
    WHEN RFXT072 IS NOT NULL THEN SAFE_CAST(RFXT072 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT072 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT072 AS FLOAT64) 
 END as reflex_time_array_data_point_072, 

CASE
    WHEN RFXT073 IS NOT NULL THEN SAFE_CAST(RFXT073 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT073 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT073 AS FLOAT64) 
 END as reflex_time_array_data_point_073, 

CASE
    WHEN RFXT074 IS NOT NULL THEN SAFE_CAST(RFXT074 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT074 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT074 AS FLOAT64) 
 END as reflex_time_array_data_point_074, 

CASE
    WHEN RFXT075 IS NOT NULL THEN SAFE_CAST(RFXT075 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT075 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT075 AS FLOAT64) 
 END as reflex_time_array_data_point_075, 

CASE
    WHEN RFXT076 IS NOT NULL THEN SAFE_CAST(RFXT076 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT076 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT076 AS FLOAT64) 
 END as reflex_time_array_data_point_076, 

CASE
    WHEN RFXT077 IS NOT NULL THEN SAFE_CAST(RFXT077 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT077 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT077 AS FLOAT64) 
 END as reflex_time_array_data_point_077, 

CASE
    WHEN RFXT078 IS NOT NULL THEN SAFE_CAST(RFXT078 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT078 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT078 AS FLOAT64) 
 END as reflex_time_array_data_point_078, 

CASE
    WHEN RFXT079 IS NOT NULL THEN SAFE_CAST(RFXT079 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT079 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT079 AS FLOAT64) 
 END as reflex_time_array_data_point_079, 

CASE
    WHEN RFXT080 IS NOT NULL THEN SAFE_CAST(RFXT080 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT080 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT080 AS FLOAT64) 
 END as reflex_time_array_data_point_080, 

CASE
    WHEN RFXT081 IS NOT NULL THEN SAFE_CAST(RFXT081 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT081 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT081 AS FLOAT64) 
 END as reflex_time_array_data_point_081, 

CASE
    WHEN RFXT082 IS NOT NULL THEN SAFE_CAST(RFXT082 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT082 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT082 AS FLOAT64) 
 END as reflex_time_array_data_point_082, 

CASE
    WHEN RFXT083 IS NOT NULL THEN SAFE_CAST(RFXT083 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT083 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT083 AS FLOAT64) 
 END as reflex_time_array_data_point_083, 

CASE
    WHEN RFXT084 IS NOT NULL THEN SAFE_CAST(RFXT084 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT084 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT084 AS FLOAT64) 
 END as reflex_time_array_data_point_084, 

CASE
    WHEN RFXT085 IS NOT NULL THEN SAFE_CAST(RFXT085 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT085 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT085 AS FLOAT64) 
 END as reflex_time_array_data_point_085, 

CASE
    WHEN RFXT086 IS NOT NULL THEN SAFE_CAST(RFXT086 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT086 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT086 AS FLOAT64) 
 END as reflex_time_array_data_point_086, 

CASE
    WHEN RFXT087 IS NOT NULL THEN SAFE_CAST(RFXT087 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT087 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT087 AS FLOAT64) 
 END as reflex_time_array_data_point_087, 

CASE
    WHEN RFXT088 IS NOT NULL THEN SAFE_CAST(RFXT088 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT088 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT088 AS FLOAT64) 
 END as reflex_time_array_data_point_088, 

CASE
    WHEN RFXT089 IS NOT NULL THEN SAFE_CAST(RFXT089 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT089 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT089 AS FLOAT64) 
 END as reflex_time_array_data_point_089, 

CASE
    WHEN RFXT090 IS NOT NULL THEN SAFE_CAST(RFXT090 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT090 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT090 AS FLOAT64) 
 END as reflex_time_array_data_point_090, 

CASE
    WHEN RFXT091 IS NOT NULL THEN SAFE_CAST(RFXT091 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT091 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT091 AS FLOAT64) 
 END as reflex_time_array_data_point_091, 

CASE
    WHEN RFXT092 IS NOT NULL THEN SAFE_CAST(RFXT092 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT092 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT092 AS FLOAT64) 
 END as reflex_time_array_data_point_092, 

CASE
    WHEN RFXT093 IS NOT NULL THEN SAFE_CAST(RFXT093 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT093 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT093 AS FLOAT64) 
 END as reflex_time_array_data_point_093, 

CASE
    WHEN RFXT094 IS NOT NULL THEN SAFE_CAST(RFXT094 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT094 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT094 AS FLOAT64) 
 END as reflex_time_array_data_point_094, 

CASE
    WHEN RFXT095 IS NOT NULL THEN SAFE_CAST(RFXT095 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT095 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT095 AS FLOAT64) 
 END as reflex_time_array_data_point_095, 

CASE
    WHEN RFXT096 IS NOT NULL THEN SAFE_CAST(RFXT096 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT096 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT096 AS FLOAT64) 
 END as reflex_time_array_data_point_096, 

CASE
    WHEN RFXT097 IS NOT NULL THEN SAFE_CAST(RFXT097 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT097 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT097 AS FLOAT64) 
 END as reflex_time_array_data_point_097, 

CASE
    WHEN RFXT098 IS NOT NULL THEN SAFE_CAST(RFXT098 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT098 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT098 AS FLOAT64) 
 END as reflex_time_array_data_point_098, 

CASE
    WHEN RFXT099 IS NOT NULL THEN SAFE_CAST(RFXT099 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT099 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT099 AS FLOAT64) 
 END as reflex_time_array_data_point_099, 

CASE
    WHEN RFXT100 IS NOT NULL THEN SAFE_CAST(RFXT100 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT100 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT100 AS FLOAT64) 
 END as reflex_time_array_data_point_100, 

CASE
    WHEN RFXT101 IS NOT NULL THEN SAFE_CAST(RFXT101 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT101 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT101 AS FLOAT64) 
 END as reflex_time_array_data_point_101, 

CASE
    WHEN RFXT102 IS NOT NULL THEN SAFE_CAST(RFXT102 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT102 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT102 AS FLOAT64) 
 END as reflex_time_array_data_point_102, 

CASE
    WHEN RFXT103 IS NOT NULL THEN SAFE_CAST(RFXT103 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT103 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT103 AS FLOAT64) 
 END as reflex_time_array_data_point_103, 

CASE
    WHEN RFXT104 IS NOT NULL THEN SAFE_CAST(RFXT104 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT104 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT104 AS FLOAT64) 
 END as reflex_time_array_data_point_104, 

CASE
    WHEN RFXT105 IS NOT NULL THEN SAFE_CAST(RFXT105 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT105 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT105 AS FLOAT64) 
 END as reflex_time_array_data_point_105, 

CASE
    WHEN RFXT106 IS NOT NULL THEN SAFE_CAST(RFXT106 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT106 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT106 AS FLOAT64) 
 END as reflex_time_array_data_point_106, 

CASE
    WHEN RFXT107 IS NOT NULL THEN SAFE_CAST(RFXT107 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT107 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT107 AS FLOAT64) 
 END as reflex_time_array_data_point_107, 

CASE
    WHEN RFXT108 IS NOT NULL THEN SAFE_CAST(RFXT108 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT108 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT108 AS FLOAT64) 
 END as reflex_time_array_data_point_108, 

CASE
    WHEN RFXT109 IS NOT NULL THEN SAFE_CAST(RFXT109 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT109 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT109 AS FLOAT64) 
 END as reflex_time_array_data_point_109, 

CASE
    WHEN RFXT110 IS NOT NULL THEN SAFE_CAST(RFXT110 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT110 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT110 AS FLOAT64) 
 END as reflex_time_array_data_point_110, 

CASE
    WHEN RFXT111 IS NOT NULL THEN SAFE_CAST(RFXT111 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT111 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT111 AS FLOAT64) 
 END as reflex_time_array_data_point_111, 

CASE
    WHEN RFXT112 IS NOT NULL THEN SAFE_CAST(RFXT112 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT112 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT112 AS FLOAT64) 
 END as reflex_time_array_data_point_112, 

CASE
    WHEN RFXT113 IS NOT NULL THEN SAFE_CAST(RFXT113 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT113 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT113 AS FLOAT64) 
 END as reflex_time_array_data_point_113, 

CASE
    WHEN RFXT114 IS NOT NULL THEN SAFE_CAST(RFXT114 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT114 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT114 AS FLOAT64) 
 END as reflex_time_array_data_point_114, 

CASE
    WHEN RFXT115 IS NOT NULL THEN SAFE_CAST(RFXT115 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT115 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT115 AS FLOAT64) 
 END as reflex_time_array_data_point_115, 

CASE
    WHEN RFXT116 IS NOT NULL THEN SAFE_CAST(RFXT116 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT116 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT116 AS FLOAT64) 
 END as reflex_time_array_data_point_116, 

CASE
    WHEN RFXT117 IS NOT NULL THEN SAFE_CAST(RFXT117 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT117 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT117 AS FLOAT64) 
 END as reflex_time_array_data_point_117, 

CASE
    WHEN RFXT118 IS NOT NULL THEN SAFE_CAST(RFXT118 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT118 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT118 AS FLOAT64) 
 END as reflex_time_array_data_point_118, 

CASE
    WHEN RFXT119 IS NOT NULL THEN SAFE_CAST(RFXT119 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT119 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT119 AS FLOAT64) 
 END as reflex_time_array_data_point_119, 

CASE
    WHEN RFXT120 IS NOT NULL THEN SAFE_CAST(RFXT120 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT120 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT120 AS FLOAT64) 
 END as reflex_time_array_data_point_120, 

CASE
    WHEN RFXT121 IS NOT NULL THEN SAFE_CAST(RFXT121 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT121 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT121 AS FLOAT64) 
 END as reflex_time_array_data_point_121, 

CASE
    WHEN RFXT122 IS NOT NULL THEN SAFE_CAST(RFXT122 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT122 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT122 AS FLOAT64) 
 END as reflex_time_array_data_point_122, 

CASE
    WHEN RFXT123 IS NOT NULL THEN SAFE_CAST(RFXT123 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT123 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT123 AS FLOAT64) 
 END as reflex_time_array_data_point_123, 

CASE
    WHEN RFXT124 IS NOT NULL THEN SAFE_CAST(RFXT124 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT124 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT124 AS FLOAT64) 
 END as reflex_time_array_data_point_124, 

CASE
    WHEN RFXT125 IS NOT NULL THEN SAFE_CAST(RFXT125 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT125 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT125 AS FLOAT64) 
 END as reflex_time_array_data_point_125, 

CASE
    WHEN RFXT126 IS NOT NULL THEN SAFE_CAST(RFXT126 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT126 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT126 AS FLOAT64) 
 END as reflex_time_array_data_point_126, 

CASE
    WHEN RFXT127 IS NOT NULL THEN SAFE_CAST(RFXT127 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT127 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT127 AS FLOAT64) 
 END as reflex_time_array_data_point_127, 

CASE
    WHEN RFXT128 IS NOT NULL THEN SAFE_CAST(RFXT128 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT128 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT128 AS FLOAT64) 
 END as reflex_time_array_data_point_128, 

CASE
    WHEN RFXT129 IS NOT NULL THEN SAFE_CAST(RFXT129 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT129 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT129 AS FLOAT64) 
 END as reflex_time_array_data_point_129, 

CASE
    WHEN RFXT130 IS NOT NULL THEN SAFE_CAST(RFXT130 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT130 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT130 AS FLOAT64) 
 END as reflex_time_array_data_point_130, 

CASE
    WHEN RFXT131 IS NOT NULL THEN SAFE_CAST(RFXT131 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT131 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT131 AS FLOAT64) 
 END as reflex_time_array_data_point_131, 

CASE
    WHEN RFXT132 IS NOT NULL THEN SAFE_CAST(RFXT132 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT132 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT132 AS FLOAT64) 
 END as reflex_time_array_data_point_132, 

CASE
    WHEN RFXT133 IS NOT NULL THEN SAFE_CAST(RFXT133 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT133 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT133 AS FLOAT64) 
 END as reflex_time_array_data_point_133, 

CASE
    WHEN RFXT134 IS NOT NULL THEN SAFE_CAST(RFXT134 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT134 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT134 AS FLOAT64) 
 END as reflex_time_array_data_point_134, 

CASE
    WHEN RFXT135 IS NOT NULL THEN SAFE_CAST(RFXT135 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT135 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT135 AS FLOAT64) 
 END as reflex_time_array_data_point_135, 

CASE
    WHEN RFXT136 IS NOT NULL THEN SAFE_CAST(RFXT136 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT136 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT136 AS FLOAT64) 
 END as reflex_time_array_data_point_136, 

CASE
    WHEN RFXT137 IS NOT NULL THEN SAFE_CAST(RFXT137 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT137 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT137 AS FLOAT64) 
 END as reflex_time_array_data_point_137, 

CASE
    WHEN RFXT138 IS NOT NULL THEN SAFE_CAST(RFXT138 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT138 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT138 AS FLOAT64) 
 END as reflex_time_array_data_point_138, 

CASE
    WHEN RFXT139 IS NOT NULL THEN SAFE_CAST(RFXT139 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT139 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT139 AS FLOAT64) 
 END as reflex_time_array_data_point_139, 

CASE
    WHEN RFXT140 IS NOT NULL THEN SAFE_CAST(RFXT140 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT140 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT140 AS FLOAT64) 
 END as reflex_time_array_data_point_140, 

CASE
    WHEN RFXT141 IS NOT NULL THEN SAFE_CAST(RFXT141 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT141 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT141 AS FLOAT64) 
 END as reflex_time_array_data_point_141, 

CASE
    WHEN RFXT142 IS NOT NULL THEN SAFE_CAST(RFXT142 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT142 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT142 AS FLOAT64) 
 END as reflex_time_array_data_point_142, 

CASE
    WHEN RFXT143 IS NOT NULL THEN SAFE_CAST(RFXT143 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT143 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT143 AS FLOAT64) 
 END as reflex_time_array_data_point_143, 

CASE
    WHEN RFXT144 IS NOT NULL THEN SAFE_CAST(RFXT144 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT144 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT144 AS FLOAT64) 
 END as reflex_time_array_data_point_144, 

CASE
    WHEN RFXT145 IS NOT NULL THEN SAFE_CAST(RFXT145 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT145 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT145 AS FLOAT64) 
 END as reflex_time_array_data_point_145, 

CASE
    WHEN RFXT146 IS NOT NULL THEN SAFE_CAST(RFXT146 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT146 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT146 AS FLOAT64) 
 END as reflex_time_array_data_point_146, 

CASE
    WHEN RFXT147 IS NOT NULL THEN SAFE_CAST(RFXT147 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT147 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT147 AS FLOAT64) 
 END as reflex_time_array_data_point_147, 

CASE
    WHEN RFXT148 IS NOT NULL THEN SAFE_CAST(RFXT148 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT148 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT148 AS FLOAT64) 
 END as reflex_time_array_data_point_148, 

CASE
    WHEN RFXT149 IS NOT NULL THEN SAFE_CAST(RFXT149 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT149 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT149 AS FLOAT64) 
 END as reflex_time_array_data_point_149, 

CASE
    WHEN RFXT150 IS NOT NULL THEN SAFE_CAST(RFXT150 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT150 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT150 AS FLOAT64) 
 END as reflex_time_array_data_point_150, 

CASE
    WHEN RFXT151 IS NOT NULL THEN SAFE_CAST(RFXT151 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT151 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT151 AS FLOAT64) 
 END as reflex_time_array_data_point_151, 

CASE
    WHEN RFXT152 IS NOT NULL THEN SAFE_CAST(RFXT152 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT152 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT152 AS FLOAT64) 
 END as reflex_time_array_data_point_152, 

CASE
    WHEN RFXT153 IS NOT NULL THEN SAFE_CAST(RFXT153 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT153 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT153 AS FLOAT64) 
 END as reflex_time_array_data_point_153, 

CASE
    WHEN RFXT154 IS NOT NULL THEN SAFE_CAST(RFXT154 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT154 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT154 AS FLOAT64) 
 END as reflex_time_array_data_point_154, 

CASE
    WHEN RFXT155 IS NOT NULL THEN SAFE_CAST(RFXT155 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT155 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT155 AS FLOAT64) 
 END as reflex_time_array_data_point_155, 

CASE
    WHEN RFXT156 IS NOT NULL THEN SAFE_CAST(RFXT156 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT156 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT156 AS FLOAT64) 
 END as reflex_time_array_data_point_156, 

CASE
    WHEN RFXT157 IS NOT NULL THEN SAFE_CAST(RFXT157 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT157 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT157 AS FLOAT64) 
 END as reflex_time_array_data_point_157, 

CASE
    WHEN RFXT158 IS NOT NULL THEN SAFE_CAST(RFXT158 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT158 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT158 AS FLOAT64) 
 END as reflex_time_array_data_point_158, 

CASE
    WHEN RFXT159 IS NOT NULL THEN SAFE_CAST(RFXT159 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT159 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT159 AS FLOAT64) 
 END as reflex_time_array_data_point_159, 

CASE
    WHEN RFXT160 IS NOT NULL THEN SAFE_CAST(RFXT160 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT160 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT160 AS FLOAT64) 
 END as reflex_time_array_data_point_160, 

CASE
    WHEN RFXT161 IS NOT NULL THEN SAFE_CAST(RFXT161 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT161 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT161 AS FLOAT64) 
 END as reflex_time_array_data_point_161, 

CASE
    WHEN RFXT162 IS NOT NULL THEN SAFE_CAST(RFXT162 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT162 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT162 AS FLOAT64) 
 END as reflex_time_array_data_point_162, 

CASE
    WHEN RFXT163 IS NOT NULL THEN SAFE_CAST(RFXT163 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT163 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT163 AS FLOAT64) 
 END as reflex_time_array_data_point_163, 

CASE
    WHEN RFXT164 IS NOT NULL THEN SAFE_CAST(RFXT164 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT164 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT164 AS FLOAT64) 
 END as reflex_time_array_data_point_164, 

CASE
    WHEN RFXT165 IS NOT NULL THEN SAFE_CAST(RFXT165 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT165 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT165 AS FLOAT64) 
 END as reflex_time_array_data_point_165, 

CASE
    WHEN RFXT166 IS NOT NULL THEN SAFE_CAST(RFXT166 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT166 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT166 AS FLOAT64) 
 END as reflex_time_array_data_point_166, 

CASE
    WHEN RFXT167 IS NOT NULL THEN SAFE_CAST(RFXT167 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT167 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT167 AS FLOAT64) 
 END as reflex_time_array_data_point_167, 

CASE
    WHEN RFXT168 IS NOT NULL THEN SAFE_CAST(RFXT168 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT168 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT168 AS FLOAT64) 
 END as reflex_time_array_data_point_168, 

CASE
    WHEN RFXT169 IS NOT NULL THEN SAFE_CAST(RFXT169 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT169 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT169 AS FLOAT64) 
 END as reflex_time_array_data_point_169, 

CASE
    WHEN RFXT170 IS NOT NULL THEN SAFE_CAST(RFXT170 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT170 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXT170 AS FLOAT64) 
 END as reflex_time_array_data_point_170, 

CASE
    WHEN RFXC001 IS NOT NULL THEN SAFE_CAST(RFXC001 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC001 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC001 AS FLOAT64) 
 END as reflex_compliance_array_data_point_001, 

CASE
    WHEN RFXC002 IS NOT NULL THEN SAFE_CAST(RFXC002 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC002 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC002 AS FLOAT64) 
 END as reflex_compliance_array_data_point_002, 

CASE
    WHEN RFXC003 IS NOT NULL THEN SAFE_CAST(RFXC003 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC003 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC003 AS FLOAT64) 
 END as reflex_compliance_array_data_point_003, 

CASE
    WHEN RFXC004 IS NOT NULL THEN SAFE_CAST(RFXC004 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC004 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC004 AS FLOAT64) 
 END as reflex_compliance_array_data_point_004, 

CASE
    WHEN RFXC005 IS NOT NULL THEN SAFE_CAST(RFXC005 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC005 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC005 AS FLOAT64) 
 END as reflex_compliance_array_data_point_005, 

CASE
    WHEN RFXC006 IS NOT NULL THEN SAFE_CAST(RFXC006 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC006 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC006 AS FLOAT64) 
 END as reflex_compliance_array_data_point_006, 

CASE
    WHEN RFXC007 IS NOT NULL THEN SAFE_CAST(RFXC007 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC007 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC007 AS FLOAT64) 
 END as reflex_compliance_array_data_point_007, 

CASE
    WHEN RFXC008 IS NOT NULL THEN SAFE_CAST(RFXC008 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC008 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC008 AS FLOAT64) 
 END as reflex_compliance_array_data_point_008, 

CASE
    WHEN RFXC009 IS NOT NULL THEN SAFE_CAST(RFXC009 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC009 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC009 AS FLOAT64) 
 END as reflex_compliance_array_data_point_009, 

CASE
    WHEN RFXC010 IS NOT NULL THEN SAFE_CAST(RFXC010 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC010 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC010 AS FLOAT64) 
 END as reflex_compliance_array_data_point_010, 

CASE
    WHEN RFXC011 IS NOT NULL THEN SAFE_CAST(RFXC011 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC011 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC011 AS FLOAT64) 
 END as reflex_compliance_array_data_point_011, 

CASE
    WHEN RFXC012 IS NOT NULL THEN SAFE_CAST(RFXC012 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC012 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC012 AS FLOAT64) 
 END as reflex_compliance_array_data_point_012, 

CASE
    WHEN RFXC013 IS NOT NULL THEN SAFE_CAST(RFXC013 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC013 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC013 AS FLOAT64) 
 END as reflex_compliance_array_data_point_013, 

CASE
    WHEN RFXC014 IS NOT NULL THEN SAFE_CAST(RFXC014 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC014 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC014 AS FLOAT64) 
 END as reflex_compliance_array_data_point_014, 

CASE
    WHEN RFXC015 IS NOT NULL THEN SAFE_CAST(RFXC015 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC015 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC015 AS FLOAT64) 
 END as reflex_compliance_array_data_point_015, 

CASE
    WHEN RFXC016 IS NOT NULL THEN SAFE_CAST(RFXC016 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC016 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC016 AS FLOAT64) 
 END as reflex_compliance_array_data_point_016, 

CASE
    WHEN RFXC017 IS NOT NULL THEN SAFE_CAST(RFXC017 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC017 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC017 AS FLOAT64) 
 END as reflex_compliance_array_data_point_017, 

CASE
    WHEN RFXC018 IS NOT NULL THEN SAFE_CAST(RFXC018 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC018 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC018 AS FLOAT64) 
 END as reflex_compliance_array_data_point_018, 

CASE
    WHEN RFXC019 IS NOT NULL THEN SAFE_CAST(RFXC019 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC019 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC019 AS FLOAT64) 
 END as reflex_compliance_array_data_point_019, 

CASE
    WHEN RFXC020 IS NOT NULL THEN SAFE_CAST(RFXC020 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC020 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC020 AS FLOAT64) 
 END as reflex_compliance_array_data_point_020, 

CASE
    WHEN RFXC021 IS NOT NULL THEN SAFE_CAST(RFXC021 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC021 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC021 AS FLOAT64) 
 END as reflex_compliance_array_data_point_021, 

CASE
    WHEN RFXC022 IS NOT NULL THEN SAFE_CAST(RFXC022 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC022 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC022 AS FLOAT64) 
 END as reflex_compliance_array_data_point_022, 

CASE
    WHEN RFXC023 IS NOT NULL THEN SAFE_CAST(RFXC023 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC023 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC023 AS FLOAT64) 
 END as reflex_compliance_array_data_point_023, 

CASE
    WHEN RFXC024 IS NOT NULL THEN SAFE_CAST(RFXC024 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC024 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC024 AS FLOAT64) 
 END as reflex_compliance_array_data_point_024, 

CASE
    WHEN RFXC025 IS NOT NULL THEN SAFE_CAST(RFXC025 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC025 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC025 AS FLOAT64) 
 END as reflex_compliance_array_data_point_025, 

CASE
    WHEN RFXC026 IS NOT NULL THEN SAFE_CAST(RFXC026 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC026 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC026 AS FLOAT64) 
 END as reflex_compliance_array_data_point_026, 

CASE
    WHEN RFXC027 IS NOT NULL THEN SAFE_CAST(RFXC027 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC027 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC027 AS FLOAT64) 
 END as reflex_compliance_array_data_point_027, 

CASE
    WHEN RFXC028 IS NOT NULL THEN SAFE_CAST(RFXC028 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC028 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC028 AS FLOAT64) 
 END as reflex_compliance_array_data_point_028, 

CASE
    WHEN RFXC029 IS NOT NULL THEN SAFE_CAST(RFXC029 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC029 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC029 AS FLOAT64) 
 END as reflex_compliance_array_data_point_029, 

CASE
    WHEN RFXC030 IS NOT NULL THEN SAFE_CAST(RFXC030 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC030 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC030 AS FLOAT64) 
 END as reflex_compliance_array_data_point_030, 

CASE
    WHEN RFXC031 IS NOT NULL THEN SAFE_CAST(RFXC031 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC031 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC031 AS FLOAT64) 
 END as reflex_compliance_array_data_point_031, 

CASE
    WHEN RFXC032 IS NOT NULL THEN SAFE_CAST(RFXC032 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC032 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC032 AS FLOAT64) 
 END as reflex_compliance_array_data_point_032, 

CASE
    WHEN RFXC033 IS NOT NULL THEN SAFE_CAST(RFXC033 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC033 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC033 AS FLOAT64) 
 END as reflex_compliance_array_data_point_033, 

CASE
    WHEN RFXC034 IS NOT NULL THEN SAFE_CAST(RFXC034 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC034 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC034 AS FLOAT64) 
 END as reflex_compliance_array_data_point_034, 

CASE
    WHEN RFXC035 IS NOT NULL THEN SAFE_CAST(RFXC035 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC035 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC035 AS FLOAT64) 
 END as reflex_compliance_array_data_point_035, 

CASE
    WHEN RFXC036 IS NOT NULL THEN SAFE_CAST(RFXC036 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC036 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC036 AS FLOAT64) 
 END as reflex_compliance_array_data_point_036, 

CASE
    WHEN RFXC037 IS NOT NULL THEN SAFE_CAST(RFXC037 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC037 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC037 AS FLOAT64) 
 END as reflex_compliance_array_data_point_037, 

CASE
    WHEN RFXC038 IS NOT NULL THEN SAFE_CAST(RFXC038 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC038 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC038 AS FLOAT64) 
 END as reflex_compliance_array_data_point_038, 

CASE
    WHEN RFXC039 IS NOT NULL THEN SAFE_CAST(RFXC039 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC039 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC039 AS FLOAT64) 
 END as reflex_compliance_array_data_point_039, 

CASE
    WHEN RFXC040 IS NOT NULL THEN SAFE_CAST(RFXC040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC040 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC040 AS FLOAT64) 
 END as reflex_compliance_array_data_point_040, 

CASE
    WHEN RFXC041 IS NOT NULL THEN SAFE_CAST(RFXC041 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC041 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC041 AS FLOAT64) 
 END as reflex_compliance_array_data_point_041, 

CASE
    WHEN RFXC042 IS NOT NULL THEN SAFE_CAST(RFXC042 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC042 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC042 AS FLOAT64) 
 END as reflex_compliance_array_data_point_042, 

CASE
    WHEN RFXC043 IS NOT NULL THEN SAFE_CAST(RFXC043 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC043 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC043 AS FLOAT64) 
 END as reflex_compliance_array_data_point_043, 

CASE
    WHEN RFXC044 IS NOT NULL THEN SAFE_CAST(RFXC044 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC044 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC044 AS FLOAT64) 
 END as reflex_compliance_array_data_point_044, 

CASE
    WHEN RFXC045 IS NOT NULL THEN SAFE_CAST(RFXC045 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC045 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC045 AS FLOAT64) 
 END as reflex_compliance_array_data_point_045, 

CASE
    WHEN RFXC046 IS NOT NULL THEN SAFE_CAST(RFXC046 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC046 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC046 AS FLOAT64) 
 END as reflex_compliance_array_data_point_046, 

CASE
    WHEN RFXC047 IS NOT NULL THEN SAFE_CAST(RFXC047 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC047 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC047 AS FLOAT64) 
 END as reflex_compliance_array_data_point_047, 

CASE
    WHEN RFXC048 IS NOT NULL THEN SAFE_CAST(RFXC048 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC048 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC048 AS FLOAT64) 
 END as reflex_compliance_array_data_point_048, 

CASE
    WHEN RFXC049 IS NOT NULL THEN SAFE_CAST(RFXC049 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC049 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC049 AS FLOAT64) 
 END as reflex_compliance_array_data_point_049, 

CASE
    WHEN RFXC050 IS NOT NULL THEN SAFE_CAST(RFXC050 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC050 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC050 AS FLOAT64) 
 END as reflex_compliance_array_data_point_050, 

CASE
    WHEN RFXC051 IS NOT NULL THEN SAFE_CAST(RFXC051 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC051 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC051 AS FLOAT64) 
 END as reflex_compliance_array_data_point_051, 

CASE
    WHEN RFXC052 IS NOT NULL THEN SAFE_CAST(RFXC052 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC052 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC052 AS FLOAT64) 
 END as reflex_compliance_array_data_point_052, 

CASE
    WHEN RFXC053 IS NOT NULL THEN SAFE_CAST(RFXC053 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC053 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC053 AS FLOAT64) 
 END as reflex_compliance_array_data_point_053, 

CASE
    WHEN RFXC054 IS NOT NULL THEN SAFE_CAST(RFXC054 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC054 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC054 AS FLOAT64) 
 END as reflex_compliance_array_data_point_054, 

CASE
    WHEN RFXC055 IS NOT NULL THEN SAFE_CAST(RFXC055 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC055 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC055 AS FLOAT64) 
 END as reflex_compliance_array_data_point_055, 

CASE
    WHEN RFXC056 IS NOT NULL THEN SAFE_CAST(RFXC056 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC056 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC056 AS FLOAT64) 
 END as reflex_compliance_array_data_point_056, 

CASE
    WHEN RFXC057 IS NOT NULL THEN SAFE_CAST(RFXC057 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC057 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC057 AS FLOAT64) 
 END as reflex_compliance_array_data_point_057, 

CASE
    WHEN RFXC058 IS NOT NULL THEN SAFE_CAST(RFXC058 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC058 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC058 AS FLOAT64) 
 END as reflex_compliance_array_data_point_058, 

CASE
    WHEN RFXC059 IS NOT NULL THEN SAFE_CAST(RFXC059 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC059 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC059 AS FLOAT64) 
 END as reflex_compliance_array_data_point_059, 

CASE
    WHEN RFXC060 IS NOT NULL THEN SAFE_CAST(RFXC060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC060 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC060 AS FLOAT64) 
 END as reflex_compliance_array_data_point_060, 

CASE
    WHEN RFXC061 IS NOT NULL THEN SAFE_CAST(RFXC061 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC061 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC061 AS FLOAT64) 
 END as reflex_compliance_array_data_point_061, 

CASE
    WHEN RFXC062 IS NOT NULL THEN SAFE_CAST(RFXC062 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC062 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC062 AS FLOAT64) 
 END as reflex_compliance_array_data_point_062, 

CASE
    WHEN RFXC063 IS NOT NULL THEN SAFE_CAST(RFXC063 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC063 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC063 AS FLOAT64) 
 END as reflex_compliance_array_data_point_063, 

CASE
    WHEN RFXC064 IS NOT NULL THEN SAFE_CAST(RFXC064 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC064 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC064 AS FLOAT64) 
 END as reflex_compliance_array_data_point_064, 

CASE
    WHEN RFXC065 IS NOT NULL THEN SAFE_CAST(RFXC065 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC065 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC065 AS FLOAT64) 
 END as reflex_compliance_array_data_point_065, 

CASE
    WHEN RFXC066 IS NOT NULL THEN SAFE_CAST(RFXC066 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC066 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC066 AS FLOAT64) 
 END as reflex_compliance_array_data_point_066, 

CASE
    WHEN RFXC067 IS NOT NULL THEN SAFE_CAST(RFXC067 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC067 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC067 AS FLOAT64) 
 END as reflex_compliance_array_data_point_067, 

CASE
    WHEN RFXC068 IS NOT NULL THEN SAFE_CAST(RFXC068 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC068 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC068 AS FLOAT64) 
 END as reflex_compliance_array_data_point_068, 

CASE
    WHEN RFXC069 IS NOT NULL THEN SAFE_CAST(RFXC069 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC069 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC069 AS FLOAT64) 
 END as reflex_compliance_array_data_point_069, 

CASE
    WHEN RFXC070 IS NOT NULL THEN SAFE_CAST(RFXC070 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC070 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC070 AS FLOAT64) 
 END as reflex_compliance_array_data_point_070, 

CASE
    WHEN RFXC071 IS NOT NULL THEN SAFE_CAST(RFXC071 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC071 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC071 AS FLOAT64) 
 END as reflex_compliance_array_data_point_071, 

CASE
    WHEN RFXC072 IS NOT NULL THEN SAFE_CAST(RFXC072 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC072 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC072 AS FLOAT64) 
 END as reflex_compliance_array_data_point_072, 

CASE
    WHEN RFXC073 IS NOT NULL THEN SAFE_CAST(RFXC073 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC073 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC073 AS FLOAT64) 
 END as reflex_compliance_array_data_point_073, 

CASE
    WHEN RFXC074 IS NOT NULL THEN SAFE_CAST(RFXC074 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC074 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC074 AS FLOAT64) 
 END as reflex_compliance_array_data_point_074, 

CASE
    WHEN RFXC075 IS NOT NULL THEN SAFE_CAST(RFXC075 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC075 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC075 AS FLOAT64) 
 END as reflex_compliance_array_data_point_075, 

CASE
    WHEN RFXC076 IS NOT NULL THEN SAFE_CAST(RFXC076 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC076 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC076 AS FLOAT64) 
 END as reflex_compliance_array_data_point_076, 

CASE
    WHEN RFXC077 IS NOT NULL THEN SAFE_CAST(RFXC077 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC077 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC077 AS FLOAT64) 
 END as reflex_compliance_array_data_point_077, 

CASE
    WHEN RFXC078 IS NOT NULL THEN SAFE_CAST(RFXC078 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC078 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC078 AS FLOAT64) 
 END as reflex_compliance_array_data_point_078, 

CASE
    WHEN RFXC079 IS NOT NULL THEN SAFE_CAST(RFXC079 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC079 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC079 AS FLOAT64) 
 END as reflex_compliance_array_data_point_079, 

CASE
    WHEN RFXC080 IS NOT NULL THEN SAFE_CAST(RFXC080 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC080 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC080 AS FLOAT64) 
 END as reflex_compliance_array_data_point_080, 

CASE
    WHEN RFXC081 IS NOT NULL THEN SAFE_CAST(RFXC081 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC081 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC081 AS FLOAT64) 
 END as reflex_compliance_array_data_point_081, 

CASE
    WHEN RFXC082 IS NOT NULL THEN SAFE_CAST(RFXC082 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC082 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC082 AS FLOAT64) 
 END as reflex_compliance_array_data_point_082, 

CASE
    WHEN RFXC083 IS NOT NULL THEN SAFE_CAST(RFXC083 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC083 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC083 AS FLOAT64) 
 END as reflex_compliance_array_data_point_083, 

CASE
    WHEN RFXC084 IS NOT NULL THEN SAFE_CAST(RFXC084 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC084 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC084 AS FLOAT64) 
 END as reflex_compliance_array_data_point_084, 

CASE
    WHEN RFXC085 IS NOT NULL THEN SAFE_CAST(RFXC085 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC085 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC085 AS FLOAT64) 
 END as reflex_compliance_array_data_point_085, 

CASE
    WHEN RFXC086 IS NOT NULL THEN SAFE_CAST(RFXC086 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC086 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC086 AS FLOAT64) 
 END as reflex_compliance_array_data_point_086, 

CASE
    WHEN RFXC087 IS NOT NULL THEN SAFE_CAST(RFXC087 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC087 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC087 AS FLOAT64) 
 END as reflex_compliance_array_data_point_087, 

CASE
    WHEN RFXC088 IS NOT NULL THEN SAFE_CAST(RFXC088 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC088 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC088 AS FLOAT64) 
 END as reflex_compliance_array_data_point_088, 

CASE
    WHEN RFXC089 IS NOT NULL THEN SAFE_CAST(RFXC089 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC089 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC089 AS FLOAT64) 
 END as reflex_compliance_array_data_point_089, 

CASE
    WHEN RFXC090 IS NOT NULL THEN SAFE_CAST(RFXC090 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC090 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC090 AS FLOAT64) 
 END as reflex_compliance_array_data_point_090, 

CASE
    WHEN RFXC091 IS NOT NULL THEN SAFE_CAST(RFXC091 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC091 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC091 AS FLOAT64) 
 END as reflex_compliance_array_data_point_091, 

CASE
    WHEN RFXC092 IS NOT NULL THEN SAFE_CAST(RFXC092 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC092 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC092 AS FLOAT64) 
 END as reflex_compliance_array_data_point_092, 

CASE
    WHEN RFXC093 IS NOT NULL THEN SAFE_CAST(RFXC093 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC093 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC093 AS FLOAT64) 
 END as reflex_compliance_array_data_point_093, 

CASE
    WHEN RFXC094 IS NOT NULL THEN SAFE_CAST(RFXC094 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC094 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC094 AS FLOAT64) 
 END as reflex_compliance_array_data_point_094, 

CASE
    WHEN RFXC095 IS NOT NULL THEN SAFE_CAST(RFXC095 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC095 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC095 AS FLOAT64) 
 END as reflex_compliance_array_data_point_095, 

CASE
    WHEN RFXC096 IS NOT NULL THEN SAFE_CAST(RFXC096 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC096 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC096 AS FLOAT64) 
 END as reflex_compliance_array_data_point_096, 

CASE
    WHEN RFXC097 IS NOT NULL THEN SAFE_CAST(RFXC097 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC097 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC097 AS FLOAT64) 
 END as reflex_compliance_array_data_point_097, 

CASE
    WHEN RFXC098 IS NOT NULL THEN SAFE_CAST(RFXC098 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC098 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC098 AS FLOAT64) 
 END as reflex_compliance_array_data_point_098, 

CASE
    WHEN RFXC099 IS NOT NULL THEN SAFE_CAST(RFXC099 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC099 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC099 AS FLOAT64) 
 END as reflex_compliance_array_data_point_099, 

CASE
    WHEN RFXC100 IS NOT NULL THEN SAFE_CAST(RFXC100 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC100 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC100 AS FLOAT64) 
 END as reflex_compliance_array_data_point_100, 

CASE
    WHEN RFXC101 IS NOT NULL THEN SAFE_CAST(RFXC101 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC101 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC101 AS FLOAT64) 
 END as reflex_compliance_array_data_point_101, 

CASE
    WHEN RFXC102 IS NOT NULL THEN SAFE_CAST(RFXC102 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC102 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC102 AS FLOAT64) 
 END as reflex_compliance_array_data_point_102, 

CASE
    WHEN RFXC103 IS NOT NULL THEN SAFE_CAST(RFXC103 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC103 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC103 AS FLOAT64) 
 END as reflex_compliance_array_data_point_103, 

CASE
    WHEN RFXC104 IS NOT NULL THEN SAFE_CAST(RFXC104 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC104 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC104 AS FLOAT64) 
 END as reflex_compliance_array_data_point_104, 

CASE
    WHEN RFXC105 IS NOT NULL THEN SAFE_CAST(RFXC105 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC105 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC105 AS FLOAT64) 
 END as reflex_compliance_array_data_point_105, 

CASE
    WHEN RFXC106 IS NOT NULL THEN SAFE_CAST(RFXC106 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC106 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC106 AS FLOAT64) 
 END as reflex_compliance_array_data_point_106, 

CASE
    WHEN RFXC107 IS NOT NULL THEN SAFE_CAST(RFXC107 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC107 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC107 AS FLOAT64) 
 END as reflex_compliance_array_data_point_107, 

CASE
    WHEN RFXC108 IS NOT NULL THEN SAFE_CAST(RFXC108 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC108 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC108 AS FLOAT64) 
 END as reflex_compliance_array_data_point_108, 

CASE
    WHEN RFXC109 IS NOT NULL THEN SAFE_CAST(RFXC109 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC109 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC109 AS FLOAT64) 
 END as reflex_compliance_array_data_point_109, 

CASE
    WHEN RFXC110 IS NOT NULL THEN SAFE_CAST(RFXC110 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC110 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC110 AS FLOAT64) 
 END as reflex_compliance_array_data_point_110, 

CASE
    WHEN RFXC111 IS NOT NULL THEN SAFE_CAST(RFXC111 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC111 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC111 AS FLOAT64) 
 END as reflex_compliance_array_data_point_111, 

CASE
    WHEN RFXC112 IS NOT NULL THEN SAFE_CAST(RFXC112 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC112 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC112 AS FLOAT64) 
 END as reflex_compliance_array_data_point_112, 

CASE
    WHEN RFXC113 IS NOT NULL THEN SAFE_CAST(RFXC113 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC113 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC113 AS FLOAT64) 
 END as reflex_compliance_array_data_point_113, 

CASE
    WHEN RFXC114 IS NOT NULL THEN SAFE_CAST(RFXC114 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC114 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC114 AS FLOAT64) 
 END as reflex_compliance_array_data_point_114, 

CASE
    WHEN RFXC115 IS NOT NULL THEN SAFE_CAST(RFXC115 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC115 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC115 AS FLOAT64) 
 END as reflex_compliance_array_data_point_115, 

CASE
    WHEN RFXC116 IS NOT NULL THEN SAFE_CAST(RFXC116 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC116 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC116 AS FLOAT64) 
 END as reflex_compliance_array_data_point_116, 

CASE
    WHEN RFXC117 IS NOT NULL THEN SAFE_CAST(RFXC117 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC117 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC117 AS FLOAT64) 
 END as reflex_compliance_array_data_point_117, 

CASE
    WHEN RFXC118 IS NOT NULL THEN SAFE_CAST(RFXC118 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC118 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC118 AS FLOAT64) 
 END as reflex_compliance_array_data_point_118, 

CASE
    WHEN RFXC119 IS NOT NULL THEN SAFE_CAST(RFXC119 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC119 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC119 AS FLOAT64) 
 END as reflex_compliance_array_data_point_119, 

CASE
    WHEN RFXC120 IS NOT NULL THEN SAFE_CAST(RFXC120 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC120 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC120 AS FLOAT64) 
 END as reflex_compliance_array_data_point_120, 

CASE
    WHEN RFXC121 IS NOT NULL THEN SAFE_CAST(RFXC121 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC121 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC121 AS FLOAT64) 
 END as reflex_compliance_array_data_point_121, 

CASE
    WHEN RFXC122 IS NOT NULL THEN SAFE_CAST(RFXC122 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC122 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC122 AS FLOAT64) 
 END as reflex_compliance_array_data_point_122, 

CASE
    WHEN RFXC123 IS NOT NULL THEN SAFE_CAST(RFXC123 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC123 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC123 AS FLOAT64) 
 END as reflex_compliance_array_data_point_123, 

CASE
    WHEN RFXC124 IS NOT NULL THEN SAFE_CAST(RFXC124 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC124 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC124 AS FLOAT64) 
 END as reflex_compliance_array_data_point_124, 

CASE
    WHEN RFXC125 IS NOT NULL THEN SAFE_CAST(RFXC125 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC125 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC125 AS FLOAT64) 
 END as reflex_compliance_array_data_point_125, 

CASE
    WHEN RFXC126 IS NOT NULL THEN SAFE_CAST(RFXC126 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC126 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC126 AS FLOAT64) 
 END as reflex_compliance_array_data_point_126, 

CASE
    WHEN RFXC127 IS NOT NULL THEN SAFE_CAST(RFXC127 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC127 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC127 AS FLOAT64) 
 END as reflex_compliance_array_data_point_127, 

CASE
    WHEN RFXC128 IS NOT NULL THEN SAFE_CAST(RFXC128 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC128 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC128 AS FLOAT64) 
 END as reflex_compliance_array_data_point_128, 

CASE
    WHEN RFXC129 IS NOT NULL THEN SAFE_CAST(RFXC129 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC129 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC129 AS FLOAT64) 
 END as reflex_compliance_array_data_point_129, 

CASE
    WHEN RFXC130 IS NOT NULL THEN SAFE_CAST(RFXC130 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC130 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC130 AS FLOAT64) 
 END as reflex_compliance_array_data_point_130, 

CASE
    WHEN RFXC131 IS NOT NULL THEN SAFE_CAST(RFXC131 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC131 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC131 AS FLOAT64) 
 END as reflex_compliance_array_data_point_131, 

CASE
    WHEN RFXC132 IS NOT NULL THEN SAFE_CAST(RFXC132 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC132 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC132 AS FLOAT64) 
 END as reflex_compliance_array_data_point_132, 

CASE
    WHEN RFXC133 IS NOT NULL THEN SAFE_CAST(RFXC133 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC133 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC133 AS FLOAT64) 
 END as reflex_compliance_array_data_point_133, 

CASE
    WHEN RFXC134 IS NOT NULL THEN SAFE_CAST(RFXC134 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC134 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC134 AS FLOAT64) 
 END as reflex_compliance_array_data_point_134, 

CASE
    WHEN RFXC135 IS NOT NULL THEN SAFE_CAST(RFXC135 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC135 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC135 AS FLOAT64) 
 END as reflex_compliance_array_data_point_135, 

CASE
    WHEN RFXC136 IS NOT NULL THEN SAFE_CAST(RFXC136 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC136 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC136 AS FLOAT64) 
 END as reflex_compliance_array_data_point_136, 

CASE
    WHEN RFXC137 IS NOT NULL THEN SAFE_CAST(RFXC137 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC137 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC137 AS FLOAT64) 
 END as reflex_compliance_array_data_point_137, 

CASE
    WHEN RFXC138 IS NOT NULL THEN SAFE_CAST(RFXC138 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC138 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC138 AS FLOAT64) 
 END as reflex_compliance_array_data_point_138, 

CASE
    WHEN RFXC139 IS NOT NULL THEN SAFE_CAST(RFXC139 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC139 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC139 AS FLOAT64) 
 END as reflex_compliance_array_data_point_139, 

CASE
    WHEN RFXC140 IS NOT NULL THEN SAFE_CAST(RFXC140 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC140 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC140 AS FLOAT64) 
 END as reflex_compliance_array_data_point_140, 

CASE
    WHEN RFXC141 IS NOT NULL THEN SAFE_CAST(RFXC141 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC141 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC141 AS FLOAT64) 
 END as reflex_compliance_array_data_point_141, 

CASE
    WHEN RFXC142 IS NOT NULL THEN SAFE_CAST(RFXC142 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC142 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC142 AS FLOAT64) 
 END as reflex_compliance_array_data_point_142, 

CASE
    WHEN RFXC143 IS NOT NULL THEN SAFE_CAST(RFXC143 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC143 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC143 AS FLOAT64) 
 END as reflex_compliance_array_data_point_143, 

CASE
    WHEN RFXC144 IS NOT NULL THEN SAFE_CAST(RFXC144 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC144 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC144 AS FLOAT64) 
 END as reflex_compliance_array_data_point_144, 

CASE
    WHEN RFXC145 IS NOT NULL THEN SAFE_CAST(RFXC145 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC145 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC145 AS FLOAT64) 
 END as reflex_compliance_array_data_point_145, 

CASE
    WHEN RFXC146 IS NOT NULL THEN SAFE_CAST(RFXC146 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC146 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC146 AS FLOAT64) 
 END as reflex_compliance_array_data_point_146, 

CASE
    WHEN RFXC147 IS NOT NULL THEN SAFE_CAST(RFXC147 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC147 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC147 AS FLOAT64) 
 END as reflex_compliance_array_data_point_147, 

CASE
    WHEN RFXC148 IS NOT NULL THEN SAFE_CAST(RFXC148 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC148 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC148 AS FLOAT64) 
 END as reflex_compliance_array_data_point_148, 

CASE
    WHEN RFXC149 IS NOT NULL THEN SAFE_CAST(RFXC149 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC149 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC149 AS FLOAT64) 
 END as reflex_compliance_array_data_point_149, 

CASE
    WHEN RFXC150 IS NOT NULL THEN SAFE_CAST(RFXC150 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC150 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC150 AS FLOAT64) 
 END as reflex_compliance_array_data_point_150, 

CASE
    WHEN RFXC151 IS NOT NULL THEN SAFE_CAST(RFXC151 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC151 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC151 AS FLOAT64) 
 END as reflex_compliance_array_data_point_151, 

CASE
    WHEN RFXC152 IS NOT NULL THEN SAFE_CAST(RFXC152 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC152 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC152 AS FLOAT64) 
 END as reflex_compliance_array_data_point_152, 

CASE
    WHEN RFXC153 IS NOT NULL THEN SAFE_CAST(RFXC153 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC153 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC153 AS FLOAT64) 
 END as reflex_compliance_array_data_point_153, 

CASE
    WHEN RFXC154 IS NOT NULL THEN SAFE_CAST(RFXC154 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC154 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC154 AS FLOAT64) 
 END as reflex_compliance_array_data_point_154, 

CASE
    WHEN RFXC155 IS NOT NULL THEN SAFE_CAST(RFXC155 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC155 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC155 AS FLOAT64) 
 END as reflex_compliance_array_data_point_155, 

CASE
    WHEN RFXC156 IS NOT NULL THEN SAFE_CAST(RFXC156 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC156 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC156 AS FLOAT64) 
 END as reflex_compliance_array_data_point_156, 

CASE
    WHEN RFXC157 IS NOT NULL THEN SAFE_CAST(RFXC157 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC157 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC157 AS FLOAT64) 
 END as reflex_compliance_array_data_point_157, 

CASE
    WHEN RFXC158 IS NOT NULL THEN SAFE_CAST(RFXC158 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC158 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC158 AS FLOAT64) 
 END as reflex_compliance_array_data_point_158, 

CASE
    WHEN RFXC159 IS NOT NULL THEN SAFE_CAST(RFXC159 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC159 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC159 AS FLOAT64) 
 END as reflex_compliance_array_data_point_159, 

CASE
    WHEN RFXC160 IS NOT NULL THEN SAFE_CAST(RFXC160 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC160 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC160 AS FLOAT64) 
 END as reflex_compliance_array_data_point_160, 

CASE
    WHEN RFXC161 IS NOT NULL THEN SAFE_CAST(RFXC161 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC161 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC161 AS FLOAT64) 
 END as reflex_compliance_array_data_point_161, 

CASE
    WHEN RFXC162 IS NOT NULL THEN SAFE_CAST(RFXC162 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC162 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC162 AS FLOAT64) 
 END as reflex_compliance_array_data_point_162, 

CASE
    WHEN RFXC163 IS NOT NULL THEN SAFE_CAST(RFXC163 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC163 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC163 AS FLOAT64) 
 END as reflex_compliance_array_data_point_163, 

CASE
    WHEN RFXC164 IS NOT NULL THEN SAFE_CAST(RFXC164 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC164 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC164 AS FLOAT64) 
 END as reflex_compliance_array_data_point_164, 

CASE
    WHEN RFXC165 IS NOT NULL THEN SAFE_CAST(RFXC165 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC165 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC165 AS FLOAT64) 
 END as reflex_compliance_array_data_point_165, 

CASE
    WHEN RFXC166 IS NOT NULL THEN SAFE_CAST(RFXC166 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC166 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC166 AS FLOAT64) 
 END as reflex_compliance_array_data_point_166, 

CASE
    WHEN RFXC167 IS NOT NULL THEN SAFE_CAST(RFXC167 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC167 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC167 AS FLOAT64) 
 END as reflex_compliance_array_data_point_167, 

CASE
    WHEN RFXC168 IS NOT NULL THEN SAFE_CAST(RFXC168 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC168 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC168 AS FLOAT64) 
 END as reflex_compliance_array_data_point_168, 

CASE
    WHEN RFXC169 IS NOT NULL THEN SAFE_CAST(RFXC169 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC169 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC169 AS FLOAT64) 
 END as reflex_compliance_array_data_point_169, 

CASE
    WHEN RFXC170 IS NOT NULL THEN SAFE_CAST(RFXC170 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC170 IS NULL THEN NULL 
ELSE SAFE_CAST(RFXC170 AS FLOAT64) 
 END as reflex_compliance_array_data_point_170, 

CASE
    WHEN AUXRR101 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR101 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_01, 

CASE
    WHEN AUXRR102 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR102 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_02, 

CASE
    WHEN AUXRR103 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR103 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_03, 

CASE
    WHEN AUXRR104 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR104 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_04, 

CASE
    WHEN AUXRR105 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR105 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_05, 

CASE
    WHEN AUXRR106 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR106 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_06, 

CASE
    WHEN AUXRR107 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR107 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_07, 

CASE
    WHEN AUXRR108 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR108 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_08, 

CASE
    WHEN AUXRR109 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR109 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_09, 

CASE
    WHEN AUXRR110 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR110 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_10, 

CASE
    WHEN AUXRR111 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR111 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_11, 

CASE
    WHEN AUXRR112 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR112 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_12, 

CASE
    WHEN AUXRR113 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR113 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_13, 

CASE
    WHEN AUXRR114 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR114 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_14, 

CASE
    WHEN AUXRR115 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR115 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_15, 

CASE
    WHEN AUXRR116 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR116 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_16, 

CASE
    WHEN AUXRR117 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR117 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_17, 

CASE
    WHEN AUXRR118 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR118 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_18, 

CASE
    WHEN AUXRR119 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR119 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_19, 

CASE
    WHEN AUXRR120 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR120 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_20, 

CASE
    WHEN AUXRR121 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR121 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_21, 

CASE
    WHEN AUXRR122 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR122 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_22, 

CASE
    WHEN AUXRR123 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR123 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_23, 

CASE
    WHEN AUXRR124 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR124 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_24, 

CASE
    WHEN AUXRR125 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR125 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_25, 

CASE
    WHEN AUXRR126 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR126 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_26, 

CASE
    WHEN AUXRR127 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR127 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_27, 

CASE
    WHEN AUXRR128 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR128 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_28, 

CASE
    WHEN AUXRR129 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR129 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_29, 

CASE
    WHEN AUXRR130 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR130 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_30, 

CASE
    WHEN AUXRR131 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR131 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_31, 

CASE
    WHEN AUXRR132 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR132 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_32, 

CASE
    WHEN AUXRR133 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR133 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_33, 

CASE
    WHEN AUXRR134 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR134 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_34, 

CASE
    WHEN AUXRR135 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR135 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_35, 

CASE
    WHEN AUXRR136 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR136 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_36, 

CASE
    WHEN AUXRR137 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR137 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_37, 

CASE
    WHEN AUXRR138 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR138 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_38, 

CASE
    WHEN AUXRR139 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR139 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_39, 

CASE
    WHEN AUXRR140 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR140 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_40, 

CASE
    WHEN AUXRR141 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR141 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_41, 

CASE
    WHEN AUXRR142 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR142 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_42, 

CASE
    WHEN AUXRR143 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR143 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_43, 

CASE
    WHEN AUXRR144 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR144 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_44, 

CASE
    WHEN AUXRR145 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR145 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_45, 

CASE
    WHEN AUXRR146 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR146 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_46, 

CASE
    WHEN AUXRR147 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR147 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_47, 

CASE
    WHEN AUXRR148 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR148 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_48, 

CASE
    WHEN AUXRR149 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR149 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_49, 

CASE
    WHEN AUXRR150 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR150 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_50, 

CASE
    WHEN AUXRR151 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR151 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_51, 

CASE
    WHEN AUXRR152 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR152 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_52, 

CASE
    WHEN AUXRR153 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR153 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_53, 

CASE
    WHEN AUXRR154 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR154 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_54, 

CASE
    WHEN AUXRR155 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR155 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_55, 

CASE
    WHEN AUXRR156 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR156 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_56, 

CASE
    WHEN AUXRR157 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR157 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_57, 

CASE
    WHEN AUXRR158 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR158 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_58, 

CASE
    WHEN AUXRR159 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR159 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_59, 

CASE
    WHEN AUXRR160 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR160 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_60, 

CASE
    WHEN AUXRR161 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR161 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_61, 

CASE
    WHEN AUXRR162 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR162 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_62, 

CASE
    WHEN AUXRR163 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR163 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_63, 

CASE
    WHEN AUXRR164 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR164 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_64, 

CASE
    WHEN AUXRR165 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR165 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_65, 

CASE
    WHEN AUXRR166 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR166 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_66, 

CASE
    WHEN AUXRR167 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR167 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_67, 

CASE
    WHEN AUXRR168 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR168 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_68, 

CASE
    WHEN AUXRR169 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR169 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_69, 

CASE
    WHEN AUXRR170 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR170 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_70, 

CASE
    WHEN AUXRR171 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR171 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_71, 

CASE
    WHEN AUXRR172 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR172 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_72, 

CASE
    WHEN AUXRR173 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR173 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_73, 

CASE
    WHEN AUXRR174 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR174 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_74, 

CASE
    WHEN AUXRR175 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR175 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_75, 

CASE
    WHEN AUXRR176 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR176 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_76, 

CASE
    WHEN AUXRR177 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR177 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_77, 

CASE
    WHEN AUXRR178 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR178 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_78, 

CASE
    WHEN AUXRR179 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR179 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_79, 

CASE
    WHEN AUXRR180 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR180 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_80, 

CASE
    WHEN AUXRR181 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR181 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_81, 

CASE
    WHEN AUXRR182 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR182 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_82, 

CASE
    WHEN AUXRR183 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR183 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_83, 

CASE
    WHEN AUXRR184 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR184 AS FLOAT64) 
 END as acoustic_reflex_right_ear_1khz_84, 

CASE
    WHEN AUXLR101 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR101 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_01, 

CASE
    WHEN AUXLR102 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR102 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_02, 

CASE
    WHEN AUXLR103 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR103 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_03, 

CASE
    WHEN AUXLR104 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR104 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_04, 

CASE
    WHEN AUXLR105 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR105 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_05, 

CASE
    WHEN AUXLR106 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR106 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_06, 

CASE
    WHEN AUXLR107 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR107 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_07, 

CASE
    WHEN AUXLR108 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR108 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_08, 

CASE
    WHEN AUXLR109 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR109 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_09, 

CASE
    WHEN AUXLR110 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR110 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_10, 

CASE
    WHEN AUXLR111 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR111 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_11, 

CASE
    WHEN AUXLR112 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR112 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_12, 

CASE
    WHEN AUXLR113 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR113 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_13, 

CASE
    WHEN AUXLR114 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR114 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_14, 

CASE
    WHEN AUXLR115 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR115 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_15, 

CASE
    WHEN AUXLR116 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR116 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_16, 

CASE
    WHEN AUXLR117 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR117 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_17, 

CASE
    WHEN AUXLR118 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR118 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_18, 

CASE
    WHEN AUXLR119 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR119 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_19, 

CASE
    WHEN AUXLR120 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR120 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_20, 

CASE
    WHEN AUXLR121 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR121 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_21, 

CASE
    WHEN AUXLR122 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR122 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_22, 

CASE
    WHEN AUXLR123 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR123 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_23, 

CASE
    WHEN AUXLR124 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR124 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_24, 

CASE
    WHEN AUXLR125 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR125 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_25, 

CASE
    WHEN AUXLR126 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR126 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_26, 

CASE
    WHEN AUXLR127 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR127 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_27, 

CASE
    WHEN AUXLR128 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR128 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_28, 

CASE
    WHEN AUXLR129 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR129 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_29, 

CASE
    WHEN AUXLR130 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR130 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_30, 

CASE
    WHEN AUXLR131 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR131 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_31, 

CASE
    WHEN AUXLR132 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR132 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_32, 

CASE
    WHEN AUXLR133 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR133 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_33, 

CASE
    WHEN AUXLR134 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR134 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_34, 

CASE
    WHEN AUXLR135 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR135 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_35, 

CASE
    WHEN AUXLR136 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR136 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_36, 

CASE
    WHEN AUXLR137 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR137 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_37, 

CASE
    WHEN AUXLR138 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR138 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_38, 

CASE
    WHEN AUXLR139 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR139 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_39, 

CASE
    WHEN AUXLR140 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR140 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_40, 

CASE
    WHEN AUXLR141 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR141 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_41, 

CASE
    WHEN AUXLR142 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR142 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_42, 

CASE
    WHEN AUXLR143 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR143 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_43, 

CASE
    WHEN AUXLR144 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR144 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_44, 

CASE
    WHEN AUXLR145 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR145 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_45, 

CASE
    WHEN AUXLR146 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR146 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_46, 

CASE
    WHEN AUXLR147 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR147 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_47, 

CASE
    WHEN AUXLR148 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR148 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_48, 

CASE
    WHEN AUXLR149 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR149 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_49, 

CASE
    WHEN AUXLR150 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR150 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_50, 

CASE
    WHEN AUXLR151 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR151 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_51, 

CASE
    WHEN AUXLR152 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR152 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_52, 

CASE
    WHEN AUXLR153 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR153 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_53, 

CASE
    WHEN AUXLR154 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR154 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_54, 

CASE
    WHEN AUXLR155 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR155 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_55, 

CASE
    WHEN AUXLR156 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR156 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_56, 

CASE
    WHEN AUXLR157 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR157 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_57, 

CASE
    WHEN AUXLR158 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR158 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_58, 

CASE
    WHEN AUXLR159 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR159 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_59, 

CASE
    WHEN AUXLR160 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR160 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_60, 

CASE
    WHEN AUXLR161 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR161 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_61, 

CASE
    WHEN AUXLR162 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR162 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_62, 

CASE
    WHEN AUXLR163 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR163 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_63, 

CASE
    WHEN AUXLR164 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR164 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_64, 

CASE
    WHEN AUXLR165 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR165 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_65, 

CASE
    WHEN AUXLR166 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR166 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_66, 

CASE
    WHEN AUXLR167 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR167 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_67, 

CASE
    WHEN AUXLR168 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR168 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_68, 

CASE
    WHEN AUXLR169 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR169 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_69, 

CASE
    WHEN AUXLR170 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR170 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_70, 

CASE
    WHEN AUXLR171 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR171 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_71, 

CASE
    WHEN AUXLR172 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR172 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_72, 

CASE
    WHEN AUXLR173 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR173 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_73, 

CASE
    WHEN AUXLR174 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR174 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_74, 

CASE
    WHEN AUXLR175 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR175 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_75, 

CASE
    WHEN AUXLR176 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR176 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_76, 

CASE
    WHEN AUXLR177 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR177 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_77, 

CASE
    WHEN AUXLR178 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR178 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_78, 

CASE
    WHEN AUXLR179 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR179 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_79, 

CASE
    WHEN AUXLR180 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR180 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_80, 

CASE
    WHEN AUXLR181 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR181 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_81, 

CASE
    WHEN AUXLR182 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR182 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_82, 

CASE
    WHEN AUXLR183 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR183 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_83, 

CASE
    WHEN AUXLR184 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR184 AS FLOAT64) 
 END as acoustic_reflex_left_ear_1khz_84, 

CASE
    WHEN AUXRR201 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR201 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_01, 

CASE
    WHEN AUXRR202 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR202 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_02, 

CASE
    WHEN AUXRR203 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR203 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_03, 

CASE
    WHEN AUXRR204 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR204 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_04, 

CASE
    WHEN AUXRR205 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR205 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_05, 

CASE
    WHEN AUXRR206 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR206 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_06, 

CASE
    WHEN AUXRR207 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR207 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_07, 

CASE
    WHEN AUXRR208 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR208 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_08, 

CASE
    WHEN AUXRR209 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR209 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_09, 

CASE
    WHEN AUXRR210 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR210 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_10, 

CASE
    WHEN AUXRR211 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR211 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_11, 

CASE
    WHEN AUXRR212 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR212 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_12, 

CASE
    WHEN AUXRR213 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR213 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_13, 

CASE
    WHEN AUXRR214 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR214 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_14, 

CASE
    WHEN AUXRR215 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR215 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_15, 

CASE
    WHEN AUXRR216 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR216 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_16, 

CASE
    WHEN AUXRR217 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR217 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_17, 

CASE
    WHEN AUXRR218 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR218 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_18, 

CASE
    WHEN AUXRR219 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR219 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_19, 

CASE
    WHEN AUXRR220 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR220 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_20, 

CASE
    WHEN AUXRR221 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR221 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_21, 

CASE
    WHEN AUXRR222 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR222 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_22, 

CASE
    WHEN AUXRR223 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR223 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_23, 

CASE
    WHEN AUXRR224 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR224 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_24, 

CASE
    WHEN AUXRR225 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR225 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_25, 

CASE
    WHEN AUXRR226 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR226 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_26, 

CASE
    WHEN AUXRR227 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR227 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_27, 

CASE
    WHEN AUXRR228 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR228 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_28, 

CASE
    WHEN AUXRR229 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR229 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_29, 

CASE
    WHEN AUXRR230 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR230 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_30, 

CASE
    WHEN AUXRR231 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR231 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_31, 

CASE
    WHEN AUXRR232 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR232 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_32, 

CASE
    WHEN AUXRR233 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR233 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_33, 

CASE
    WHEN AUXRR234 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR234 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_34, 

CASE
    WHEN AUXRR235 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR235 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_35, 

CASE
    WHEN AUXRR236 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR236 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_36, 

CASE
    WHEN AUXRR237 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR237 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_37, 

CASE
    WHEN AUXRR238 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR238 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_38, 

CASE
    WHEN AUXRR239 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR239 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_39, 

CASE
    WHEN AUXRR240 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR240 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_40, 

CASE
    WHEN AUXRR241 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR241 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_41, 

CASE
    WHEN AUXRR242 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR242 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_42, 

CASE
    WHEN AUXRR243 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR243 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_43, 

CASE
    WHEN AUXRR244 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR244 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_44, 

CASE
    WHEN AUXRR245 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR245 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_45, 

CASE
    WHEN AUXRR246 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR246 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_46, 

CASE
    WHEN AUXRR247 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR247 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_47, 

CASE
    WHEN AUXRR248 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR248 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_48, 

CASE
    WHEN AUXRR249 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR249 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_49, 

CASE
    WHEN AUXRR250 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR250 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_50, 

CASE
    WHEN AUXRR251 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR251 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_51, 

CASE
    WHEN AUXRR252 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR252 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_52, 

CASE
    WHEN AUXRR253 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR253 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_53, 

CASE
    WHEN AUXRR254 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR254 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_54, 

CASE
    WHEN AUXRR255 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR255 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_55, 

CASE
    WHEN AUXRR256 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR256 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_56, 

CASE
    WHEN AUXRR257 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR257 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_57, 

CASE
    WHEN AUXRR258 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR258 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_58, 

CASE
    WHEN AUXRR259 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR259 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_59, 

CASE
    WHEN AUXRR260 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR260 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_60, 

CASE
    WHEN AUXRR261 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR261 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_61, 

CASE
    WHEN AUXRR262 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR262 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_62, 

CASE
    WHEN AUXRR263 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR263 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_63, 

CASE
    WHEN AUXRR264 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR264 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_64, 

CASE
    WHEN AUXRR265 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR265 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_65, 

CASE
    WHEN AUXRR266 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR266 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_66, 

CASE
    WHEN AUXRR267 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR267 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_67, 

CASE
    WHEN AUXRR268 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR268 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_68, 

CASE
    WHEN AUXRR269 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR269 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_69, 

CASE
    WHEN AUXRR270 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR270 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_70, 

CASE
    WHEN AUXRR271 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR271 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_71, 

CASE
    WHEN AUXRR272 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR272 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_72, 

CASE
    WHEN AUXRR273 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR273 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_73, 

CASE
    WHEN AUXRR274 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR274 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_74, 

CASE
    WHEN AUXRR275 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR275 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_75, 

CASE
    WHEN AUXRR276 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR276 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_76, 

CASE
    WHEN AUXRR277 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR277 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_77, 

CASE
    WHEN AUXRR278 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR278 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_78, 

CASE
    WHEN AUXRR279 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR279 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_79, 

CASE
    WHEN AUXRR280 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR280 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_80, 

CASE
    WHEN AUXRR281 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR281 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_81, 

CASE
    WHEN AUXRR282 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR282 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_82, 

CASE
    WHEN AUXRR283 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR283 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_83, 

CASE
    WHEN AUXRR284 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXRR284 AS FLOAT64) 
 END as acoustic_reflex_right_ear_2khz_84, 

CASE
    WHEN AUXLR201 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR201 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_01, 

CASE
    WHEN AUXLR202 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR202 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_02, 

CASE
    WHEN AUXLR203 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR203 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_03, 

CASE
    WHEN AUXLR204 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR204 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_04, 

CASE
    WHEN AUXLR205 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR205 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_05, 

CASE
    WHEN AUXLR206 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR206 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_06, 

CASE
    WHEN AUXLR207 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR207 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_07, 

CASE
    WHEN AUXLR208 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR208 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_08, 

CASE
    WHEN AUXLR209 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR209 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_09, 

CASE
    WHEN AUXLR210 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR210 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_10, 

CASE
    WHEN AUXLR211 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR211 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_11, 

CASE
    WHEN AUXLR212 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR212 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_12, 

CASE
    WHEN AUXLR213 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR213 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_13, 

CASE
    WHEN AUXLR214 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR214 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_14, 

CASE
    WHEN AUXLR215 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR215 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_15, 

CASE
    WHEN AUXLR216 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR216 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_16, 

CASE
    WHEN AUXLR217 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR217 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_17, 

CASE
    WHEN AUXLR218 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR218 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_18, 

CASE
    WHEN AUXLR219 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR219 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_19, 

CASE
    WHEN AUXLR220 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR220 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_20, 

CASE
    WHEN AUXLR221 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR221 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_21, 

CASE
    WHEN AUXLR222 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR222 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_22, 

CASE
    WHEN AUXLR223 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR223 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_23, 

CASE
    WHEN AUXLR224 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR224 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_24, 

CASE
    WHEN AUXLR225 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR225 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_25, 

CASE
    WHEN AUXLR226 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR226 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_26, 

CASE
    WHEN AUXLR227 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR227 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_27, 

CASE
    WHEN AUXLR228 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR228 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_28, 

CASE
    WHEN AUXLR229 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR229 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_29, 

CASE
    WHEN AUXLR230 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR230 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_30, 

CASE
    WHEN AUXLR231 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR231 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_31, 

CASE
    WHEN AUXLR232 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR232 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_32, 

CASE
    WHEN AUXLR233 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR233 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_33, 

CASE
    WHEN AUXLR234 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR234 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_34, 

CASE
    WHEN AUXLR235 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR235 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_35, 

CASE
    WHEN AUXLR236 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR236 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_36, 

CASE
    WHEN AUXLR237 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR237 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_37, 

CASE
    WHEN AUXLR238 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR238 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_38, 

CASE
    WHEN AUXLR239 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR239 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_39, 

CASE
    WHEN AUXLR240 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR240 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_40, 

CASE
    WHEN AUXLR241 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR241 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_41, 

CASE
    WHEN AUXLR242 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR242 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_42, 

CASE
    WHEN AUXLR243 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR243 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_43, 

CASE
    WHEN AUXLR244 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR244 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_44, 

CASE
    WHEN AUXLR245 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR245 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_45, 

CASE
    WHEN AUXLR246 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR246 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_46, 

CASE
    WHEN AUXLR247 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR247 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_47, 

CASE
    WHEN AUXLR248 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR248 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_48, 

CASE
    WHEN AUXLR249 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR249 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_49, 

CASE
    WHEN AUXLR250 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR250 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_50, 

CASE
    WHEN AUXLR251 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR251 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_51, 

CASE
    WHEN AUXLR252 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR252 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_52, 

CASE
    WHEN AUXLR253 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR253 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_53, 

CASE
    WHEN AUXLR254 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR254 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_54, 

CASE
    WHEN AUXLR255 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR255 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_55, 

CASE
    WHEN AUXLR256 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR256 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_56, 

CASE
    WHEN AUXLR257 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR257 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_57, 

CASE
    WHEN AUXLR258 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR258 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_58, 

CASE
    WHEN AUXLR259 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR259 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_59, 

CASE
    WHEN AUXLR260 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR260 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_60, 

CASE
    WHEN AUXLR261 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR261 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_61, 

CASE
    WHEN AUXLR262 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR262 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_62, 

CASE
    WHEN AUXLR263 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR263 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_63, 

CASE
    WHEN AUXLR264 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR264 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_64, 

CASE
    WHEN AUXLR265 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR265 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_65, 

CASE
    WHEN AUXLR266 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR266 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_66, 

CASE
    WHEN AUXLR267 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR267 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_67, 

CASE
    WHEN AUXLR268 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR268 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_68, 

CASE
    WHEN AUXLR269 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR269 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_69, 

CASE
    WHEN AUXLR270 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR270 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_70, 

CASE
    WHEN AUXLR271 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR271 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_71, 

CASE
    WHEN AUXLR272 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR272 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_72, 

CASE
    WHEN AUXLR273 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR273 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_73, 

CASE
    WHEN AUXLR274 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR274 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_74, 

CASE
    WHEN AUXLR275 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR275 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_75, 

CASE
    WHEN AUXLR276 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR276 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_76, 

CASE
    WHEN AUXLR277 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR277 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_77, 

CASE
    WHEN AUXLR278 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR278 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_78, 

CASE
    WHEN AUXLR279 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR279 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_79, 

CASE
    WHEN AUXLR280 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR280 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_80, 

CASE
    WHEN AUXLR281 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR281 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_81, 

CASE
    WHEN AUXLR282 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR282 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_82, 

CASE
    WHEN AUXLR283 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR283 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_83, 

CASE
    WHEN AUXLR284 IS NULL THEN NULL 
ELSE SAFE_CAST(AUXLR284 AS FLOAT64) 
 END as acoustic_reflex_left_ear_2khz_84, 

CASE
    WHEN WTSAU2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAU2YR AS FLOAT64) 
 END as audiometry_subsample_2_year_mec_weight, 

CASE
    WHEN WTSAU4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSAU4YR AS FLOAT64) 
 END as audiometry_subsample_4_year_mec_weight, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_audiometry_acoustic_reflex_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_AUXAR.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUXAR_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/AUXAR_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/AUXAR_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/AUXAR_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/AUXAR_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/AUXAR_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/AUXAR_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/AUXAR_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/AUXAR.htm
*/
