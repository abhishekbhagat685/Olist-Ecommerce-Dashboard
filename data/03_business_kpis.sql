SELECT customer_state, COUNT(*) AS total_customers
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY total_customers DESC
LIMIT 10;

-- Sellers by state
SELECT seller_state, COUNT(*) AS total_sellers
FROM olist_sellers_dataset
GROUP BY seller_state
ORDER BY total_sellers DESC
LIMIT 10;

-- Compare customer vs seller distribution by state
SELECT 
    c.customer_state AS state,
    COUNT(DISTINCT c.customer_id) AS customers,
    (SELECT COUNT(*) FROM olist_sellers_dataset s WHERE s.seller_state = c.customer_state) AS sellers
FROM olist_customers_dataset c
GROUP BY c.customer_state
ORDER BY customers DESC;