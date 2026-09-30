# 🛒 Zepto SQL Practice

This is a beginner-friendly SQL practice project using a Zepto
e-commerce inventory dataset.

I'm using this project to practice SQL concepts and learn how SQL can be
used to explore, clean, and analyze real-world data.

## 🎯 What I'm Learning

Through this project, I'm practicing:

-   Creating databases and tables
-   Importing CSV data into MySQL
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
-   `name` --- Product name
-   `category` --- Product category
-   `mrp` --- Maximum Retail Price
-   `discountPercent` --- Discount percentage
-   `discountedSellingPrice` --- Selling price after discount
-   `availableQuantity` --- Available inventory quantity
-   `weightInGms` --- Product weight in grams
-   `outOfStock` --- Stock availability status
-   `quantity` --- Product quantity/package information

## 🗄️ Database

I'm using **MySQL** for this project.

### Table Structure

``` sql
CREATE TABLE zepto (
    sku_id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp DECIMAL(8,2),
    discountPercent DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(8,2),
    weightInGms INT,
    outOfStock BOOLEAN,
    quantity INT
);
```

## 🔍 Practice Areas

### 1. Data Exploration

I'll use SQL queries to understand the dataset:

-   Total number of products
-   Different product categories
-   Products available in stock
-   Products that are out of stock
-   Duplicate product names
-   Minimum and maximum prices
-   Average discounts

### 2. Data Cleaning

I'll practice:

-   Finding `NULL` values
-   Finding invalid prices
-   Finding duplicate records
-   Checking incorrect or unusual values
-   Converting prices from paise to rupees when required

### 3. SQL Analysis

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

-   MySQL
-   MySQL Workbench
-   SQL
-   CSV
-   Git
-   GitHub

## 📚 Purpose

This is a **learning project**, not a finished professional portfolio
project.

I'm building it step by step to improve my SQL and data analysis skills
using a real-world style dataset.

More SQL practice projects will be added as I continue learning.
