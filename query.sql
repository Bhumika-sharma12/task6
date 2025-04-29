-- using sql to analyze the monthly and yearly data using group by and order by
SELECT 
    EXTRACT(MONTH FROM o.order_date) AS month,
    EXTRACT(YEAR FROM o.order_date) AS year,
    SUM(od.revenue) AS total_revenue,
    COUNT(DISTINCT o.product_name) AS unique_products_sold
FROM 
    orders AS o
INNER JOIN 
    order_details AS od
ON 
    o.product_id = od.product_id
    AND o.order_date = od.order_date
GROUP BY 
    EXTRACT(YEAR FROM o.order_date), 
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;
