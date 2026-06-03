------------------------------------------------
-- Standardize Region Names
------------------------------------------------

UPDATE sales_data
SET region='West'
WHERE region='Wset';

UPDATE sales_data
SET region='South'
WHERE region='south';

------------------------------------------------
-- Standardize Categories
------------------------------------------------

UPDATE sales_data
SET product_category='Electronics'
WHERE product_category IN
('electroncs','Electrnics');

------------------------------------------------
-- Remove Negative Revenue
------------------------------------------------

DELETE FROM sales_data
WHERE sales_amount < 0;

------------------------------------------------
-- Remove Duplicates
------------------------------------------------

DELETE FROM sales_data
WHERE ctid IN
(
SELECT ctid
FROM
(
SELECT
ctid,
ROW_NUMBER() OVER
(
PARTITION BY order_id
ORDER BY order_id
) AS rn
FROM sales_data
) x
WHERE rn > 1
);

