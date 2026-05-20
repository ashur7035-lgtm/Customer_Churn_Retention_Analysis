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

Here are the critical business insights extracted from the dataset using SQL queries, along with the visual proof from the database execution:

### 1. Dataset Structure & Validation
* **Insight:** The dataset was successfully imported into MySQL, containing 10 key attributes covering customer demographics, account details, services, and churn status for initial data exploration.
* **SQL Proof:** ![Dataset Preview](../Screenshots/SQL%20Screenshots/Data%20Preview.png)

### 2. Overall Churn Status (Main KPI)
* **Insight:** This metric establishes the baseline churn rate for the business, highlighting the exact volume of lost customers versus retained ones to measure the financial impact.
* **SQL Proof:** ![Overall Churn Rate](../Screenshots/SQL%20Screenshots/Overall%20Churn%20Rate.png)

### 3. High Churn in Month-to-Month Contracts
* **Insight:** Customers on Month-to-Month contracts show a significantly higher churn rate compared to those on 1-year or 2-year plans. Transitioning these customers to longer-term contracts should be a priority retention strategy.
* **SQL Proof:** ![Contract Type Analysis](../Screenshots/SQL%20Screenshots/Contract%20Type%20Analysis.png)

### 4. The 1-Year Danger Zone (Tenure Analysis)
* **Insight:** New customers within their first year (0-12 months of tenure) are highly vulnerable and exhibit the highest churn rate. Loyalty increases drastically after 2+ years, indicating a need for a stronger early onboarding process.
* **SQL Proof:** ![Tenure Group Analysis](../Screenshots/SQL%20Screenshots/Tenure%20Group%20Analysis.png)

### 5. High-Risk Customer Segment Identification
* **Insight:** By combining multiple risk factors, this targeted list isolates the most critical segment: customers on Month-to-Month contracts with low tenure (< 12 months) who are paying high monthly charges (> $80) and have already churned. This helps identify the exact persona of customers we are losing.
* **SQL Proof:** ![High Risk Segment](../Screenshots/SQL%20Screenshots/High%20Risk%20Customer%20Segment.png)

---
🧠 Skills Demonstrated

- Aggregations & segmentation
- Conditional logic (CASE WHEN)
- Business KPI calculation (Churn %)
- SQL for BI reporting

🔗 Power BI Integration

SQL results are later connected to Power BI to build interactive churn dashboards.

