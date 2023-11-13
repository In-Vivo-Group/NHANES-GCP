SELECT
        SEQN as SEQN, -- could not automatically decode name of variable or transformation logic 

DBQ010 as DBQ010, -- could not automatically decode name of variable or transformation logic 

DBD030 as DBD030, -- could not automatically decode name of variable or transformation logic 

DBQ035 as DBQ035, -- could not automatically decode name of variable or transformation logic 

DBD041 as DBD041, -- could not automatically decode name of variable or transformation logic 

DBD050 as DBD050, -- could not automatically decode name of variable or transformation logic 

DBD155 as DBD155, -- could not automatically decode name of variable or transformation logic 

DBQ158 as DBQ158, -- could not automatically decode name of variable or transformation logic 

DBQ161 as DBQ161, -- could not automatically decode name of variable or transformation logic 

DBD164 as DBD164, -- could not automatically decode name of variable or transformation logic 

DBQ167 as DBQ167, -- could not automatically decode name of variable or transformation logic 

DBD170 as DBD170, -- could not automatically decode name of variable or transformation logic 

DBQ173 as DBQ173, -- could not automatically decode name of variable or transformation logic 

DBQ176 as DBQ176, -- could not automatically decode name of variable or transformation logic 

DBQ179 as DBQ179, -- could not automatically decode name of variable or transformation logic 

DBQ182 as DBQ182, -- could not automatically decode name of variable or transformation logic 

DBQ185 as DBQ185, -- could not automatically decode name of variable or transformation logic 

DBD055 as DBD055, -- could not automatically decode name of variable or transformation logic 

DBD061 as DBD061, -- could not automatically decode name of variable or transformation logic 

DBQ073A as DBQ073A, -- could not automatically decode name of variable or transformation logic 

DBQ073B as DBQ073B, -- could not automatically decode name of variable or transformation logic 

DBQ073C as DBQ073C, -- could not automatically decode name of variable or transformation logic 

DBQ073D as DBQ073D, -- could not automatically decode name of variable or transformation logic 

DBQ073E as DBQ073E, -- could not automatically decode name of variable or transformation logic 

DBQ073U as DBQ073U, -- could not automatically decode name of variable or transformation logic 

DBQ660 as DBQ660, -- could not automatically decode name of variable or transformation logic 

DBQ665 as DBQ665, -- could not automatically decode name of variable or transformation logic 

DBQ670 as DBQ670, -- could not automatically decode name of variable or transformation logic 

DBQ675 as DBQ675, -- could not automatically decode name of variable or transformation logic 

DBQ680 as DBQ680, -- could not automatically decode name of variable or transformation logic 

DBQ685 as DBQ685, -- could not automatically decode name of variable or transformation logic 

DBQ690 as DBQ690, -- could not automatically decode name of variable or transformation logic 

DBQ695 as DBQ695, -- could not automatically decode name of variable or transformation logic 

 FROM {{ ref('stg_nhanes_file_metadata') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/limited_access/DB24_K_R.htm
        