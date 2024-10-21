-- What is the average price per pizza?

SELECT ROUND(AVG(price),2) AS average_price_per_pizza
FROM pizza.dbo.pizzas;

The average price per pizza is $16.44.
