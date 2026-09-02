--  срез region
USE ecommerce_sales;

SELECT
region,
SUM(total_amount) AS gmv,
COUNT(DISTINCT order_key) AS orders,
SUM(total_amount) / COUNT(DISTINCT order_key) AS aov
FROM clean_orders
GROUP BY region
ORDER BY gmv DESC
LIMIT 10;
