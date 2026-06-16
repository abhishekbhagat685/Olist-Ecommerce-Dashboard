SELECT product_category_name_english 
FROM product_category_name_translation
ORDER BY product_category_name_english;

-- Count total categories
SELECT COUNT(*) AS total_categories FROM product_category_name_translation;