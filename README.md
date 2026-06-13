# 📊 Customer Churn & Retention Analysis  

End-to-end telecom churn analysis to identify high-risk customer segments and improve retention using **Excel, SQL, Python (ML), and Power BI**.

---

## 🎯 Objective  
Identify churn drivers, quantify risk segments, and recommend actionable, data-driven retention strategies for telecom businesses.

---

## 📂 Dataset  
The dataset represents telecom customer behavior including demographics, contract details, service usage, billing information, and churn status.

Columns:  
CustomerID, Age, Gender, Tenure, MonthlyCharges, ContractType, InternetService, TotalCharges, TechSupport, Churn.

---

## 🔄 Workflow

Raw Dataset
    →
Excel Data Analysis & Dashboard
    →
SQL Business Analysis
    →
Python Data Cleaning & EDA
    →
Churn Prediction Modeling
    →
Power BI Dashboard
    →
Business Insights & Recommendations

---

## 🛠 Tools  
- Excel – Cleaning, pivots, KPIs  
- MySQL – Business queries  
- Python – EDA & modeling  
- Power BI – Interactive dashboard  

---

## 📁 Project Structure

```text
Customer_Churn_Retention_Analysis/
│
├── Dataset/
│   ├── churn.csv
│   ├── Data_Dictionary.md
│   └── Business_Questions.md
│
├── Excel_Analysis/
│   ├── Churn_Raw.xlsx
│   └── Churn_Analysis_Dashboard.xlsx
│
├── SQL_Queries/
│   ├── basic_queries.sql
│   └── churn_analysis.sql
│
├── Python_Analysis/
│   ├── churn_analysis.ipynb
│   └── churned_cleaned.csv
│
├── PowerBI_Dashboard/
│   └── churn_dashboard.pbix
│
├── Screenshots/
│   ├── Excel_Dashboard.png
│   └── PowerBI_Dashboard.png
│
└── README.md
```
---

## 📈 Key Insights  
- **Month-to-Month Churn:** Month-to-month customers are the primary churn driver, contributing to 57.9% of total churn.  
- **Early Customer Attrition:** 55% of churn occurs within the first 12 months, highlighting that retaining new customers is a major challenge.  
- **Tech Support Impact:** Customers without tech support have a churn rate of 44.1%, identifying them as a high-risk segment.
- **High-Charge Sensitivity:** Customers with higher monthly charges show a higher probability of churn.  

---

---

## 📊 Dashboard Overview

To transform raw data into actionable intelligence, I developed an interactive Power BI dashboard to monitor key churn KPIs and segment high-risk customers.

![Power BI Dashboard](Screenshots/PowerBI_Screenshots/Full_Dashbaord_Overview.png)

> **Key Capabilities:** The dashboard enables stakeholders to filter churn data by contract type, tenure, and demographics, providing a clear path to data-driven retention strategies.

---

## 💡 Strategic Recommendations
- **Contract Migration:** Launch a "Switch to Annual" campaign offering a 20% discount to move month-to-month customers to annual plans.
- **Onboarding Strategy:** Implement proactive check-ins at Month 1, Month 3, and Month 6 to reduce first-year attrition.
- **Value Addition:** Make tech support a default bundle for all new plans to help lower early churn.

---

## ✅ Project Outcomes

- Identified key customer segments with high churn risk.  
- Found that **month-to-month contract customers churn the most (57.9% of total churn)**.  
- Observed that customers without **TechSupport** are more likely to leave (44.1% churn rate).  
- Discovered that **high MonthlyCharges with low Tenure lead** to higher churn.  
- Built an interactive Power BI dashboard to monitor churn KPIs.  
- Provided data-driven retention strategies for business teams to potentially reduce churn by 20–25%.  

---

## 👨‍💻 Author  
**Ashu**  
Aspiring Data Analyst | Excel • SQL • Python • Power BI  
