# 🛒 Zepto SQL Practice

This is a beginner-friendly SQL practice project using a Zepto
e-commerce inventory dataset.

I'm using this project to practice SQL concepts and learn how SQL can be
used to explore, clean, and analyze real-world data.

## 🎯 What I'm Learning

Through this project, I'm practicing:

-   Creating databases and tables
-   Importing CSV data into PostgreSQL
-   Understanding data types
-   Exploring datasets using SQL
-   Filtering data using `WHERE`
-   Sorting data using `ORDER BY`
-   Finding duplicate records
-   Handling `NULL` values
-   Using aggregate functions like `COUNT()`, `SUM()`, `AVG()`, `MIN()`,
    and `MAX()`
-   Using `GROUP BY` and `HAVING`
-   Writing subqueries
-   Using `CASE WHEN`
-   Working with SQL functions
-   Finding useful insights from data

## 📊 Dataset

The dataset contains Zepto product and inventory information.

Some of the columns include:

-   `sku_id` --- Product/SKU identifier
-   `category` --- Product category
-   `name` --- Product name
-   `mrp` --- Maximum Retail Price
-   `discountPercent` --- Discount percentage
-   `discountedSellingPrice` --- Selling price after discount
-   `availableQuantity` --- Available inventory quantity
-   `weightInGms` --- Product weight in grams
-   `outOfStock` --- Stock availability status
-   `quantity` --- Product quantity/package information

## 🗄️ Database

I'm using **PostgreSQL** for this project.

### Table Structure

``` sql
CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);
```

## 🔍 Practice Areas

### 1. 🔎 Data Exploration

I'll use SQL queries to understand the dataset:

-   Find the total number of products
-   Find different product categories
-   Find products available in stock
-   Find products that are out of stock
-   Find duplicate product names
-   Find minimum and maximum prices
-   Calculate average discounts

### 2. 🧹 Data Cleaning

I'll practice:

-   Finding `NULL` values
-   Finding invalid prices
-   Finding duplicate records
-   Checking incorrect or unusual values
-   Converting prices from paise to rupees when required

### 3. 📊 SQL Analysis

I'll practice answering questions such as:

-   Which products have the highest discounts?
-   Which categories have the most products?
-   Which products have the highest MRP?
-   Which products are out of stock?
-   What is the average discount by category?
-   Which products have the lowest price per gram?
-   Which categories contain the most inventory?

## 📁 Project Structure

``` text
zepto-sql-practice/
│
├── data/
│   └── zepto_v2.csv
│
├── sql/
│   └── zepto_analysis.sql
│
└── README.md
```

## 🛠️ Tools I'm Using

-   🐘 PostgreSQL
-   🖥️ pgAdmin
-   💻 SQL
-   📄 CSV
-   🌱 Git
-   🐙 GitHub

## 📚 Purpose

This is a **learning project**, not a finished professional portfolio
project.

I'm building it step by step to improve my SQL and data analysis skills
using a real-world style dataset.

More SQL practice projects will be added as I continue learning.

------------------------------------------------------------------------

⭐ **Learning SQL one query at a time.**
