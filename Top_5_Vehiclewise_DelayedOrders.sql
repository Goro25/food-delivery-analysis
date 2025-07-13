-- Identify Outliers Orders Based on Delivery Time
-- Objective : Vehicle-wise Top 5 orders with highest delivery time compared to average 
with AVG_Delivery_Time as(
Select Vehicle_Type,AVG(Delivery_Time_min) as Average_Time From Food_Delivery
Group by Vehicle_Type),
Get_Order_Id_And_Delivery_Time as (
Select Order_ID,Vehicle_Type,Delivery_Time_min from Food_Delivery
),
Greater_Than_Average_Time as (
Select G.Order_ID as Order_Id,A.Vehicle_Type as Vehicle_Type,G.Delivery_Time_min as Delivery_Time,A.Average_Time as Average_Delivery_Time_Based_On_Vehicle ,Rank()over(partition by G.Vehicle_Type Order By G.Delivery_Time_min desc) as rnk
From AVG_Delivery_Time as A
Join Get_Order_Id_And_Delivery_Time as G
on A.Vehicle_Type = G.Vehicle_Type
where G.Delivery_Time_min > A.Average_Time)
Select Order_ID,Vehicle_Type,Delivery_Time,Average_Delivery_Time_Based_On_Vehicle,(Delivery_Time - Average_Delivery_Time_Based_On_Vehicle) as Delay_For_Order_in_Minutes
From Greater_Than_Average_Time
where rnk<=5

