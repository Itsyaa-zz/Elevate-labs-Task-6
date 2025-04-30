# Elevate-labs-Task-6
# Task 6: Sales Trend Analysis Using SQL

This project is part of the Data Analyst Internship Program.

##Objective
Analyze monthly **revenue** and **order volume** from a sales dataset using SQL aggregate functions.

##Dataset
- Dataset Name: `sales_dataset`
- Columns used:
  - `Order_Date` – Date of the order
  - `Quantity` – Units sold
  - `Sales` – Revenue per unit
  - `Row_ID` – Unique ID per order row

## 🛠 Tools Used
- MySQL
- CSV file imported into MySQL Workbench

## SQL Query Used

```sql
SELECT
    YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS order_month,
    ROUND(SUM(Quantity * Sales), 2) AS monthly_revenue,
    COUNT(DISTINCT Row_ID) AS order_volume
FROM
    sales_dataset
WHERE
    Quantity > 0 AND Sales > 0
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;
