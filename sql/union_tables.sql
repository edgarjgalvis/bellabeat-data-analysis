-- dailyActivity_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.dailyActivity_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.dailyActivity_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.dailyActivity_merged_temp`;

-- heartrate_seconds_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.heartrate_seconds_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.heartrate_seconds_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.heartrate_seconds_merged_temp`;

-- hourlyCalories_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.hourlyCalories_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.hourlyCalories_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.hourlyCalories_merged_temp`;

-- hourlyIntensities_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.hourlyIntensities_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.hourlyIntensities_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.hourlyIntensities_merged_temp`;

-- hourlySteps_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.hourlySteps_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.hourlySteps_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.hourlySteps_merged_temp`;

-- minuteCaloriesNarrow_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_temp`;

-- minuteIntensitiesNarrow_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteIntensitiesNarrow_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteIntensitiesNarrow_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.minuteIntensitiesNarrow_merged_temp`;

-- minuteMETsNarrow_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteMETsNarrow_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteMETsNarrow_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.minuteMETsNarrow_merged_temp`;

-- minuteSleep_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteSleep_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteSleep_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.minuteSleep_merged_temp`;

-- minuteStepsNarrow_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteStepsNarrow_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteStepsNarrow_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.minuteStepsNarrow_merged_temp`;

-- weightLogInfo_merged
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.weightLogInfo_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.weightLogInfo_merged`
UNION ALL
SELECT * FROM `danalist-95218.fitbit_data.weightLogInfo_merged_temp`;
