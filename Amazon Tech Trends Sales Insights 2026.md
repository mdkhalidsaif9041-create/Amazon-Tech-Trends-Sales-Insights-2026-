```
# Amazon Tech Trends Sales Insights 2026
```

```
## Project Overview
```

```
This project analyzes Amazon's technology product sales dataset using SQL.
The dataset contains information about various tech products, including
pricing, customer ratings, review counts, and product categories.
```

```
The objective is to perform exploratory data analysis (EDA) and business
intelligence reporting through SQL queries ranging from basic aggregations
to advanced analytical insights.
```

```
---
```

```
## Dataset Information
**File:** `Amazon_Big_Sales_Dataset_2026.csv`
```

```
### Columns
```

```
| Column | Description |
|----------|-------------|
| Product_ID | Unique identifier for each product |
| Product_Name | Name of the product |
| Category | Product category |
| Price_USD | Product price in USD |
| Rating | Customer rating (1–5 scale) |
| Review_Count | Total number of customer reviews |
### Dataset Size
- Total Records: **100**
- Total Columns: **6**
---
```

```
## Database Schema
```sql
CREATE TABLE amazon_sales (
    Product_ID VARCHAR(100) PRIMARY KEY,
    Product_Name VARCHAR(255),
    Category VARCHAR(100),
    Price_USD DECIMAL(10,2),
    Rating DECIMAL(3,2),
    Review_Count INT
);
```
---
## Data Import
```sql
COPY amazon_sales(
    Product_ID,
    Product_Name,
    Category,
    Price_USD,
    Rating,
    Review_Count
```

```
)
FROM 'Amazon_Big_Sales_Dataset_2026.csv'
DELIMITER ','
CSV HEADER;
```
```

```
---
```

```
## SQL Analysis Performed
```

```
### Basic SQL Queries
```

`1. Count total products` 

`2. Display unique categories` 

`3. Calculate average product price` 

`4. Find highest product rating` 

`5. Find cheapest product` 

`6. Display top 5 most expensive products` 

`7. Count products by category` 

`8. Find products with rating greater than 4.5` 

```
9. Find products with more than 5000 reviews
```

`10. Calculate total reviews across all products` 

```
---
```

```
### Advanced SQL Queries
```

```
#### 1. Category with Highest Average Price
```

```
Identifies the most premium product category based on average pricing.
#### 2. Category with Highest Average Rating
```

```
Determines which category receives the best customer feedback.
```

```
#### 3. Top 3 Most Reviewed Products
Finds products with the highest customer engagement.
```

```
#### 4. Products Priced Above Average
Uses a subquery to identify premium products.
#### 5. Highly Rated & Highly Reviewed Products
Filters products with:
```

```
- Rating > 4.5
- Reviews > 5000
```

```
#### 6. Total Reviews by Category
Measures customer engagement per category.
```

```
#### 7. Average Rating and Price by Category
Provides category-level performance metrics.
#### 8. Product Price Segmentation
Classifies products into:
```

```
| Price Range | Level |
|------------|--------|
| < $300 | Low |
| $300–$700 | Medium |
| > $700 | High |
```

```
#### 9. Second Highest Priced Product
```

```
Uses `LIMIT` and `OFFSET` for ranking analysis.
```

```
#### 10. Category-Wise Statistics
```

```
Generates:
```

```
- Minimum Price
- Maximum Price
- Average Price
- Minimum Rating
- Maximum Rating
- Average Rating
```

```
---
```

```
## Skills Demonstrated
```

```
- SQL Data Definition Language (DDL)
- Data Import Operations
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - MIN()
  - MAX()
- GROUP BY
- ORDER BY
- LIMIT & OFFSET
- CASE Statements
- Subqueries
- Business Intelligence Reporting
- Data Analysis
```

```
---
```

```
## Business Questions Answered
```

```
- Which category has the highest average price?
- Which category receives the best ratings?
```

```
- What are the most reviewed products?
- Which products are priced above market average?
```

```
- Which products have strong ratings and customer engagement?
```

```
- How do categories compare in pricing and customer satisfaction?
```

```
---
```

```
## Tools Used
```

```
- PostgreSQL
- SQL
- CSV Dataset
```

- `Data Analysis Techniques` 

```
---
```

```
## Project Structure
```

```
```
Amazon-Tech-Trends-Sales-Insights/
│
├── Amazon_Big_Sales_Dataset_2026.csv
├── Amazon-Tech-Trends-Sales-Insights-2026.sql
└── README.md
```
---
```

```
## Learning Outcomes
Through this project, you will gain hands-on experience with:
```

```
- SQL querying techniques
- Data exploration and reporting
- Aggregations and statistical analysis
- Business-driven data insights
- Real-world product sales analytics
---
```

```
## Author
**Data Analytics SQL Project**
Amazon Tech Trends Sales Insights 2026
```

This README is suitable for GitHub portfolio projects, SQL practice repositories, and data analyst project showcases. 

