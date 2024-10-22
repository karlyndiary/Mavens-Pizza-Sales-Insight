-- What is the average number of customers per day?

SELECT 
    AVG(daily_customer_count) AS avg_customers_per_day
FROM (
    SELECT 
      date,
        COUNT(DISTINCT order_id) AS daily_customer_count
    FROM pizza.dbo.orders
    GROUP BY date
) AS daily_customers;

The average daily customer traffic is 59.
