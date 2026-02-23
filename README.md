# Blinkit-Sales-Analysis_MS-SQL
End-to-end sales analysis of Blinkit retail data using MS SQL Server including data cleaning, KPI computation, pivot analysis, and business insights generation.


📌 Project Overview

This project focuses on performing an end-to-end sales analysis of Blinkit’s retail dataset using Microsoft SQL Server.

The objective of this project is to analyze:

📊 Sales Performance

⭐ Customer Satisfaction

🏬 Outlet & Inventory Distribution

📦 Product Category Performance

📈 Analysis Performed
1️⃣ Total Sales by Fat Content

Analyzed performance of Low Fat vs Regular items.

Compared revenue contribution across categories.

2️⃣ Total Sales by Item Type

Identified top-performing product categories.

Ranked items by revenue.

3️⃣ Fat Content by Outlet Location (Using PIVOT)

Transformed row data into column format.

Compared Low Fat vs Regular sales across outlet locations.

Used PIVOT and ISNULL() for better reporting.

4️⃣ Sales by Outlet Establishment Year

Analyzed how older vs newer outlets perform.

Evaluated trend impact based on establishment age.

5️⃣ Percentage of Sales by Outlet Size

Calculated contribution of:

Small

Medium

Large outlets

Used SUM() OVER() window function to calculate percentage contribution.

6️⃣ Sales by Outlet Location Type

Compared Tier 1, Tier 2, Tier 3 locations.

Identified highest revenue generating regions.

7️⃣ All Metrics by Outlet Type

Comprehensive analysis including:

Total Sales

Average Sales

Number of Items

Average Rating

Average Item Visibility

🛠 SQL Concepts Used

This project demonstrates strong SQL fundamentals including:

✅ SELECT, WHERE, GROUP BY

✅ Aggregate Functions (SUM, AVG, COUNT)

✅ CAST & Data Formatting

✅ CASE Statements

✅ UPDATE Queries

✅ PIVOT Tables

✅ Window Functions (OVER())

✅ ISNULL()

✅ ORDER BY



💡 Key Insights:

Regular fat products contributed higher revenue compared to Low Fat.

Medium-sized outlets generated the highest percentage of sales.

Tier 3 locations showed strong performance.

Older established outlets maintained consistent sales.
