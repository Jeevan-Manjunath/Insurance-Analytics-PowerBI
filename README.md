# Insurance Data Analytics Pipeline

A Power BI dashboard analyzing insurance policy and claims data — connecting to SQL Server, performing data-quality checks in Power Query, and reporting key metrics for a sample insurance company ("Prism Insurance Pvt. Ltd.").

## Project Overview

This project explores insurance policy and claims data to surface patterns across policy types, claim outcomes, and customer demographics. Power BI connects directly to a SQL Server database (`Insurancedb`), where the data is reviewed for quality, transformed, and visualized on an interactive dashboard.

## Dashboard Highlights

- **KPI Summary Cards:** Headline metrics for Total Premium Amount, Coverage Amount, and Claim Amount.
- **Premium by Policy Type:** Bar chart comparing premium totals across Travel, Health, Auto, Life, and Home policies.
- **Policy Status Breakdown:** Donut chart showing the split between Active and Inactive policies.
- **Claims by Status:** Chart showing claim volume across Rejected, Settled, and Pending outcomes.
- **Claim Amount by Age Group:** Line chart comparing claim totals across Adult, Elder, and Young Adult customers.
- **Demographics:** Gender split cards (Male/Female policyholders).
- **Detailed Matrix Table:** Policy Type broken down by Pending, Rejected, and Settled claim amounts, with row and column totals.
- **Interactive Filters:** Slicers for Policy Number, Claim Number, and Customer ID.

## What This Project Covers

- **SQL Server Connectivity:** Connected Power BI Desktop to a SQL Server database as a live data source.
- **Data Quality Checks:** Used Power Query to review row counts and identify null or missing values across policy records before building any reports.
- **Data Transformation:** Added two calculated columns in Power Query — Active/Inactive policy status and Age Group buckets — used directly in the dashboard's cards, charts, and matrix table.
- **Reporting:** KPI cards and the matrix table use the underlying numeric fields (Premium, Coverage, Claim Amount) directly, relying on Power BI's built-in sum aggregation — no custom DAX measures were needed for this dataset.
- **Dashboard Design:** Combined cards, charts, a donut visual, and a matrix table into a single, filterable executive view.

## Tech Stack

| Layer | Tool |
|---|---|
| Database | SQL Server |
| Data Connection & Cleaning | Power BI (Power Query / M) |
| Reporting | Power BI (cards, charts, matrix table) |

## Files in This Repo

| File | Description |
|---|---|
| `Insurancedb.sql` | SQL script used to set up the `Insurancedb` database |
| `Insurance Data Dashboard.pbix` | Power BI file with the data model and dashboard |
| `Insurance Dashboard.png` | Screenshot of the final dashboard |

## What I Learned

This project was hands-on practice connecting Power BI directly to a SQL Server database, using Power Query as a data-quality checkpoint before reporting, and combining multiple visual types (cards, bar chart, donut chart, line chart, and matrix table) into one filterable dashboard.

## Possible Improvements

- Automate the row-count and null checks instead of reviewing manually
- Add DAX time-intelligence measures (e.g., claims trend by policy year)
- Add data validation directly in SQL Server before each Power BI refresh
