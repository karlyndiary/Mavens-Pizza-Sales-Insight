-- Do we have any bestsellers?

SELECT pt.name AS pizza_name, ROUND(SUM(p.price * od.quantity),2) AS revenue
FROM pizza.dbo.order_details od 
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza.dbo.pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC; 

Based on sales, the three most popular pizzas are The Thai Chicken Pizza, The Barbecue Chicken Pizza, and The California Chicken Pizza.
