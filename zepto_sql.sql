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

--checking values
select * from zepto
limit 10;

--counting Total Rows
select count(*) from zepto as Total_rows;


--Checking Null values
SELECT *
FROM zepto
WHERE category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;

--Different Product Categories
select DISTINCT category from zepto
group by category;

--product in-stock vs product putofStock
select outOfStock, count(sku_id) as Total
from zepto
group by outOfStock;

--product names presented multiple times
select name, count(sku_id) as "Total SkU's"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;


--Data Cleaning

--product price is zero
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;


--deleting Zero MRP Product
delete from zepto
where mrp = 0;

--convert paise to Rupees
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

--checking converted price
select mrp, discountedSellingPrice from zepto
limit 10;

--Business Insight Queries

---- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountPercent
from zepto
order by discountPercent desc
limit 10;


--Q2.What are the Products with High MRP but Out of Stock

select distinct name, mrp
from zepto
where outOfStock is true and mrp >300
order by mrp desc;

--Q3.Calculate Estimated Revenue for each category
select category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
from zepto
group by category
order by total_revenue desc;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name, mrp,discountPercent from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category, 
ROUND(AVG(discountPercent),2) as HigestDiscount from zepto
group by category
order by HigestDiscount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;