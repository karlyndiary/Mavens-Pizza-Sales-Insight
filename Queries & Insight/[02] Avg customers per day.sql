-- What is the average number of customers per day?

SELECT count(distinct order_id)/count(date) as average_customers_per_day
FROM pizza.dbo.orders;

The average daily customer traffic is 59.
