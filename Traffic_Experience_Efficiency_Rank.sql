-- Traffic Adjusted Delivery Performance by Courier Experience
with efficiency_cte as (
Select Traffic_Level,case when Courier_Experience_yrs = 1 then 'New'
when Courier_Experience_yrs>1 and Courier_Experience_yrs<5 then 'Intermediate'
else 'Experienced' end as Experience_Group,AVG(Delivery_Time_min/Distance_km) as Efficiency,Count(Order_ID) as Total_Deliveries
from Food_Delivery where Traffic_Level is not null
Group by Traffic_Level,Courier_Experience_yrs
)
Select *,Rank()over(partition by Traffic_Level Order by Efficiency) as Efficiency_Rank
From efficiency_cte