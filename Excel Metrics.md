- Average customers per day
Pivot table of Order Date and Distinct Order ID
```
=AVERAGE(D2:D359)
```
Custom Formatting -> $#,##0.00,"k"

- Average no of pizzas per order
```
=COUNT(Data[order_details_id])/COUNT(UNIQUE(Data[order_id]))
```

- Total Revenue
```
=SUM(Data[sales])
```

- Average Order Value
```
=SUM(Data[sales])/COUNT(UNIQUE(Data[order_id]))
```

- Average price per pizza
```
=AVERAGE(Data[price])
```

- Total Orders
```
=COUNT(UNIQUE(Data[order_id]))
```

- Total Pizzas Sold
```
=SUM(Data[quantity])
```

- Pizza Varieties
```
=COUNTA(UNIQUE(Data[pizza_type_id]))
```
