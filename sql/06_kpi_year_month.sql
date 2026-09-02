--  год x месяц
USE ecommerce_sales;

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(total_amount) AS gmv,
COUNT(DISTINCT order_key) AS orders,
SUM(total_amount) / COUNT(DISTINCT order_key) AS aov
FROM clean_orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
