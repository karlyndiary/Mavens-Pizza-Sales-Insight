-- Are there any peak days?

SELECT count(order_id) as orders, weekday
FROM pizza.dbo.orders
GROUP BY weekday 
ORDER BY orders DESC;

Friday, Thursday, and Saturday are the peak days.
