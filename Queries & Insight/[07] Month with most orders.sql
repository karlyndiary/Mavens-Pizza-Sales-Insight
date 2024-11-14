-- Which month experienced the highest number of orders?

-- Which month experienced the highest number of orders?

SELECT DATENAME(month, o.date) as month,  as revenue count(o.order_id) as orders
FROM [Pizza].[dbo].[order_details] od
JOIN [Pizza].[dbo].[orders] o
ON od.order_id = o.order_id
GROUP BY DATENAME(month, o.date) 
ORDER BY orders DESC;

July had the highest number of orders of 4301.
