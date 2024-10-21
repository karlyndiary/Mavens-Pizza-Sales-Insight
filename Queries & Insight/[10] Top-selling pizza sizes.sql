-- What are top-selling pizza sizes?

SELECT p.size as size, SUM(od.quantity) AS quantity
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
GROUP BY size
ORDER BY quantity DESC;

The large-size pizza received the most orders, totalling 18,956.
