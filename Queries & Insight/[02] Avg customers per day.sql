-- What is the average number of customers per day?

SELECT count(order_id)/count(distinct date) as average_customers_per_day
FROM pizza.dbo.orders;
