## Queries and Insights

### 0. Main Query
```
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
```

### 1. What is the average number of customers per day?
```
SELECT count(order_id)/count(distinct date) as average_customers_per_day
FROM pizza.dbo.orders;
```
The average daily customer traffic is 59.

### 2. How many pizzas are typically in an order?
```
SELECT COUNT(order_details_id)/COUNT(distinct order_id) as avg_no_of_pizzas_per_order
FROM pizza.dbo.order_details;
```
On average, customers order 2 pizzas per order.

### 3. Do we have any bestsellers?
```
SELECT pt.name AS pizza_name, ROUND(SUM(p.price * od.quantity),2) AS revenue
FROM pizza.dbo.order_details od 
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza.dbo.pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC; 
```
Based on sales, the three most popular pizzas are The Thai Chicken Pizza, The Barbecue Chicken Pizza, and The California Chicken Pizza.

### 4. How many pizzas are we making during peak hour?
```
SELECT DATEPART(HOUR, time) AS hours, 
count(distinct(o.order_id)) as total_orders, 
count(quantity) as total_quantity 
FROM pizza.dbo.orders o 
JOIN pizza.dbo.order_details od 
ON o.order_id = od.order_id
GROUP BY DATEPART(HOUR, time) 
ORDER BY total_orders DESC;
```
At 12 p.m., the restaurant received 2520 orders, which consisted of 6543 pizzas in total.

### 5. Are there any peak days?
```
SELECT count(order_id) as orders, weekday
FROM pizza.dbo.orders
GROUP BY weekday 
ORDER BY orders DESC;
```
Friday, Thursday, and Saturday are the peak days.

### 6. Which month experienced the highest number of orders?
```
SELECT count(order_id) as orders, month
FROM pizza.dbo.orders
GROUP BY month 
ORDER BY orders DESC;
```
July had the highest number of orders of 1935.

### 7. What is the total revenue from 2015?
```
SELECT ROUND(SUM(p.price * od.quantity),2) AS Revenue
FROM  pizza.dbo.pizzas p
JOIN pizza.dbo.order_details od
ON p.pizza_id = od.pizza_id;
```
Total revenue for the year 2015 is $8,17,860.05.

### 8. Which month had the highest revenue?
```
SELECT o.month, ROUND(SUM(p.price),2) AS total_price
FROM pizza.dbo.order_details od
JOIN pizza.dbo.orders o ON od.order_id = o.order_id
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id
GROUP BY o.month
ORDER BY total_price DESC;
```
July had the highest revenue of $71,027.45.

### 9. What are top-selling pizza sizes?
```
SELECT p.size as size, SUM(od.quantity) AS quantity
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
GROUP BY size
ORDER BY quantity DESC;
```
The large-size pizza received the most orders, totalling 18,956.

### 10. What pizza categories are ordered?
```
SELECT pt.category, SUM(od.quantity) AS quantity
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;
```
There are 4 categories: Classic, Supreme, Veggie and Chicken.

### 11. What is the average order value?
```
SELECT ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id),2) AS avg_order_value
FROM pizza.dbo.orders o
JOIN pizza.dbo.order_details od ON o.order_id = od.order_id
JOIN pizza.dbo.pizzas p ON od.pizza_id = p.pizza_id;
```
The average order value is $38.31.

### 12. What is the average price per pizza?
```
SELECT ROUND(AVG(price),2) AS average_price_per_pizza
FROM pizza.dbo.pizzas;
```
The average price per pizza is $16.44.

### 13. How many orders are in total?
```
SELECT count(order_id) AS no_of_orders
FROM pizza.dbo.orders;
```
Total number of orders is 21,350.

### 14. What is the quantity of pizzas sold?
```
SELECT count(quantity) as quantity
FROM pizza.dbo.order_details;
```
The total number of pizzas sold is 48,620.

### 15. How many different pizza varieties are on the menu?
```
SELECT count(*) AS pizza_varieties 
FROM pizza.dbo.pizza_types;
```
There are a total of 32 pizza varieties on the menu.

### 16. Which ingredients are the most popularly ordered?
```
SELECT DISTINCT(TRIM(value)) AS ingredient, COUNT(TRIM(value)) AS count
FROM pizza.dbo.pizza_types pt
JOIN pizza.dbo.pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN pizza.dbo.order_details od ON p.pizza_id = od.pizza_id
CROSS APPLY STRING_SPLIT(pt.ingredients, ',') AS ingredients_split
GROUP BY TRIM(value)
ORDER BY count DESC;
```
Garlic, Tomatoes, Red Onions, Red Peppers, and Mozzarella Cheese are the most popularly ordered ingredients.

### 17. What is the distribution of order quantities by time of day?
```
SELECT
    CASE
        WHEN o.time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN o.time BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
        WHEN o.time BETWEEN '18:00:00' AND '23:59:59' THEN 'Evening'
   	    ELSE 'Night'
    END AS time_of_day,
    SUM(od.quantity) AS total_quantity
FROM
    pizza.dbo.orders o
JOIN
    pizza.dbo.order_details od
ON o.order_id = od.order_id
GROUP BY
    CASE
        WHEN o.time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN o.time BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
        WHEN o.time BETWEEN '18:00:00' AND '23:59:59' THEN 'Evening'
   	    ELSE 'Night'
    END
ORDER BY
    time_of_day;
```
The number of orders is highest in the afternoon with 29,468, followed by the evening with 17,356, and the morning with 2,750.
