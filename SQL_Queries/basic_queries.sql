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

 
 