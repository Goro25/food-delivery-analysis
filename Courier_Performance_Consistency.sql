-- Courier Performance Consistency check
Select Courier_Experience_yrs,Count(Order_ID) as Total_Orders_Handled,Avg(Delivery_Time_min) as Average_Delivery_Time,
Round(STDEV(Delivery_Time_min),2) as Delivery_Time_Standard_Deviation
from Food_Delivery where Courier_Experience_yrs is not null
Group by Courier_Experience_yrs
Order by Courier_Experience_yrs
