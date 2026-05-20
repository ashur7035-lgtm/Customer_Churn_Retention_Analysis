📌 SQL Analysis – Customer Churn Project

This section covers the SQL-based analysis performed on the customer churn dataset using MySQL. SQL was used for data exploration, segmentation, and business-level churn insights before visualization in Power BI.

🗂 Folder Structure
```
SQL_Queries/
│
├── basic_queries.sql
├── churn_analysis.sql
```

🔹 basic_queries.sql

#### Contains initial exploration queries:
- Total customer count
- Churn distribution
- Gender segmentation
- Contract type distribution
- Used for data validation and high-level understanding.

🔹 churn_analysis.sql

#### Contains business-focused analysis:
- Churn rate by contract type
- Tech support impact on churn
- Tenure group analysis
- Age group segmentation
- Internet service vs churn
- Monthly charges vs churn
- Used to identify high-risk customer segments for retention strategy.

---

## 📊 Key Business Insights & SQL Proof

Here are the critical business findings extracted directly using the SQL queries:

### 1. High Churn in Month-to-Month Contracts
* **Insight:** Customers with month-to-month contracts show the highest churn rate. Long-term contracts (1-2 years) are much more stable.
* **SQL Proof:** *(Yahan par apna CONTRACT TYPE ANALYSIS wali query ke result ka screenshot lagayein)*

### 2. High-Risk Customer Segment (The Danger Zone)
* **Insight:** New customers (Tenure < 12 months) who have high monthly charges (> 80) and month-to-month contracts are at the highest risk of churning.
* **SQL Proof:** *(Yahan par apna HIGH RISK CUSTOMER SEGMENT wali query ke result ka screenshot lagayein)*

### 3. Impact of Technical Support
* **Insight:** Customers who do not have online technical support churn at a significantly higher rate, indicating a need for better customer onboarding.
* **SQL Proof:** *(Yahan par apna TECH SUPPORT ANALYSIS wali query ke result ka screenshot lagayein)*

---
🧠 Skills Demonstrated

- Aggregations & segmentation
- Conditional logic (CASE WHEN)
- Business KPI calculation (Churn %)
- SQL for BI reporting

🔗 Power BI Integration

SQL results are later connected to Power BI to build interactive churn dashboards.

