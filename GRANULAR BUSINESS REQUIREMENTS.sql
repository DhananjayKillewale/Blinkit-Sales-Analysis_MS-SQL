--GRANULAR BUSINESS REQUIREMENTS 

--1. Total Sales by fat Content:

select Item_Fat_Content, 
cast(sum(Total_Sales)/1000 as decimal(10,2)) as Total_Sales_Thousands, 
cast(avg(Total_Sales) as decimal(10,0)) as Avg_Sales, 
count(*) as No_Of_Items,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from [BlinkIT Grocery Data]
group by Item_Fat_Content
order by Total_Sales_Thousands DESC

--2. Total Sales by Item type:

select Item_Type, 
cast(sum(Total_Sales)/1000 as decimal(10,2)) as Total_Sales, 
cast(avg(Total_Sales) as decimal(10,0)) as Avg_Sales, 
count(*) as No_Of_Items,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from [BlinkIT Grocery Data]
group by Item_Type
order by Total_Sales DESC

--3. Fat Content by Outlet for Total Sales:
select Outlet_Location_Type,
ISNULL([Low Fat],0) as Low_Fat,
ISNULL(Regular,0) as Regular
from 
(
select Outlet_Location_Type, Item_Fat_Content,
cast(sum(Total_Sales)/1000 as decimal(10,2)) as Total_Sales 

from [BlinkIT Grocery Data]
group by Outlet_Location_Type, Item_Fat_Content
) as SourceTable
PIVOT
(
sum(Total_Sales)
for Item_Fat_Content in ([Low Fat], [Regular])
) as PivotTable
order by Outlet_Location_Type DESC

--4. Total Sales by Outlet Establishment

select Outlet_Establishment_Year, 
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
cast(avg(Total_Sales) as decimal(10,1)) as Avg_Sales, 
count(*) as No_Of_Items,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from [BlinkIT Grocery Data]
group by Outlet_Establishment_Year
order by Total_Sales DESC 

--5. Percentage of Sales by Outlet size

select 
Outlet_Size,
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
cast((sum(Total_Sales) * 100.0/sum(sum(Total_Sales)) over()) as decimal(10,2)) AS Sales_Percentage
from [BlinkIT Grocery Data]
group by Outlet_Size
order by Total_Sales DESC;

--6. Sales by Outlet location:
 
select Outlet_Location_Type, 
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
cast((sum(Total_Sales) * 100.0/sum(sum(Total_Sales)) over()) as decimal(10,2)) AS Sales_Percentage,
cast(avg(Total_Sales) as decimal(10,1)) as Avg_Sales, 
count(*) as No_Of_Items,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from [BlinkIT Grocery Data]
group by Outlet_Location_Type  
order by Total_Sales DESC 


--7. All metric by Outlet Type:

select Outlet_Type, 
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
cast((sum(Total_Sales) * 100.0/sum(sum(Total_Sales)) over()) as decimal(10,2)) AS Sales_Percentage,
cast(avg(Total_Sales) as decimal(10,1)) as Avg_Sales, 
count(*) as No_Of_Items,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from [BlinkIT Grocery Data]
group by Outlet_Type  
order by Total_Sales DESC 
