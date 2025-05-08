-- Q1: Device Usage Frequency
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.device_usage_days` AS
SELECT 
  Id,
  COUNT(DISTINCT ActivityDate) AS usage_days
FROM `danalist-95218.fitbit_data.dailyActivity_merged`
GROUP BY Id;

-- Q2: Daily Average Minutes by Intensity
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.avg_activity_minutes` AS
SELECT 
  ROUND(AVG(SedentaryMinutes),2) AS avg_sedentary,
  ROUND(AVG(LightlyActiveMinutes),2) AS avg_lightly,
  ROUND(AVG(FairlyActiveMinutes),2) AS avg_fairly,
  ROUND(AVG(VeryActiveMinutes),2) AS avg_very
FROM `danalist-95218.fitbit_data.dailyActivity_merged`;

-- Q3: Sleep Patterns (Time in bed vs asleep)
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.sleep_summary` AS
SELECT 
  ROUND(AVG(TotalTimeInBed),2) AS avg_time_in_bed,
  ROUND(AVG(TotalMinutesAsleep),2) AS avg_time_asleep,
  ROUND(AVG(TotalMinutesAsleep) / AVG(TotalTimeInBed),2) AS sleep_efficiency
FROM `danalist-95218.fitbit_data.sleepDay_merged`;

-- Q4: Weekday vs Weekend Activity (Steps & Calories)
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.weekday_vs_weekend` AS
SELECT 
  CASE 
    WHEN EXTRACT(DAYOFWEEK FROM PARSE_DATE('%m/%d/%Y', ActivityDate)) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
  END AS day_type,
  ROUND(AVG(TotalSteps),2) AS avg_steps,
  ROUND(AVG(Calories),2) AS avg_calories
FROM `danalist-95218.fitbit_data.dailyActivity_merged`
GROUP BY day_type;
