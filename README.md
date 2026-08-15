# HAESHIT.SQL-PROJECT
# COVID-19 Data Analytics — SQL Project

## Problem
Global COVID-19 pandemic data across 10 countries needed to be analyzed to identify infection trends, mortality risk, and vaccination gaps for evidence-based decision making.

## Logic
- Designed and created two relational tables (`Covid_Cases`, `Vaccination_Data`) with 100 total records
- Used SQL aggregations (SUM, COUNT), GROUP BY/ORDER BY, and JOINs to combine case and vaccination data
- Applied CASE WHEN logic to classify countries into HIGH/MEDIUM/LOW risk tiers based on death counts
- Built a stored procedure (`ADD_CASE`) to automate new record insertion

## Solution
📄 [View the SQL queries](./COVID_Data_Analytics_1.sql)

Key queries include:
- Country-wise confirmed case, recovery, and death totals
- Countries where vaccine doses administered were lower than confirmed cases (JOIN-based)
- Automated risk classification using CASE WHEN

## Insights
- Identified countries with vaccination shortfalls relative to case counts
- Classified countries into risk tiers to support prioritization
- Reduced manual querying effort using a reusable stored procedure

**Tools used:** SQL (Joins, CTEs, Aggregations, Stored Procedures)
