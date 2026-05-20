-- Create Database
CREATE DATABASE churn_db;

-- Use Database
USE churn_db;

-- CREATE TABLE
CREATE TABLE churn_data (
    CustomerID VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Tenure INT,
    MonthlyCharges FLOAT,
    ContractType VARCHAR(50),
    InternetService VARCHAR(50),
    TotalCharges FLOAT,
    TechSupport VARCHAR(10),
    Churn VARCHAR(10)
);

-- BASIC DATA EXPLORATION
-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM churn_data;

-- Dataset Preview
SELECT *
FROM churn_data
LIMIT 10;

-- Churn Distribution
SELECT Churn,
       COUNT(*) AS Total_Customers
FROM churn_data
GROUP BY Churn;

-- Gender Distribution
SELECT Gender,
       COUNT(*) AS Total_Customers
FROM churn_data
GROUP BY Gender;

-- Contract Type Distribution
SELECT ContractType,
       COUNT(*) AS Total_Customers
FROM churn_data
GROUP BY ContractType;

-- Internet Service Distribution
SELECT InternetService,
       COUNT(*) AS Total_Customers
FROM churn_data
GROUP BY InternetService;

-- OVERALL CHURN RATE
SELECT 
ROUND(
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS Overall_Churn_Rate
FROM churn_data;

-- CONTRACT TYPE ANALYSIS
SELECT 
    ContractType,
    COUNT(*) AS Total_Customers,
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charges,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY ContractType
ORDER BY Churn_Rate DESC;

-- TECH SUPPORT ANALYSIS
SELECT 
    TechSupport,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY TechSupport
ORDER BY Churn_Rate DESC;

-- TENURE GROUP ANALYSIS
SELECT 
    CASE 
        WHEN Tenure <= 12 THEN '0-1 Year'
        WHEN Tenure BETWEEN 13 AND 24 THEN '1-2 Years'
        WHEN Tenure BETWEEN 25 AND 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY Tenure_Group
ORDER BY Churn_Rate DESC;

-- AGE GROUP ANALYSIS
SELECT CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 40 THEN '25-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY Age_Group
ORDER BY Churn_Rate DESC;

-- INTERNET SERVICE ANALYSIS
SELECT 
    InternetService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY InternetService
ORDER BY Churn_Rate DESC;

-- MONTHLY CHARGES ANALYSIS
SELECT 
    CASE 
        WHEN MonthlyCharges < 50 THEN 'Low Charges'
        WHEN MonthlyCharges BETWEEN 50 AND 80 THEN 'Medium Charges'
        ELSE 'High Charges'
    END AS Charge_Level,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM churn_data
GROUP BY Charge_Level
ORDER BY Churn_Rate DESC;

-- REVENUE ANALYSIS
-- Total Revenue
SELECT 
ROUND(SUM(TotalCharges),2) AS Total_Revenue
FROM churn_data;

-- Average Revenue Per Customer
SELECT 
ROUND(AVG(TotalCharges),2) AS Avg_Revenue_Per_Customer
FROM churn_data;

-- CUSTOMER RETENTION ANALYSIS
-- Retained Customers
SELECT COUNT(*) AS Retained_Customers
FROM churn_data
WHERE Churn='No';

-- Churned Customers
SELECT COUNT(*) AS Churned_Customers
FROM churn_data
WHERE Churn='Yes';

-- HIGH RISK CUSTOMER SEGMENT
SELECT *
FROM churn_data
WHERE ContractType = 'Month-to-month'
AND MonthlyCharges > 80
AND Tenure < 12
AND Churn = 'Yes';
