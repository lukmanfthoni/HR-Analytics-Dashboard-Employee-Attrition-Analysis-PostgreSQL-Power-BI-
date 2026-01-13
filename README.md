# HR-Analytics-Dashboard-Employee-Attrition-Analysis-PostgreSQL-Power-BI-
End-to-end HR analytics project using PostgreSQL for data cleaning and analysis, and Power BI for interactive dashboard visualization to analyze employee attrition patterns.

## 📊 Project Overview
This project analyzes employee attrition using HR data to uncover key workforce insights.
It demonstrates an end-to-end data analytics workflow, starting from raw CSV data ingestion into PostgreSQL, data cleaning and transformation using SQL, and interactive dashboard development using Power BI.

The final dashboard highlights attrition trends across departments, job roles, salary ranges, age groups, and experience levels.
<img width="892" height="491" alt="Screenshot 2026-01-13 123432" src="https://github.com/user-attachments/assets/d36e0fa0-8e41-4538-ad8c-3ae0e7e96795" />

---

## 🛠️ Tools & Technologies
- **PostgreSQL** – Data storage, data cleaning, and analytical queries
- **Power BI** – Interactive dashboard and data visualization
- **SQL** – Data transformation, aggregation, and KPI calculation

---

## 📂 Dataset
- **Source:** IBM HR Analytics Employee Attrition Dataset  
- **Platform:** Kaggle  
- **Link:** https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset  
- **Records:** 1,470 employees  

Key features used in this project include:
- Age
- Gender
- Department
- Job Role
- Job Level
- Monthly Income
- Years at Company
- Attrition Status

---

## 🔄 Data Processing (PostgreSQL)
The raw CSV data was imported into PostgreSQL and processed using SQL to:
- Convert data types for numerical analysis
- Standardize column naming conventions
- Create analytical views for efficient dashboard integration

All transformations and aggregations were handled at the database level to ensure optimal performance and clean data consumption in Power BI.

---

## 📈 Dashboard Features
- **Key KPIs**
  - Total Employees
  - Attrition Count
  - Attrition Rate (%)
  - Average Age
  - Average Salary
  - Average Years at Company

- **Attrition Analysis**
  - Attrition by Department
  - Attrition by Job Role and Job Level
  - Attrition by Salary Slab
  - Attrition by Education Field
  - Attrition by Age and Years at Company

- **Interactive Filters**
  - Gender
  - Department
  - Job Role
  - Age Range

---

## 📌 Key Insights
- Higher attrition observed among employees in lower salary ranges
- Most attrition occurs within the early years at the company
- Certain job roles and departments show consistently higher attrition rates
- Demographics: Age, Gender, Education
- Job Details: Department, Job Role, Job Level
- Compensation: Monthly Income, Salary Hike
- Tenure: Years at Company, Total Working Years
- Target Variable: Attrition (Yes/No)
---

## 📎 Project Structure
HR-Analytics-Dashboard/
│
├── data/
│ └── WA_Fn-UseC_-HR-Employee-Attrition.csv
├── sql/
│ ├── data_cleaning.sql
│ ├── analytics_queries.sql
│ └── create_views.sql
├── dashboard/
│ └── HR_Analytics_Dashboard.pbix
└── README.md

---

## 🎓 Learning Outcomes

- SQL view creation and data transformation
- PostgreSQL data type casting and aggregation
- Power BI dashboard design and interactivity
- HR analytics and business intelligence
- Data storytelling and visualization best practices

## 🔮 Future Enhancements

- [ ] Add predictive attrition model using Python/ML
- [ ] Include time-series analysis for attrition trends
- [ ] Add more demographic breakdowns (Marital Status, Distance from Home)
- [ ] Implement drill-through pages for detailed employee analysis
- [ ] Add performance vs. attrition correlation analysis
- [ ] Create automated data refresh pipeline

## 📧 Contact

**Your Name**  
- GitHub: [@lukmanfthoni](https://github.com/lukmanfthoni)
- LinkedIn: [Lukman Fathoni](https://linkedin.com/in/lukmanfthoni)
- Email: lukman.fathoni.lf@gmail.com


