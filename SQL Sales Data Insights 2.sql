-- 11. Get all orders where more than 100 units were ordered.
SELECT order_number, quantity_ordered
FROM cleaned_sales_data 
WHERE quantity_ordered>10; 

-- 12. Find the number of orders placed by customer "land of Toys Inc" in March 2003.
SELECT DISTINCT customer_name FROM cleaned_sales_data;

SELECT customer_name, SUM(quantity_ordered) AS total_orders
FROM cleaned_sales_data 
WHERE customer_name='Land of Toys Inc.'
GROUP BY customer_name; 

-- 13. Retrieve the order_number, customer_name, and postal_code for all orders from postal code "51100".
SELECT order_number, customer_name, postal_code
FROM cleaned_sales_data 
WHERE postal_code='51100'; 

-- 14. Find all orders with a deal size classified as "Large."
SELECT order_number, deal_size, quantity_ordered, sales
FROM cleaned_sales_data
WHERE deal_size='Large'
ORDER BY sales DESC; 

-- 15. Retrieve the total number of orders placed in each quarter of 2003.
SELECT Quarter, strftime('%Y', order_date) AS Year, COUNT(order_number) AS total_order
FROM cleaned_sales_data 
WHERE year=2003
GROUP BY Quarter, Year
ORDER BY total_order DESC; 

-- 16. Get the contact_first_name, contact_last_name, and phone for all customers who placed an order in 2004.
SELECT contact_first_name, contact_last_name, phone, year
FROM cleaned_sales_data 
WHERE year=2004; 

-- 17. Show the total sales for each product_line.
SELECT product_line, ROUND(SUM(sales),2) AS total_sales
FROM cleaned_sales_data 
GROUP BY product_line
ORDER BY total_sales DESC;

-- 18. Find the order with the highest sales in the territory "EMEA."
SELECT * FROM cleaned_sales_data 
WHERE territory='EMEA'
ORDER BY sales DESC
LIMIT 1; 

-- 19. Retrieve the total sales made in the city "New York."
SELECT city,  ROUND(SUM(SALES),2) as total_sales
FROM cleaned_sales_data 
WHERE city='NYC'
GROUP BY city; 

-- 20. Find all orders placed by customers living in "Paris" with a deal size of "Medium."
SELECT order_number, city,  deal_size
FROM cleaned_sales_data 
WHERE city='Paris' AND deal_size='Medium';