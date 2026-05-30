
DROP TABLE amazon_sales;
CREATE TABLE amazon_sales (
    Product_ID VARCHAR(100) PRIMARY KEY,
    Product_Name VARCHAR(255),
    Category VARCHAR(100),
    Price_USD DECIMAL(10,2),
    Rating DECIMAL(3,2),
    Review_Count INT
);

SELECT * FROM amazon_sales;

COPY amazon_sales(Product_ID, Product_Name, Category, Price_USD, Rating, Review_Count)
FROM 'E:/Saif Excel Practice/Data Analyst/Project SQL/Amazon_Big_Sales_Dataset_2026.csv'
DELIMITER ','
CSV HEADER;

---1. Count total number of products
SELECT COUNT(*) AS Total_Products from amazon_sales;

---2. Display all unique categories
SELECT DISTINCT Category FROM amazon_sales;

---3. Find the average product price
SELECT AVG(price_usd) AS average_price FROM amazon_sales;

---4. Find the highest product rating
SELECT rating FROM amazon_sales ORDER BY rating DESC LIMIT 1;
                   --OR--
SELECT MAX(rating) AS Highest_rating FROM amazon_sales;

---5. Find the cheapest product
SELECT * FROM amazon_sales ORDER BY Price_usd ASC LIMIT 1;

---6. Display top 5 expensive products
SELECT * FROM amazon_sales ORDER BY price_usd DESC LIMIT 5;
                  --OR--
SELECT price_usd FROM amazon_sales ORDER BY price_usd DESC LIMIT 5;	

---7. Count products in each category

SELECT category, COUNT(category) AS Total_products FROM amazon_sales
GROUP BY Category;

SELECT * FROM amazon_sales;

---8. Find products with rating greater than 4.5

SELECT product_name, rating FROM amazon_sales
WHERE rating > 4.5;

---9. Find products with more than 5000 reviews

SELECT product_name, review_count FROM amazon_sales
WHERE review_count >= 5000;

---10. Find total reviews across all products

SELECT SUM(review_count) AS Total_reviews FROM amazon_sales;

---10 Advanced SQL Questions

---1. Find category with highest average price
SELECT 
    category,
    AVG(price_usd) AS highest_average_price
FROM amazon_sales
GROUP BY category
ORDER BY highest_average_price DESC
LIMIT 1;

---2. Find category with highest average rating
SELECT 
    category,
    AVG(rating) AS average_rating
FROM amazon_sales
GROUP BY category
ORDER BY average_rating DESC
LIMIT 1;

---3. Find top 3 most reviewed products
SELECT product_name, review_count FROM amazon_sales
ORDER BY review_count DESC
LIMIT 3;

SELECT * FROM amazon_sales;
---4. Find products priced above average price
SELECT Product_Name, Price_USD
FROM amazon_sales
WHERE Price_USD >
      (SELECT AVG(Price_USD)
       FROM amazon_sales);
	   
---5. Find products with rating above 4.5 and reviews above 5000
SELECT product_name, rating, review_count FROM amazon_sales
WHERE rating > 4.5 AND review_count > 5000;

---6. Find total reviews by category
SELECT 
    category,
    SUM(review_count) AS total_reviews
FROM amazon_sales
GROUP BY category
ORDER BY total_reviews DESC;

---7. Find average rating and price for each category
SELECT 
    category,
    AVG(rating) AS average_rating,
    AVG(price_usd) AS average_price
FROM amazon_sales
GROUP BY category;

---8. Categorize products into price levels
SELECT Product_Name,
       Price_USD,
       CASE
           WHEN Price_USD < 300 THEN 'Low'
           WHEN Price_USD BETWEEN 300 AND 700 THEN 'Medium'
           ELSE 'High'
       END AS Price_Level
FROM amazon_sales;

---9. Find the second highest priced product
SELECT * FROM amazon_sales
ORDER BY price_usd DESC
LIMIT 1 OFFSET 1;

---10. Generate category-wise statistics
SELECT Category,
     MIN(price_usd) AS min_price,
	 MAX(price_usd) AS max_price,
	 AVG(price_usd) AS avg_price,
	 MIN(rating) AS min_rating,
	 MAX(rating) AS max_rating,
	 AVG(rating) AS avg_rating
FROM amazon_sales
GROUP BY Category;












