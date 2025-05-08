--To change from String to Time type:

CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final` AS
SELECT
  *,
  PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', CAST(ActivityMinute AS STRING)) AS activityminute_utc
FROM
  `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged`;


--To erase String column that is no necessary anylonger:
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final` AS
SELECT
  * EXCEPT(ActivityMinute)
FROM
  `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final`;

--To rename column UTC to its original name and that is now in TIMESTAMP format:
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final` AS
SELECT
  -- selecciona todas las columnas excepto la que vamos a renombrar
  * EXCEPT (activityminute_utc),
  -- renombra la columna
  activityminute_utc AS ActivityMinute
FROM
  `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final`;

--Reorder columns in the table: 
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final` AS
SELECT
  Id,
  ActivityMinute,
  Calories
FROM
  `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final`;


--Change table name
CREATE OR REPLACE TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged` AS
SELECT * FROM `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final`;

-- Delete previous table:
DROP TABLE `danalist-95218.fitbit_data.minuteCaloriesNarrow_merged_final`;
