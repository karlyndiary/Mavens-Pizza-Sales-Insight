-- How many pizzas are we making during peak hour?

SELECT DATEPART(HOUR, time) AS hours, 
count(distinct(o.order_id)) as total_orders, 
count(quantity) as total_quantity 
FROM pizza.dbo.orders o 
JOIN pizza.dbo.order_details od 
ON o.order_id = od.order_id
GROUP BY DATEPART(HOUR, time) 
ORDER BY total_orders DESC;

At 12 p.m., the restaurant received 2520 orders, which consisted of 6543 pizzas in total.
