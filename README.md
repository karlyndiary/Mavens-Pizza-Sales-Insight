# Pizza SQL Analysis

The dataset is found on [Maven Analytics](https://www.mavenanalytics.io/data-playground)

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
