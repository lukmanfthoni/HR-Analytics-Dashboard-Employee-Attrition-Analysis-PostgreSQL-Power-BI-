-- Create View
CREATE OR REPLACE VIEW vw_hr_clean AS
SELECT
  Age::INT                       AS age,
  Attrition                      AS attrition,
  Department                     AS department,
  JobRole                        AS job_role,
  JobLevel::INT                  AS job_level,
  Gender                         AS gender,
  EducationField                 AS education,
  MonthlyIncome::INT             AS monthly_income,
  YearsAtCompany::INT            AS years_at_company,
  TotalWorkingYears::INT         AS total_working_years
FROM hr_employee;

-- Total Emp
SELECT COUNT(*) AS total_employees
FROM vw_hr_clean;

-- Attrition Count
SELECT COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes';

-- Attrition Rate
SELECT
  ROUND(
    COUNT(*) FILTER (WHERE attrition = 'Yes') * 100.0 / COUNT(*),
    2
  ) AS attrition_rate
FROM vw_hr_clean;

--Avg Age
SELECT ROUND(AVG(age), 2) AS avg_age
FROM vw_hr_clean;

--Avg Salary
SELECT ROUND(AVG(monthly_income), 2) AS avg_salary
FROM vw_hr_clean;

-- Avg Years at Company
SELECT ROUND(AVG(years_at_company), 2) AS avg_years_company
FROM vw_hr_clean;


--Attrition by Years at Company
SELECT
  years_at_company,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY years_at_company
ORDER BY years_at_company;

-- Attrition by Department
SELECT
  department,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY attrition DESC;

--Attrition by Job Level
SELECT
  job_level,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY job_level
ORDER BY job_level;

--Attrition by Education
SELECT
  education,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY education
ORDER BY attrition DESC;

--Attrition by Age
SELECT
  age,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY age
ORDER BY age;

-- Salary Slab
CREATE OR REPLACE VIEW vw_attrition_salary_slab AS
SELECT
  CASE
    WHEN monthly_income <= 5000 THEN 'Upto 5K'
    WHEN monthly_income <= 10000 THEN '5K - 10K'
    WHEN monthly_income <= 15000 THEN '10K - 15K'
    ELSE 'Above 15K'
  END AS salary_slab,
  COUNT(*) AS attrition
FROM vw_hr_clean
WHERE attrition = 'Yes'
GROUP BY salary_slab
ORDER BY attrition DESC;

-- Job Role 
SELECT
  job_role,
  job_level,
  COUNT(*) AS total_employee
FROM vw_hr_clean
GROUP BY job_role, job_level
ORDER BY job_role, job_level;
