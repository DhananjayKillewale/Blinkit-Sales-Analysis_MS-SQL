--DATA CLEANING

select * from [BlinkIT Grocery Data]

select count(*) from [BlinkIT Grocery Data]

update [BlinkIT Grocery Data]
set Item_Fat_Content =
case
when Item_Fat_Content in ('LF', 'low fat') then 'Low Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
end

Select distinct (Item_Fat_Content) from [BlinkIT Grocery Data]