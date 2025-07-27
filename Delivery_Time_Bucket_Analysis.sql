-- Predicting Delivery Time Buckets using Multiple Factors

Select Weather,Traffic_Level,Vehicle_Type,Time_of_Day,count(case when Delivery_Time_min<20 then 1 end) as Fast_Orders,
count (case when Delivery_Time_min >=20 AND Delivery_Time_min<=40 then 1 end) as Average_Orders,
count(case when Delivery_Time_min > 40 then 1 end) as Slow_Orders
From Food_Delivery
where Weather is Not null and Traffic_Level is not null and Time_of_Day is not null
Group by Weather,Traffic_Level,Vehicle_Type,Time_of_Day

