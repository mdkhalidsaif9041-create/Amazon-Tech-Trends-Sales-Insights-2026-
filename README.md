
# Amazon Sales SQL Project

## ## Project Overview
This project demonstrates basic and advanced SQL queries using an Amazon
Sales dataset. The objective is to practice SQL concepts such as:

- Data Definition Language (DDL)
## - Data Import
## - Data Retrieval
## - Aggregate Functions
## - Filtering
## - Sorting
## - Grouping
## - Subqueries
- CASE Statements
## - Business Insights Generation

## ---

## ## Dataset Information

**Table Name:** amazon_sales

## ### Columns

## | Column Name | Data Type | Description |
## |------------|------------|-------------|
| Product_ID | VARCHAR(100) | Unique Product Identifier |
| Product_Name | VARCHAR(255) | Product Name |
| Category | VARCHAR(100) | Product Category |
| Price_USD | DECIMAL(10,2) | Product Price in USD |
| Rating | DECIMAL(3,2) | Customer Rating |
| Review_Count | INT | Number of Reviews |

## ---

## ## Table Creation

## ```sql
CREATE TABLE amazon_sales (
Product_ID VARCHAR(100) PRIMARY KEY,
Product_Name VARCHAR(255),
Category VARCHAR(100),
Price_USD DECIMAL(10,2),
Rating DECIMAL(3,2),
Review_Count INT
## );

## Data Import
COPY amazon_sales(
Product_ID,
Product_Name,
## Category,
Price_USD,
## Rating,
Review_Count
## )
FROM 'Amazon_Big_Sales_Dataset_2026.csv'

## DELIMITER ','
## CSV HEADER;

Basic SQL Queries
## 1. Count Total Products
Returns the total number of products available.
## 2. Display Unique Categories
Shows all distinct product categories.
## 3. Find Average Product Price
Calculates the average price of all products.
## 4. Find Highest Product Rating
Returns the maximum product rating.
## 5. Find Cheapest Product
Displays the least expensive product.
## 6. Display Top 5 Expensive Products
Lists the five most expensive products.
- Count Products in Each Category
Shows product count grouped by category.
- Products with Rating Greater Than 4.5
Filters highly-rated products.
- Products with More Than 5000 Reviews
Finds popular products based on review count.
## 10. Total Reviews Across All Products
Calculates the total number of reviews.


Advanced SQL Queries
- Category with Highest Average Price
Identifies the category having the highest average product price.
- Category with Highest Average Rating
Finds the category with the best average customer rating.
## 3. Top 3 Most Reviewed Products
Displays products receiving the highest number of reviews.
## 4. Products Priced Above Average
Uses a subquery to find products priced above the overall average.
- High-Rated and Highly Reviewed Products
Returns products having:
## • Rating > 4.5
## • Reviews > 5000
- Total Reviews by Category
Aggregates review counts for each category.
- Average Rating and Price by Category
## Calculates:
## • Average Rating
## • Average Price
for each category.
## 8. Product Price Classification
Uses a CASE statement to classify products:
## Price Range Category
## Below 300 Low
## 300 - 700 Medium
## Above 700 High

## 9. Second Highest Priced Product
Retrieves the second most expensive product.
## 10. Category-wise Statistics
## Generates:
## • Minimum Price
## • Maximum Price
## • Average Price
## • Minimum Rating
## • Maximum Rating
## • Average Rating
for each category.

SQL Concepts Covered
## • SELECT
## • WHERE
## • ORDER BY
## • GROUP BY
## • DISTINCT
## • LIMIT
## • Aggregate Functions
o COUNT()
o SUM()
o AVG()
o MIN()
o MAX()
- CASE Statements
## • Subqueries
- Data Import using COPY

## Learning Outcomes
By completing this project, you will learn:
- Creating tables in PostgreSQL
- Importing CSV files
- Writing analytical SQL queries
- Generating business insights from sales data
- Using aggregate functions effectively
- Applying filtering and grouping techniques

- Working with subqueries and CASE expressions

## Author
## Md Khalid Saifullah
SQL Practice Project – Amazon Sales Dataset
