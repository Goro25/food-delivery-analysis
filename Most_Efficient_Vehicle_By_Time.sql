-- Most efficient courier vehicle type per time of day  using delivery speed
with avg_speed as (
Select Time_of_Day,Vehicle_Type,Round(Avg(Distance_km/Delivery_Time_min),4) as Avg_Speed_km_per_min
From Food_Delivery
where Time_of_Day is not null
Group by Time_of_Day,Vehicle_Type)
Select *,DENSE_RANK()over(partition by Time_of_Day order by Avg_Speed_km_per_min desc) as Efficiency_Rank 
from avg_speed