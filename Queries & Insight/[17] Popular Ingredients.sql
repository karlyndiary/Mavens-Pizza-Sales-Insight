-- Which ingredients are the most popularly ordered?

SELECT DISTINCT(TRIM(value)) AS ingredient, COUNT(TRIM(value)) AS count
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
CROSS APPLY STRING_SPLIT(pt.ingredients, ',') AS ingredients_split
GROUP BY TRIM(value)
ORDER BY count DESC;

Garlic, Tomatoes, Red Onions, Red Peppers, and Mozzarella Cheese are the most popularly ordered ingredients.
