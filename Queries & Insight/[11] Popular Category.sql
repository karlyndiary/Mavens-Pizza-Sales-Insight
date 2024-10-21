-- How many categories are available?

SELECT pt.category, SUM(od.quantity) AS quantity
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;

There are 4 categories: Classic, Supreme, Veggie and Chicken.
