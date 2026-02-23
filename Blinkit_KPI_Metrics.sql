--KPI METRICS

select cast(sum(Total_Sales)/1000000 as decimal(10,2)) as Total_Sales_Millions
from [BlinkIT Grocery Data] 

select cast(sum(Total_Sales)/1000000 as decimal(10,2)) as Total_Sales_Millions
from [BlinkIT Grocery Data] 
where Item_Fat_Content='Low Fat'

select cast(avg(Total_Sales) as decimal(10,0)) as Avg_Sales from [BlinkIT Grocery Data] 
where Outlet_Establishment_Year=2022

select count(*) as No_Of_Items from [BlinkIT Grocery Data]
where Outlet_Establishment_Year=2022

select cast(avg(Rating) as decimal(10,2)) from [BlinkIT Grocery Data] 