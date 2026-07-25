select*from new_customer_shopping_behavior;

SELECT COUNT(*) AS total_customers
FROM new_customer_shopping_behavior;

SELECT avg(purchase_amount) AS average_purchase
FROM new_customer_shopping_behavior;

SELECT category,
       SUM(purchase_amount) AS total_sales
FROM new_customer_shopping_behavior
GROUP BY category
ORDER BY total_sales DESC;

SELECT customer_id,
       SUM(purchase_amount) AS total_spent
FROM new_customer_shopping_behavior
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

SELECT category,
       ROUND(AVG(review_rating),2) AS avg_rating
FROM new_customer_shopping_behavior
GROUP BY category;

SELECT *
FROM new_customer_shopping_behavior
WHERE subscription_status = 'Yes';

SELECT payment_method,
       COUNT(*) AS total
FROM new_customer_shopping_behavior
GROUP BY payment_method
ORDER BY total DESC;

SELECT gender,
       SUM(purchase_amount) AS total_purchase
FROM new_customer_shopping_behavior
GROUP BY gender;

SELECT location,
       SUM(purchase_amount) AS total_sales
FROM new_customer_shopping_behavior
GROUP BY location
ORDER BY total_sales DESC
LIMIT 5;

