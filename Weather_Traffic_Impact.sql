-- Impact of Weather and Traffic on Delivery Time
Select Weather,Traffic_Level,Count(*) as Total_Orders,AVG(Delivery_Time_min) as Average_Delivery_Time From Food_Delivery
where Delivery_Time_min is not null AND Weather is not null AND Traffic_Level is not null
Group by Weather,Traffic_Level
Having Count(*)>=3
Order By Weather,Average_Delivery_Time Desc