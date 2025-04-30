use online_retail;
select * from sales_dataset;

SELECT
    YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS order_month,
    ROUND(SUM(Quantity * Sales), 2) AS monthly_revenue,
    COUNT(DISTINCT ï»¿Row_ID) AS order_volume
FROM
    sales_dataset
WHERE
    Quantity > 0 AND Sales > 0
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;



