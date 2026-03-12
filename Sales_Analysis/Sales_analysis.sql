
# To understand the Dataset
SELECT *
FROM `Superstores_sales.Superstores_sales`
LIMIT 10;

# To have a basic overview of the Dataset

--#--1 TO CHECK THE TOTAL NUMBER OF ROWS
    select COUNT(*) As number_of_rows
    from `Superstores_sales.Superstores_sales`;

--#--2 TO CHECK THE DATA RANGE
    SELECT MIN(`Order Date`) AS first_order_date,MAX(`Order Date`) AS last_order_date
    FROM `Superstores_sales.Superstores_sales`;


# to know the Total sales 

select sum(sales) As total_sales
from `Superstores_sales.Superstores_sales`


# to know the sales by city(to know sales by region use "Region" in place of "City")

SELECT City, Round(sum(sales),2) As total_sales
FROM `Superstores_sales.Superstores_sales`
group by City
order by total_sales DESC;

# to know the sales by Category

SELECT Category, Round(sum(sales),2) As total_sales
FROM `Superstores_sales.Superstores_sales`
group by Category
order by total_sales DESC;


# to know the profit by category

select Category, Round(sum(profit),2) as total_profit
from `Superstores_sales.Superstores_sales`
group by Category
order by total_profit

# to know the Monthly sales Trend

select EXTRACT(YEAR FROM `ORDER DATE`) AS YEAR, EXTRACT(MONTH FROM `ORDER DATE`) AS MONTH, Round(SUM(Sales),2) As Monthly_sales
from `Superstores_sales.Superstores_sales`
group by YEAR, MONTH 
order by YEAR, MONTH;


# to know the top 10 products by sales

select `Product Name`, Round(sum(sales),2) as total_sales
from `Superstores_sales.Superstores_sales`
group by `Product Name`
order by total_sales DESC
Limit 10;

# to know the Top 5 customer

select `Customer Name`, Round(sum(sales),2) as total_sales
from `Superstores_sales.Superstores_sales`
group by `Customer Name`
order by total_sales DESC
Limit 5;



