 create database churn_db;
 use churn_db;
 CREATE TABLE churn_data(
 CustomerID varchar(50),
 Age INT,
 Gender varchar(10),
 Tenure INT,
 MonthlyCharges float,
 ContractType varchar(50),
 InternetService Varchar(50),
 TotalCharges float,
 TechSupport varchar(10),
 Churn varchar(10)
 );
 SELECT Count(*) from churn_data;
 SELECT Churn,Count(*) from churn_data group by Churn;
 SELECT Gender, COUNT(*) FROM churn_data GROUP BY Gender;
 SELECT ContractType, COUNT(*) FROM churn_data GROUP BY ContractType;
SELECT ContractType,
AVG(MonthlyCharges) AS AvgCharge,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM churn_data
GROUP BY ContractType;
-- Churn Rate by Contract Type
 SELECT ContractType,
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY ContractType;
-- TechSupport Impact on Churn
SELECT TechSupport,
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY TechSupport;
-- Tenure Groups Analysis
SELECT 
CASE 
    WHEN Tenure <= 12 THEN '0-1 Year'
    WHEN Tenure BETWEEN 13 AND 24 THEN '1-2 Years'
    WHEN Tenure BETWEEN 25 AND 48 THEN '2-4 Years'
    ELSE '4+ Years'
END AS Tenure_Group,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY Tenure_Group;
-- Age Group Analysis
SELECT 
CASE 
    WHEN Age < 25 THEN 'Under 25'
    WHEN Age BETWEEN 25 AND 40 THEN '25-40'
    WHEN Age BETWEEN 41 AND 60 THEN '41-60'
    ELSE '60+'
END AS Age_Group,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY Age_Group;
-- Internet Service vs Churn
SELECT InternetService,
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY InternetService;
-- High Bill Customers Churn
SELECT 
CASE 
    WHEN MonthlyCharges < 50 THEN 'Low'
    WHEN MonthlyCharges BETWEEN 50 AND 80 THEN 'Medium'
    ELSE 'High'
END AS Charge_Level,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Churn_Rate
FROM churn_data
GROUP BY Charge_Level;
 