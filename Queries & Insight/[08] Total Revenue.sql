-- What is the total revenue from 2015?

SELECT ROUND(SUM(p.price * od.quantity),2) AS Revenue
FROM  pizza.dbo.pizzas p
JOIN pizza.dbo.order_details od
ON p.pizza_id = od.pizza_id;

Total revenue for the year 2015 is $8,17,860.05.
