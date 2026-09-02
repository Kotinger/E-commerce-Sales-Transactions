-- шаг 7 |маршрут A
USE ecommerce_sales;

SELECT
SUM(total_amount) AS gmv,
COUNT(DISTINCT order_key) AS orders,
COUNT(*) AS 'lines',
SUM(total_amount) / COUNT(DISTINCT order_key) AS aov
FROM clean_orders;
