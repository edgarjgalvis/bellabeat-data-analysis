Bellabeat Data Analysis Case Study

📅 Project Overview

Bellabeat is a high-tech wellness company that manufactures smart health-focused devices for women. The goal of this case study is to analyze how users interact with smart devices (Fitbit data) to uncover patterns in activity, sleep, and device usage. These insights will help Bellabeat's marketing team make data-driven decisions to increase user engagement and unlock new growth opportunities.

Target audience: marketing stakeholders, product analysts, and business strategists within Bellabeat and similar health-tech startups.

🔍 Business Questions

How frequently do users engage with smart devices?

How many minutes do users engage in different levels of physical activity?

What are the patterns of sleep among users?

How do activity levels differ between weekdays and weekends?

What strategic recommendations can Bellabeat implement based on these patterns?

📊 Data Source

Dataset: Fitbit Fitness Tracker Data

Provider: Kaggle Dataset - FitBit Fitness Tracker Data

Period: March 12, 2016 to May 12, 2016

Data from 30 Fitbit users, including:

Daily activity, steps, and calories

Hourly and minute-level activity

Sleep logs

Weight and BMI logs

Heart rate data

📃 Tools Used

Google BigQuery (SQL)

Tableau (for data visualization)

Google Sheets

Kaggle (dataset source)

GitHub (project documentation)

📅 Data Preparation & Cleaning

A total of 18 CSV files were split into two folders (March–April and April–May). For each dataset:

Files from both periods were uploaded to BigQuery.

Duplicate entries were removed.

Tables were unified using UNION ALL.

Columns with datetime strings (e.g., "4/12/2016 7:21:00 AM") were converted to UTC TIMESTAMP format using PARSE_TIMESTAMP.

Inconsistent date formats and nulls were validated using regular expressions.

Columns were reordered and renamed for clarity.

Special case: The heartrate_seconds_merged table had over 2.4 million records. To upload this large dataset:

It was imported with the Time column as a string.

Converted later into TIMESTAMP with a new column.

Cleaned and finalized into a usable table.

🔢 Analysis

Each business question was addressed using SQL queries in BigQuery, and the results were exported to Tableau for visualization.

✅ Q1: Device Usage Frequency

Analyzed number of days each user used their Fitbit.

Insight: Most users used the device between 20–30 days in the period.

✅ Q2: Physical Activity Breakdown

Measured average minutes per day in sedentary, lightly, fairly, and very active categories.

Insight: Majority of daily time was sedentary. Very active time was minimal.

✅ Q3: Sleep Patterns

Compared time in bed vs. time asleep per day.

Insight: Users sleep an average of 6.9 hours, but spend over 7.5 hours in bed. Low sleep efficiency.

✅ Q4: Weekday vs Weekend Activity

Compared average calories burned and steps taken between weekdays and weekends.

Insight: Slightly higher activity during weekdays. Opportunities to boost engagement on weekends.

🧵 Strategic Recommendations

Based on user behavior trends, Bellabeat could:

Promote sleep quality features: Encourage reminders or smart alarms to improve sleep efficiency.

Gamify activity goals: Launch weekday vs. weekend challenges to motivate users.

Send alerts during low-activity times: Example: afternoon or weekend reminders.

Improve weekend engagement: Tailor content to boost activity during off days.

🎨 Visualizations

All visualizations were created in Tableau and included in the presentation.

Available charts:

Device usage frequency

Activity minutes by intensity level

Sleep duration vs. time in bed

Weekday vs. weekend: calories & steps

(Images and .twbx Tableau file available in this repository)

📄 Presentation (PDF)

A concise summary of this project is also available as a PDF presentation for quick review. It includes goals, key charts, insights, and recommendations.

<a href="https://github.com/edgarjgalvis/bellabeat-data-analysis/blob/main/Presentation/Case%20Study%202%20-%20Presentation.pdf" target="_blank">Case Study 2 - Presentation</a>

💼 Credits

Dataset: FitBit Fitness Tracker Data on Kaggle

Case study inspired by the Google Data Analytics Capstone.

🔍 About the Author

Edgar Galvis — Junior Data Analyst passionate about data-driven decisions, process optimization, and user behavior insights.

<a href="www.linkedin.com/in/edgar-j-galvis" target="_blank"> LinkedIn </a> | <a href="https://github.com/edgarjgalvis" target="_blank"> GitHub </a>

