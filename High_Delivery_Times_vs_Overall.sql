-- Peak hour Bottleneck Detection
with overall_average as(
Select Avg(Cast(Delivery_Time_min as Float)) as overall_avg_time from Food_Delivery),
group_average as (
Select Time_of_Day,Vehicle_type,Traffic_Level,Avg(CAST(Delivery_Time_min as Float)) as group_avg_time
from Food_Delivery
where Time_of_Day is not null and Vehicle_Type is not null and Traffic_Level is not null
Group by Time_of_Day,Vehicle_type,Traffic_Level
)
Select g.Time_of_Day,g.Vehicle_Type,g.Traffic_Level,ROUND(g.group_avg_time,2) as Group_Average_Delivery_Time,
ROUND(o.overall_avg_time,2) as Overall_Average_Delivery_Time,
ROUND((g.group_avg_time - o.overall_avg_time)/o.overall_avg_time * 100,2) as Percent_Higher_Than_Overall
from group_average g
cross join overall_average o
where g.group_avg_time > o.overall_avg_time
Order by Percent_Higher_Than_Overall desc;
