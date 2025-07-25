-- Identify Most Efficient Courier Vehicle by Time of Day
with avg_delivery_time as (
Select Time_of_Day,Vehicle_Type,Avg(Delivery_Time_min) as Average_Delivery_Time
From Food_Delivery
where Time_of_Day is not null
Group by Time_of_day,Vehicle_Type)
Select *,Dense_Rank()over(partition by Time_of_Day order by Average_Delivery_Time) as Rank_by_Delivery_Time_Taken
from avg_delivery_time