-- What is the average order value?

SELECT ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id),2) AS avg_order_value
FROM pizza.dbo.orders o
JOIN pizza.dbo.order_details od ON o.order_id = od.order_id
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id;

The average order value is $38.31.
