-- Query 1: Total Sales = 8108250.00
SELECT
ROUND(SUM(sales_amount),2) AS total_sales
FROM sales_data;

-- Query 2: Total Orders = 118
SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

-- Query 3: Total Customers = 10
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM sales_data;

-- Query 4: Total Profit = 1801195.00
SELECT
ROUND(SUM(profit_amount),2) AS total_profit
FROM sales_data;

-- Query 5: Profit Margin % = 22.21 %
SELECT
ROUND(
(SUM(profit_amount)/SUM(sales_amount))*100,
2
) AS profit_margin_percentage
FROM sales_data;

-- Query 6: Sales by Region
SELECT
region,
ROUND(SUM(sales_amount),2) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Query 7: Sales by Category
SELECT
product_category,
ROUND(SUM(sales_amount),2) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;

-- Query 8: Top Sales Representatives
SELECT
sales_representative,
ROUND(SUM(sales_amount),2) AS revenue_generated
FROM sales_data
GROUP BY sales_representative
ORDER BY revenue_generated DESC;

-- Query 9: Delivery Performance
SELECT
delivery_status,
COUNT(*) AS total_orders
FROM sales_data
GROUP BY delivery_status;