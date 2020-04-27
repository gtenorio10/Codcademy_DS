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

/* Highest stock of the table */
SELECT name, MAX(price) AS "Maxium Price"
FROM stocks;
-- O'Reilly Automotive at $386.45

/* Lowest stock of the table */
SELECT name, MIN(price) AS "Minimum Price"
FROM stocks;
-- Hasbro Inc $72.34

/* Finding the max, min and average of the stocks */
SELECT name, MAX(price) AS 'Max Price', MIN(price) AS 'Min Price', ROUND(AVG(price),2) AS 'Avg Price'
FROM stocks
GROUP BY 1
ORDER BY 2 DESC;

/* Based on hours for all stocks all stocks */
SELECT strftime("%H", datetime) AS 'Time (hrs)',
MAX(price) AS 'Max Price', MIN(price) AS 'Min Price', ROUND(AVG(price),2) AS 'Avg Price'
FROM stocks
Group BY 1;

/* Based on date for all stocks */
SELECT strftime("%d", datetime) AS 'Date 04/__/20',
MAX(price) AS 'Max Price', MIN(price) AS 'Min Price', ROUND(AVG(price),2) AS 'Avg Price'
FROM stocks
Group BY 1;

/* Looking at T-Mobile by date & time */
SELECT strftime("%d", datetime) AS 'Date 04/__/20',
MAX(price) AS 'Max Price', MIN(price) AS 'Min Price', ROUND(AVG(price),2) AS 'Avg Price'
FROM stocks
WHERE symbol = "TMUS"
Group BY 1;

SELECT strftime("%H", datetime) AS 'Time (hrs)',
MAX(price) AS 'Max Price', MIN(price) AS 'Min Price', ROUND(AVG(price),2) AS 'Avg Price'
FROM stocks
WHERE symbol = "TMUS"
Group BY 1;

