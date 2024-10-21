-- Are there any peak days?

SELECT COUNT(o.order_id) AS orders, DATENAME(weekday, o.date) AS weekday
FROM pizza.dbo.orders o
GROUP BY DATENAME(weekday, o.date) 
ORDER BY orders DESC;


Friday, Thursday, and Saturday are the peak days.
