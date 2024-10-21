# Maven's Pizza Sales Insight

![pizza cover](https://user-images.githubusercontent.com/116041695/234172419-28b8f5ed-425d-477f-9586-44c2a86d456e.jpg)

## Table of Content

* [Background](#background)
* [Data Summary](#data-summary)
* [ER Diagram](#er-diagram)
* [Excel Dashboard](#excel-dashboard)
* [Recommendations](#recommendations)

## Background
For the Maven Pizza Challenge, you’ll be playing the role of a BI Consultant hired by Plato's Pizza, a Greek-inspired pizza place in New Jersey. You've been hired to help the restaurant use data to improve operations, and just received the following note:

Welcome aboard, we're glad you're here to help!

Things are going OK here at Plato's, but there's room for improvement. We've been collecting transactional data for the past year, but really haven't been able to put it to good use. Hoping you can analyze the data and put together a report to help us find opportunities to drive more sales and work more efficiently.

Thanks in advance,

Mario Maven (Manager, Plato's Pizza)

## Data Summary

The dataset is found on [Maven Analytics](https://www.mavenanalytics.io/data-playground) under the name Pizza Place Sales with a total of 4 tables with 48,620 records and 12 fields.

- Order Details

  The table has the order_details_id which is the primary key of the table along with the order_id, pizza_id as the foreign key of the orders and pizzas table and last, we have the quantity column of each type of pizza.

- Orders

  This table includes the order_id which is the primary key, and the date and time of each order.

- Pizza Types

  We have the pizza_type_id as the primary key, along with each pizza's name, category and ingredients.

- Pizzas

  The pizzas table has the pizza_id as the primary key, and the pizza_type_id as the foreign key from the pizza types table, it also includes the size and price of the pizzas.

## ER Diagram

![Pizza ER Diagram](https://user-images.githubusercontent.com/116041695/234453942-3df6eb5c-52cb-4386-a385-bec29cd8e060.png)

## Excel Dashboard
![Maven Pizza Dashboard](https://github.com/karlyndiary/Mavens-Pizza-Sales-Insight/assets/116041695/78250efc-c2a0-4613-8b1e-3229bcf733f8)

## Recommendations
Having conducted a thorough analysis of the data, I've identified some valuable insights that have the potential to enhance the business. I would like to propose the following recommendations to the business owners.

* Store credit or points can be applied as discounts when purchasing pizzas. Additionally, by occasionally multiplying these points on random days, sales may experience an uplift.
* To enhance Sunday revenue, think about reducing working hours to support employee well-being while also driving pizza sales through limited-time B1G1 flash sales.
* Let customers design custom pizzas with up to 5 toppings. The best ones chosen by the top chef can be added to the menu, and the customer who created it can name the pizza, allowing for regular menu updates based on customer choices.
* October has the lowest revenue, likely due to its seasonal nature, with Halloween as a key factor. To leverage this, think about introducing Halloween-themed pizzas for the whole month or the week leading up to the event. If successful, this approach could extend to incorporating themed pizzas for other festivals too.
* At the close of the year, gather feedback from customers to identify areas for improvement in the restaurant.
* Due to the lower demand for XL and XXL-sized pizzas, consider introducing a half-and-half pizza option, allowing customers to enjoy two different pizza varieties on a single pie.
