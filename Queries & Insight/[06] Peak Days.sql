-- Are there any peak days?

SELECT COUNT(o.order_id) AS orders, DATENAME(weekday, o.date) AS weekday
FROM [Pizza].[dbo].[order_details] od
JOIN [Pizza].[dbo].[orders] o
ON od.order_id = o.order_id
GROUP BY DATENAME(weekday, o.date) 
ORDER BY orders DESC;

Friday, Thursday, and Saturday are the peak days.
