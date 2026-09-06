-- =================================================================================
-- PROJECT: Insurance Data Analytics Pipeline
-- PURPOSE: Set the active database and preview the raw insurance data
--          before connecting Power BI Desktop to it as a live data source.
-- =================================================================================

-- Step 1: Point the session at the Insurancedb database.
USE Insurancedb;

-- Step 2: Preview the raw insurance records loaded into SQL Server.
-- This table is what Power BI connects to directly. Data quality checks
-- (row counts, null values) are performed afterward in Power Query,
-- before building the dashboard.
SELECT * FROM Insurance_Raw_Data;
