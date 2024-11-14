# Maven's Pizza Sales Insights

![Pizza Banner](https://github.com/user-attachments/assets/190fced6-a2a6-4382-919f-3d89de89cddf)

# Table of Contents
* [Project Background](#project-background)
* [Data Structure](#data-structure)
* [Executive Summary](#executive-summary)
* [Recommendations](#recommendations)

# Project Background 
This project analyzes a year’s worth of sales from a fictitious pizza restaurant, capturing the date and time of each order along with details on the pizzas served, including type, size, quantity, price, and ingredients. The goal is to assess sales performance and customer preferences by examining key metrics like product popularity, ingredient demand, peak sales times, and order patterns across categories and sizes. Through the creation of interactive dashboards, this analysis aims to deliver actionable insights to help refine sales strategies, streamline operations, and elevate the dining experience at the pizza restaurant.

Insights and recommendations are provided on the following key areas : 

- **Pizza Performance**: Analyzing top- and low-performing pizzas to identify bestsellers and underperformers.
- **Category and Size Preferences**: Comparing sales across non-vegetarian and vegetarian options, order volumes by category, and customer preferences for different pizza sizes.
- **Ingredient Popularity**: Examining ingredient sales to highlight the most popular and high-revenue ingredients.
- **Peak Sales Times**: Conducting time-based analysis to pinpoint peak sales periods, including peak times of day, specific hours, and high-traffic days.
- **Monthly Performance**: Analyzing sales trends across months to identify the highest-performing period

Detailed Resources: 

- The Pre-Processing process utilized can be found [here](https://github.com/karlyndiary/Mavens-Pizza-Sales-Insight/blob/main/Queries%20%26%20Insight/%5B01%5D%20Main%20Query.sql). 
- An interactive Excel dashboard can be downloaded [here](https://github.com/karlyndiary/Mavens-Pizza-Sales-Insight/blob/main/Maven%20Pizza%20Sales%20Insight%20Dashboard.xlsx).

# Data Structure

Maven Pizza Sale's database structure as seen below consists of four tables: Order Details, Orders, Pizza Types and Pizzas with 48,620 records.

![Pizza ER Diagram](https://user-images.githubusercontent.com/116041695/234453942-3df6eb5c-52cb-4386-a385-bec29cd8e060.png)

# Executive Summary 

### Overview of Findings 

Non-vegetarian pizzas, particularly the Thai Chicken and Barbecue Chicken varieties, lead in sales, while the Brie Carre and Green Garden pizzas are the lowest performers. Garlic, tomatoes, and red onions are the most popular ingredients, with the Classic category and Large pizza size being the top choices. Peak sales occur in the afternoon, with Friday being the highest-performing day and July generating the most revenue.

Below is the overview page from the Excel dashboard and more examples are included throughout the report. The interactive dashboard can be viewed [here](https://github.com/karlyndiary/Mavens-Pizza-Sales-Insight/blob/main/Maven%20Pizza%20Sales%20Insight%20Dashboard.xlsx).

### Maven's Pizza Sales Dashboard

#### Sales Performance Insights:
- **Top-performing Pizzas**: The Thai Chicken Pizza has generated the highest sales, totaling $43,434, followed closely by the Barbecue Chicken Pizza at $42,768.
- **Low-performing Pizzas**: On the other end of the spectrum, the Brie Carre Pizza recorded the lowest sales at $11,588, followed by the Green Garden Pizza at $13,955.
- **Pizza Category**: Non-vegetarian pizzas are outperforming vegetarian pizzas in terms of sales.
#### Ingredient Insights:
- **Top Ingredients**: The most popular ingredient is garlic, contributing $27,422 in sales, followed by tomatoes at $26,601 and red onions at $19,547. Mozzarella cheese ranks within the top 5 ingredients, generating $10,333 in sales.
#### Product Category and Size Preferences:
- **Most Popular Categories**: The Classic category leads with 14,888 orders, followed by the Supreme category with 11,987 orders.
- **Size Preferences**: The Large pizza size is the most popular, with 18,526 units sold, followed by Medium at 15,385 units. The XL and XXL sizes are the least favored.
#### Time and Hour Insights:
- **Peak Time**: The afternoon remains the busiest time, with a total of 29,468 orders, followed by the evening period with 17,356 orders.
- **Peak Hour**: The highest number of pizzas were sold at 12:00 PM, with 6,776 pizzas sold during this hour.
#### Day and Month Performance:
- **Peak Days**: The peak sales days are Thursday, Friday, and Saturday, with Friday leading in sales at 8,106 pizzas sold.
- **Peak Month**: July stands out as the top-performing month, generating $72,557 in sales and 4,301 pizzas sold.

![Mavens Pizza Dashboard](https://github.com/user-attachments/assets/ac5fa199-5b2d-407f-9d24-5b1b2fb71ac4)

# Recommendations

Based on the uncovered insights, the following recommendations have been provided : 

- Store credit or points can be applied as discounts when purchasing pizzas. Additionally, by occasionally multiplying these points on random days, sales may experience an uplift.
- To enhance Sunday revenue, think about reducing working hours to support employee well-being while also driving pizza sales through limited-time B1G1 flash sales.
- Let customers design custom pizzas with up to 5 toppings. The best ones chosen by the top chef can be added to the menu, and the customer who created it can name the pizza, allowing for regular menu updates based on customer choices.
- October has the lowest revenue, likely due to its seasonal nature, with Halloween as a key factor. To leverage this, think about introducing Halloween-themed pizzas for the whole month or the week leading up to the event. If successful, this approach could extend to incorporating themed pizzas for other festivals too.
- At the close of the year, gather feedback from customers to identify areas for improvement in the restaurant.
- Due to the lower demand for XL and XXL-sized pizzas, consider introducing a half-and-half pizza option, allowing customers to enjoy two different pizza varieties on a single pie.
