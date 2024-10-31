-- 1. Retrieve the order_number, customer_name, and sales for all orders in the table.
SELECT order_number, customer_name, sales
FROM cleaned_sales_data;

-- 2. Fetch the details (order_number, product_code, sales, order_date) of orders where the product_line is "Motorcycles."
SELECT order_number, product_code, sales, order_date
FROM  cleaned_sales_data 
WHERE product_line='Motorcycles';

-- 3. Calculate the total sales for the year 2003.
SELECT DISTINCT year
from cleaned_sales_data;

SELECT round(sum(sales), 2) as total_sales
FROM cleaned_sales_data
WHERE year=2003; 

-- 4. Find all orders placed in the first quarter of 2004.
SELECT * FROM cleaned_sales_data
WHERE year=2003 and quarter=1; 

-- 5. Retrieve the customer_name, phone, and city for customers who live in "Cambridge."
SELECT customer_name, phone, city
FROM cleaned_sales_data 
WHERE city='Cambridge';

-- 6. Get all orders with a status of "Shipped."
SELECT * FROM cleaned_sales_data 
WHERE status='Shipped'; 

-- 7. Find the average sales amount for each deal_size.
SELECT deal_size, round(avg(sales),2) as average_sales_amount
FROM cleaned_sales_data
GROUP by deal_size;

-- 8. Find the product_code, price_each, and product_line for the most expensive product sold.
SELECT product_code, MAX(price_each), product_line
FROM cleaned_sales_data; 

-- 9. Count the total number of orders for each country.
SELECT country, count(*) as total_orders
FROM cleaned_sales_data 
GROUP BY  country
ORDER BY total_orders DESC;

-- 10. Show total sales for each territory for the year 2003.
SELECT territory, round(sum(sales),2) as total_sales
FROM cleaned_sales_data
WHERE year=2003 
GROUP BY territory
ORDER BY total_sales DESC; 



