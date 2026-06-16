SELECT COUNT(*) FROM olist_customers_dataset WHERE customer_city IS NULL;
SELECT customer_id, COUNT(*) 
FROM olist_customers_dataset 
GROUP BY customer_id 
HAVING COUNT(*) > 1;
SELECT DISTINCT customer_state FROM olist_customers_dataset;