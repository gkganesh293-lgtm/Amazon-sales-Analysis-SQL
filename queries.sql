CREATE DATABASE amazon_sales;

USE amazon_sales;

CREATE TABLE sales (
    invoice_id VARCHAR(30),
    branch VARCHAR(5),
    city VARCHAR(30),
    customer_type VARCHAR(30),
    gender VARCHAR(10),
    product_line VARCHAR(100),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_pct DECIMAL(10,2),
    total DECIMAL(10,2)
);

show tables;
SELECT count(*) from sales;
show tables;
SELECT COUNT(*) FROM `amazon sale report`;

#Total orders
select count(*) as Total_Orders
from `amazon sale report`;

#Total Sales Amount
SELECT SUM(Amount) AS Total_Sales
FROM `amazon sale report`;

SELECT ROUND(SUM(Amount),2) AS Total_Sales
FROM `amazon sale report`;

SELECT Category,
       ROUND(SUM(Amount),2) AS Total_Sales
FROM `amazon sale report`
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Status,
       COUNT(*) AS Orders
FROM `amazon sale report`
GROUP BY Status
ORDER BY Orders DESC;

SELECT SKU,
       ROUND(SUM(Amount),2) AS Revenue
FROM `amazon sale report`
GROUP BY SKU
ORDER BY Revenue DESC
LIMIT 10;

SELECT Category,
       COUNT(*) AS Total_Orders
FROM `amazon sale report`
GROUP BY Category
ORDER BY Total_Orders DESC;



SELECT Category,
       ROUND(SUM(Amount),2) AS Revenue
FROM `amazon sale report`
GROUP BY Category
ORDER BY Revenue DESC;
