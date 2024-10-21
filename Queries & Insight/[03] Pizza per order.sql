-- How many pizzas are typically in an order?

SELECT COUNT(order_details_id)/COUNT(distinct order_id) as avg_no_of_pizzas_per_order
FROM pizza.dbo.order_details;

On average, customers order 2 pizzas per order.
