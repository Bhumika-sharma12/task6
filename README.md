# task6
### Dataset Description
We used two tables to simulate a real-world online sales database over a period of 2 years (2023–2024):

**1. orders table**

Column Name         	Data Type           	Description
order_id	             INT	          Unique identifier for each order

product_id            	INT           	Foreign key referencing the product

product_name	            TEXT	           Name of the product ordered

order_date	                DATE            	Date when the order was placed

ship_date	                    DATE            	Date when the product was shipped

** 2. order_details table** 

Column Name	                   Data Type                 	Description
product_id	                INT	                   Foreign key matching the product from orders
order_date	               DATE                      	Date of order to align with orders
price                       NUMERIC	                   Unit price of the product
quantity                   	INT	                         Number of units sold
revenue	                   NUMERIC                     	Total revenue (price × quantity)
order_volume	             INT	                    Number of orders (generally 1 per row)


### ** Process Followed**
** 1. Data Creation**
Used manually generated entries for orders and order_details to simulate e-commerce transactions.

Ensured date diversity (monthly spread) for trend analysis.

Included realistic price and quantity variations to calculate revenue.

**2. Data Normalization**
Split data into two tables to follow 1NF/2NF normalization:

orders: general order info and product name.

order_details: transactional metrics like revenue.

**3. SQL Aggregation for Trend Analysis**
Used a SQL query to:

Extract month and year from order_date.

Join orders and order_details on product_id and order_date.

**Aggregate:**

Total revenue using SUM(revenue).

Count of unique products sold per month using COUNT(DISTINCT product_name).

** 4. Final Output**
The result shows monthly revenue trends and product diversity sold over time — useful for business decisions like demand forecasting and marketing planning.
