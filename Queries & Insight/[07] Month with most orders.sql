-- Which month experienced the highest number of orders?

SELECT DATENAME(month, o.date) as month, count(o.order_id) as orders
FROM pizza.dbo.orders o
JOIN pizza.dbo.order_details od 
ON o.order_id = od.order_id
GROUP BY DATENAME(month, o.date) 
ORDER BY orders DESC;

July had the highest number of orders of 4301.
