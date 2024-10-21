-- Which month experienced the highest number of orders?

SELECT count(order_id) as orders, month
FROM pizza.dbo.orders
GROUP BY month 
ORDER BY orders DESC;

July had the highest number of orders of 1935.
