SELECT o.order_id, o.date as order_date, o.time as order_time, DATENAME(month, o.date) as month, DATENAME(weekday, o.date) as weekday,
       CASE
            WHEN o.time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
            WHEN o.time BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
            WHEN o.time BETWEEN '18:00:00' AND '23:59:59' THEN 'Evening'
            ELSE 'Night'
       END AS time_of_day,
       od.order_details_id, od.quantity, 
       p.pizza_type_id, p.pizza_id, p.size, p.price, round(od.quantity * p.price,2) as sales,
       pt.pizza_type_id, pt.name as pizza_name, pt.category, pt.ingredients
FROM pizza.dbo.orders o
JOIN pizza.dbo.order_details od 
ON o.order_id = od.order_id
JOIN pizza.dbo.pizzas p 
ON od.pizza_id = p.pizza_id
JOIN pizza.dbo.pizza_types pt 
ON p.pizza_type_id = pt.pizza_type_id
