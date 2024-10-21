-- Which month had the highest revenue?

SELECT DATENAME(month, o.date) as month, ROUND(SUM(p.price),2) AS total_price
FROM pizza.dbo.order_details od
JOIN pizza.dbo.orders o ON od.order_id = o.order_id
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id
GROUP BY DATENAME(month, o.date)
ORDER BY total_price DESC;

July had the highest revenue of $71,027.45.
