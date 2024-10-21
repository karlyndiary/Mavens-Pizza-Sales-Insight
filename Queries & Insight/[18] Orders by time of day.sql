-- What is the distribution of order quantities by time of day?

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

The number of orders is highest in the afternoon with 29,468, followed by the evening with 17,356, and the morning with 2,750.
