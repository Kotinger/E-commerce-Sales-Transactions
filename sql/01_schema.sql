CREATE DATABASE IF NOT EXISTS ecommerce_sales
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE ecommerce_sales;

DROP TABLE IF EXISTS clean_orders;

CREATE TABLE clean_orders (
  order_id VARCHAR(50) NOT NULL,
  order_key VARCHAR(100) NOT NULL,
  customer_id VARCHAR(255) NULL,
  product_id VARCHAR(50) NULL,
  category VARCHAR(100) NULL,
  price DECIMAL(10, 2) NOT NULL,
  discount DECIMAL(5, 2) NULL,
  quantity INT NOT NULL,
  payment_method VARCHAR(50) NULL,
  order_date DATETIME NOT NULL,
  delivery_time_days INT NULL,
  region VARCHAR(50) NULL,
  returned VARCHAR(10) NULL,
  total_amount DECIMAL(12, 2) NOT NULL,
  shipping_cost DECIMAL(10, 2) NULL,
  profit_margin DECIMAL(10, 2) NULL,
  customer_age INT NULL,
  customer_gender VARCHAR(20) NULL
) ENGINE=InnoDB;
