-- Delivery Consistency Score by Vehicle Type
with consistency_score as (
Select Vehicle_Type, Avg(Delivery_Time_min) as Average_Delivery_Time, Round(STDEV(Delivery_Time_min),2) as Standard_Deviation_Delivery_Time,
Round(1/STDEV(Delivery_Time_min),4) as Consistency_Score
from Food_Delivery where Vehicle_Type is not null
Group by Vehicle_Type)
Select *,Rank()over(Order by Consistency_Score desc) as Rank_by_Best_Consitency
from consistency_score