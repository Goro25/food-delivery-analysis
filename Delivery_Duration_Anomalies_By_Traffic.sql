-- Detect Inconsistent Delivery Durations based on Distance and Traffic level

with Traffic_Avg as (
Select Traffic_Level, Avg(Delivery_Time_min) as Average_time_taken from Food_Delivery
where Traffic_Level is not null
Group by Traffic_Level ),
Required_Columns as (
Select Order_id,Distance_km,Traffic_level,Delivery_Time_min from Food_Delivery)
Select R.Order_id,R.Distance_km,TA.Traffic_level,R.Delivery_Time_min,TA.Average_time_taken,(R.Delivery_Time_min - TA.Average_time_taken) as Deviation,
Dense_Rank()over(partition by R.Traffic_Level Order by (R.Delivery_Time_min - TA.Average_time_taken) Desc) as rnk 
From Required_Columns as R
Join Traffic_Avg as TA
on R.Traffic_Level = TA.Traffic_Level
where (R.Delivery_Time_min - TA.Average_time_taken) > 30

