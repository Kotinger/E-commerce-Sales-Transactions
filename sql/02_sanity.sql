-- шаг 5 | путь P | sanity = report.py
USE ecommerce_sales;

SELECT COUNT(*) AS rows_n FROM clean_orders;

SELECT
COUNT(DISTINCT order_key) AS orders_n,
SUM(total_amount) AS gmv,
MIN(order_date) AS date_min,
MAX(order_date) AS date_max
FROM clean_orders;
