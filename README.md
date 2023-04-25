# Pizza SQL Analysis

![pizza cover](https://user-images.githubusercontent.com/116041695/234172419-28b8f5ed-425d-477f-9586-44c2a86d456e.jpg)

The dataset is found on [Maven Analytics](https://www.mavenanalytics.io/data-playground) under the name Pizza Place Sales with a total of 4 tables with 48,620 records and 12 fields in total.

## Table Summary

- Order Details

  The table has the order_details_id which is the primary key of the table along with the order_id, pizza_id as the foreign key of the orders and pizzas table and last, we have the quantity column of each type of pizza.

- Orders

  This table include the order_id which is the primary key, it also has the date and time of each order.

- Pizza Types

  We have the pizza_type_id as the primary key, along with the name, category and ingredients of each pizza.

- Pizzas

  The Pizzas table has the pizza_id as primary key, pizza_type_id as the foreign key from the pizza types table, it also include the size and price of the pizzas.

## Queries & Insights

### 1. How many customers do we have each day?
```
select count(order_id)/count(distinct date) as average_customers_per_day 
from pizza.dbo.orders
```
### 2. How many pizzas are typically in an order?
```
select count(order_details_id)/count(distinct order_id) as avg_no_of_pizzas_per_order
from pizza.dbo.order_details
```
### 3. Are there any peak hours?
```
SELECT count(order_id) as orders, DATEPART(HOUR, time) AS Hours
FROM pizza.dbo.orders
GROUP BY DATEPART(HOUR, time) 
ORDER BY orders DESC;
```
