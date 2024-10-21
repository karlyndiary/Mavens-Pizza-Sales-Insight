-- Which month experienced the highest number of orders?

SELECT count(order_id) as orders, DATENAME(month, o.date) as month
FROM pizza.dbo.orders o
GROUP BY DATENAME(month, o.date) 
ORDER BY orders DESC;

July had the highest number of orders of 1935.
