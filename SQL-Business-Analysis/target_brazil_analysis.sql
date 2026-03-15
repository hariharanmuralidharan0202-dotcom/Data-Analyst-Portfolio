
# to know the total order

select count(*) as Total_orders
from `Brazil_E_Commerce_Dataset.olist_orders_dataset`;

# To knwo the orders by Year

Select extract(year from order_purchase_timestamp) As year , count(*) as total_orders
from `Brazil_E_Commerce_Dataset.olist_orders_dataset`
Group by year
order by year;

# to know the Top 10 selling Product Categories:

Select p.product_category_name, Count(*) As total_sales
from `Brazil_E_Commerce_Dataset.olist_order_items_dataset` as oi
join `Brazil_E_Commerce_Dataset.olist_products_dataset` as p
on oi.product_id = p.product_id
group by p.product_category_name
order by total_sales Desc
Limit 10;

# to Know the Total revenue

Select Sum(payment_value) As total_revenue
From `Brazil_E_Commerce_Dataset.olist_order_payments_dataset`;

# to know the Average Delivery time 

Select Round(AVG(timestamp_diff(order_delivered_customer_date,order_purchase_timestamp,day))) as Average_delivery_days
from `Brazil_E_Commerce_Dataset.olist_orders_dataset`;

# to know top cities by order

Select customer_city, count(*) as total_order
from `Brazil_E_Commerce_Dataset.olist_customers_dataset` as C
Join `Brazil_E_Commerce_Dataset.olist_orders_dataset` as O
on C.customer_id = O.customer_id
group by customer_city
order by total_order DESC
limit 10;

# to know the payment method Analysis

Select payment_type,count(*)As total_transaction
from `Brazil_E_Commerce_Dataset.olist_order_payments_dataset`
group by payment_type;

#to know the top 10 Seller perfomance

Select seller_id, count(order_id) as total_order
from `Brazil_E_Commerce_Dataset.olist_order_items_dataset`
group by seller_id
order by total_order
limit 10;



