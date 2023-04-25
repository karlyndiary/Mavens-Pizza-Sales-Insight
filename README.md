# Pizza SQL Analysis

### 1. How many customers do we have each day?
```
select count(order_id)/count(distinct date) as average_customers_per_day from pizza.dbo.orders
```
