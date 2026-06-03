-- Data Validation

SELECT *
FROM sales_data
WHERE region='Wset';

-- Output : 0 rows

SELECT *
FROM sales_data
WHERE product_category='electroncs';

-- Output : 0 rows

SELECT *
FROM sales_data
WHERE sales_amount < 0;

-- Output : 0 rows