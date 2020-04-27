/*What are the distinct stocks in the table?
Which rows have a price above 100? between 90 to 200, etc?
Sort the table by price. What are the minimum and maximum prices? */

SELECT DISTINCT symbol, name
FROM stocks;
--T-Mobile, O'Reilly Automotive Inc, Microsoft Corp, Illumina Inc, Hasbro Inc

SELECT *
FROM stocks
WHERE price > 100
ORDER BY price DESC;

SELECT *
FROM stocks
WHERE price BETWEEN 90 AND 200
ORDER BY price DESC;

SELECT name, MAX(price) AS "Maxium Price"
FROM stocks;
-- O'Reilly Automotive at $386.45

SELECT name, MIN(price) AS "Minimum Price"
FROM stocks;
-- Hasbro Inc $72.34



