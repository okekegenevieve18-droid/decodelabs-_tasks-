DecodeLabs Data Analytics Internship — Projects
This repository contains my project milestones from the DecodeLabs Data Analytics Internship (Batch 2026). Each project builds on a core data analytics skill, using the same underlying e-commerce order dataset throughout.
Repository Structure
|File                                            |Project  |Description                                                                                       |
|------------------------------------------------|---------|--------------------------------------------------------------------------------------------------|
|`Raw Dataset.xlsx`                              |—        |Original, unmodified e-commerce order dataset (1,200 rows) used across all three projects         |
|`_Decodelabs Internship _Project (1) excel.xlsx`|Project 1|Data cleaning and initial analysis — Excel, Power Query, Pivot Tables                             |
|`Decodelabs Internship _Project (2) excel.xlsx` |Project 2|Exploratory Data Analysis (EDA) — five-number summary, IQR outlier detection, correlation analysis|
|`Decodelad Internship _Project (3).sql`         |Project 3|SQL Data Analysis — SELECT, WHERE, GROUP BY, and aggregations (COUNT, SUM, AVG) in SQL Server     |
Project Summaries
Project 1 — Data Cleaning & Sales Analysis
Cleaned the raw dataset in Power Query, resolving missing CouponCode values by replacing nulls with “No Coupon.” Built a KPI summary and PivotTable dashboard covering total revenue, sales by payment method, top customers, sales by coupon code, and product-level revenue breakdown.
Tools: Excel, Power Query, PivotTables
Project 2 — Exploratory Data Analysis
Performed statistical EDA on TotalPrice: calculated the five-number summary (min, Q1, median, Q3, max, mean), identified the distribution as right-skewed, applied the IQR method to flag 8 statistical outliers, and built a Pearson correlation matrix across Quantity, UnitPrice, ItemsInCart, and TotalPrice.
Tools: Excel (formulas, conditional formatting, boxplot/histogram charts)
Project 3 — SQL Data Analysis
Queried the dataset in SQL Server to extract business insights: revenue and order count per product, sales by payment method, revenue by coupon code, order status breakdown (gross vs. net revenue), top customers by spend, and sales by referral source.
Tools: SQL Server, SQL Server Management Studio (SSMS)
How to Navigate
	1.	Start with Raw Dataset.xlsx to see the original, unmodified data
	2.	Open Project 1’s file to see the initial cleaning and PivotTable dashboard
	3.	Open Project 2’s file (EDA_Summary tab) for the statistical analysis and charts
	4.	Open Project 3’s .sql file in SQL Server Management Studio to run the queries
Skills Demonstrated
Data cleaning, Power Query, PivotTables, descriptive statistics, outlier detection, correlation analysis, SQL fundamentals (filtering, sorting, grouping, aggregation)
