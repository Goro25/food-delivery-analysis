# 🍱 SQL Project 2: Food Delivery Time Analysis

This project analyzes real-world food delivery performance using a dataset from [Kaggle](https://www.kaggle.com/datasets/denniskuznets/food-delivery-time). I used **intermediate to advanced SQL queries** to extract insights related to delivery time, vehicle efficiency, courier experience, traffic conditions, and weather impact.

---

## 📊 Dataset Overview

The dataset `Food_Delivery_Times.csv` includes:

- `Order_ID`
- `Distance_km`
- `Weather`
- `Traffic_Level`
- `Time_of_Day`
- `Vehicle_Type`
- `Preparation_Time_min`
- `Courier_Experience_yrs`
- `Delivery_Time_min`

---

## 🔍 Objective

To clean and analyze food delivery data using SQL and uncover patterns across time of day, weather, traffic, vehicle types, and courier experience that affect delivery time and consistency.

---

## ✅ Tasks Completed

| Task No. | File Name                                    | Task Description                                                                                                |
|---------:|----------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| **1**    | `Basic_Data_Exploration.sql`                 | Initial inspection of columns, null checks, aggregation functions,and data understanding.                       |                     |
| **2**    | `Top_5_Vehiclewise_DelayedOrders.sql`        | Vehicle wise Top 5 Delayed orders based on Average Delivery Time.                                               |
| **3**    | `Traffic_Experience_Efficiency_Rank.sql`     | Rank combinations of traffic level and courier experience by average delivery time.                             |
| **4**    | `Delivery_Duration_Anomalies_By_Traffic.sql` | Flag orders with unusually long delivery times under each traffic level.                                        |
| **5**    | `Efficient_Vehicle_By_TimeOfDay.sql`         | Rank vehicle types by their delivery efficiency (based on delivery time per km) for each time of day.           |
| **6**    | `Weather_Traffic_Impact.sql`                 | Analyze the impact of weather and traffic on average delivery time.                                             |
| **7**    | `Courier_Performance_Consistency.sql`        | Analyze average delivery time and standard deviation by courier experience level.                               |
| **8**    | `Delivery_Consistency_Score_By_Vehicle.sql`  | Rank vehicle types by consistency of delivery time using standard deviation and calculated score.               |
| **9**    | `Most_Efficient_Vehicle_By_Time.sql`         | Determine the most efficient vehicle per time of day using delivery speed (km/min).                             |
| **10**   | `High_Delivery_Times_vs_Overall.sql`         | Compare delivery times under different conditions against the overall average to detect problematic situations. |
| **11**   | `Delivery_Time_bucket_Analysis.sql`          | Optimized delivery time bucket analysis grouped by weather,traffic,vehicle type and time of day.                |
---

## 🧠 Skills Demonstrated

- Advanced SQL (CTEs, window functions, ranking, CASE, filtering)
- Real-world data cleaning and null handling
- Analytical thinking in performance-based data scenarios
- Delivery efficiency and consistency metrics
- Business-useful insights for logistics or food delivery platforms

---

## 🛠️ Tools Used

- **SQL Server Management Studio (SSMS)**
- **SQL** (Common Table Expressions, Joins, Aggregations, Ranking functions, etc.)
- **Git & GitHub** – for version control and showcasing work

---

