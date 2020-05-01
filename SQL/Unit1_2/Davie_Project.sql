/* Look into orders table */
SELECT *
FROM orders
LIMIT 10;
-- column names id, user_id, order_date, restaurant_id, item_name, special_instructions

/* How recent is this data? */
SELECT DISTINCT order_date
FROM orders
ORDER BY order_date DESC
LIMIT 1;
-- 2017-06-30

/* Select for special_instructions of 20 rows */
SELECT special_instructions
FROM orders
LIMIT 20;

/* Edit to remove NA */
SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
LIMIT 20;

/* Order it from A-Z */
SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL 
ORDER BY special_instructions

/* Find the word sauce in special_instructions */
SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%sauce%';

/* Find the word door in special_instructions */
SELECT special_instructions 
FROM orders
WHERE special_instructions LIKE '%door%';

/* Find the word box in special_instructions */
SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%box%';

/*Rename id as # and special_instructions as Notes */

SELECT id AS '#', special_instructions AS 'Notes'
FROM orders
WHERE special_instructions LIKE '%box%';
