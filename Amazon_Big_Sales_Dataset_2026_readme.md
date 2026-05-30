# Amazon Tech Trends Sales Insights 2026

A SQL-based data analysis project for exploring Amazon product sales, pricing, ratings, and review patterns. The project uses a structured dataset and a set of analytical SQL queries to answer practical business questions about products and categories. [file:2][file:3]

## Project Description

This project focuses on practicing SQL with a real-world style sales dataset. It includes table creation, CSV import, and both basic and advanced queries to analyze product performance, category trends, and customer engagement through ratings and review counts. [file:2][file:3]

## Dataset Overview

The dataset contains the following columns:

- `ProductID`
- `ProductName`
- `Category`
- `PriceUSD`
- `Rating`
- `ReviewCount` [file:3]

The sample data includes products such as power banks, external SSDs, smart watches, graphics cards, mechanical keyboards, webcams, tablets, VR headsets, and more across multiple categories like `Audio`, `Accessories`, `Electronics`, and `Computers`. [file:3]

## SQL File Contents

The SQL script includes:

- Table cleanup and creation for `amazonsales`.
- Data loading from the CSV file using `COPY`.
- Basic SQL queries for counts, averages, and filters.
- Advanced queries for category-level insights and ranking.
- `CASE`-based price segmentation.
- Category-wise statistics. [file:2]

## Key Questions Answered

### Basic Queries

- How many products are in the dataset.
- Which categories are available.
- What the average price of products is.
- Which product has the highest rating.
- Which product is the cheapest.
- Which products are the most expensive.
- How many products belong to each category.
- Which products have ratings above 4.5.
- Which products have more than 5,000 reviews.
- What the total review count is across all products. [file:2]

### Advanced Queries

- Which category has the highest average price.
- Which category has the highest average rating.
- Which products have the most reviews.
- Which products are priced above the average price.
- Which products have both high ratings and high review counts.
- How total reviews differ by category.
- How average price and rating vary by category.
- How products can be grouped into low, medium, and high price levels.
- Which product is the second highest priced.
- What the category-wise minimum, maximum, and average statistics are. [file:2]

## Table Schema

```sql
CREATE TABLE amazonsales (
    ProductID VARCHAR(100) PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    PriceUSD DECIMAL(10,2),
    Rating DECIMAL(3,2),
    ReviewCount INT
);
```

[file:2]

## How To Use

1. Import the CSV dataset into your database environment.
2. Run the SQL script to create the `amazonsales` table.
3. Make sure the CSV path in the `COPY` command matches your local file path.
4. Execute the analysis queries one by one.
5. Review the output to explore pricing, ratings, and category performance. [file:2][file:3]

## Example Insights You Can Derive

- High-priced products may not always have the highest ratings.
- Some categories can have stronger average ratings than others.
- Review volume can be used as a signal for product popularity.
- Price buckets help separate budget, mid-range, and premium products. [file:2][file:3]


## File Structure

```text
Amazon-Tech-Trends-Sales-Insights-2026/
├── Amazon-Tech-Trends-Sales-Insights-2026.sql
├── Amazon_Big_Sales_Dataset_2026.csv
└── README.md
```


## Requirements

- PostgreSQL or a compatible SQL database.
- Access to the CSV file.
- A SQL client such as pgAdmin, DBeaver, or psql. [file:2]


## Notes

- The SQL script appears to use PostgreSQL-style `COPY` syntax. [file:2]
- Some queries in the source file may need formatting cleanup before execution. [file:2]
- Ensure the dataset file path is correct before importing the CSV. [file:3]


## Future Improvements

- Add charts or dashboards for category and price analysis.
- Include screenshots of query output.
- Add data cleaning steps for duplicate or missing values.
- Expand the dataset with more product attributes.
- Add a license and contribution section for GitHub publishing.

```

A good GitHub title for this project is **Amazon Tech Trends Sales Insights 2026**.


<div align="center">⁂</div>

[^1]: Amazon-Tech-Trends-Sales-Insights-2026.sql
[^2]: Amazon_Big_Sales_Dataset_2026.csv```

