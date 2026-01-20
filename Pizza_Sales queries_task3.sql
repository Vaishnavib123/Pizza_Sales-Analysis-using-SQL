
create database Pizza_Sales;

select * from pizza_sales;

--Total Revenue
select sum(total_price) as Total_Revenue from pizza_sales;

--Average order value

select (sum(total_price)/count(Distinct order_id)) as avg_order_value from pizza_sales;

--Total pizzas sold
select sum(quantity) as Total_Pizza_sold from pizza_sales;

--Total orders
select count(Distinct order_id) as Total_orders from pizza_sales;

--Highest price pizza
select top 5 pizza_name,total_price from pizza_sales 
order by total_price desc;

--Unique pizza categories
SELECT DISTINCT pizza_category FROM pizza_sales;

--Filtering all the records where pizza_category is classic
SELECT *
FROM pizza_sales
WHERE pizza_category = 'Classic';

--The top 10 highest-value sales
SELECT TOP 10 *
FROM pizza_sales
ORDER BY total_price DESC;

--Total sales by category
SELECT pizza_category,
SUM(total_price) AS total_sales
FROM pizza_sales
GROUP BY pizza_category;

--Average price per category
SELECT pizza_category,
AVG(unit_price) AS avg_price
FROM pizza_sales
GROUP BY pizza_category;

--Total Quantity sold per category
SELECT pizza_category,
SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_category;

--Pizza categories that generates more than 1 lakh in sales
SELECT pizza_category,
SUM(total_price) AS total_sales
FROM pizza_sales
GROUP BY pizza_category
HAVING SUM(total_price) > 100000;

--All orders placed in January 2015.
SELECT *
FROM pizza_sales
WHERE order_date BETWEEN '2015-01-01' AND '2015-01-31';

--Pizzas that have Cheese in their names
SELECT *
FROM pizza_sales
WHERE pizza_name LIKE '%Cheese%';









