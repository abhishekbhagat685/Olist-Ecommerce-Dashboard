USE o_list_ecommerce;
SHOW TABLES;
SELECT COUNT(*) AS total_customers
FROM olist_customers_dataset;
SELECT COUNT(*) AS total_orders
FROM olist_orders_dataset;
SELECT COUNT(*) AS total_sellers
FROM olist_sellers_dataset;
SELECT COUNT(*) AS total_products
FROM olist_products_dataset;
SELECT SUM(payment_value) AS total_revenue FROM olist_order_payments_dataset;