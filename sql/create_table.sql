CREATE TABLE sales_data
(
    order_id VARCHAR(20),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    order_date VARCHAR(50),
    region VARCHAR(50),
    state VARCHAR(50),
    product_category VARCHAR(100),
    product_name VARCHAR(100),
    quantity_sold INTEGER,
    unit_price NUMERIC(10,2),
    sales_amount NUMERIC(12,2),
    discount_percentage NUMERIC(5,2),
    profit_amount NUMERIC(12,2),
    sales_representative VARCHAR(100),
    payment_method VARCHAR(50),
    delivery_status VARCHAR(50)
);