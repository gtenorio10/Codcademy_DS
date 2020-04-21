/* Look at the data */
SELECT *
FROM startups;

/* Calculate the total number of companies in table */ 
SELECT COUNT(*)
FROM startups;
-- There are 70 companies

/* We want to know the total value of all companies in this table. */
SELECT SUM(valuation) AS "valuation"
FROM startups;
--974455790000

/* What is the highest amount raised by a startup? */
SELECT name AS "company", MAX(raised) AS "raised"
FROM startups;
--11500000000

/* Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.                                               */
SELECT name AS "company", MAX(raised) AS "raised"
FROM startups
WHERE stage = "Seed";
--1800000

/* In what year was the oldest company on the list founded */
SELECT name AS "company", MIN(founded) as founded
FROM startups;
--1994

/* Return the average valuation */
SELECT AVG(valuation) AS "Avg Valuation"
FROM startups;
--15974685081.9672

/* Return the average valuation, in each category. */
SELECT category, AVG(valuation) AS "Avg Valuation"
FROM startups
GROUP BY category;

/* Return the average valuation, in each category. Round the averages to two decimal places. */
SELECT category, ROUND(AVG(valuation),2) AS "Avg Valuation"
FROM startups
GROUP BY category;

/* Lastly, order the list from highest averages to lowest. */
SELECT category, ROUND(AVG(valuation),2) AS "Avg_Valuation"
FROM startups
GROUP BY category
ORDER BY Avg_Valuation DESC;

/* First, return the name of each category with the total number of companies that belong to it. */
SELECT category, COUNT(*) AS "Num_Companies"
FROM startups
GROUP BY category;

/* Next, filter the result to only include categories that have more than three companies in them.What are the most competitive markets?*/
SELECT category, COUNT(*) AS "Num_Companies"
FROM startups
GROUP BY category
HAVING NUM_Companies > 3
ORDER BY NUM_Companies DESC;
--Social, Mobile, Education

/* What is the average size of a startup in each location? */
SELECT location, AVG(employees) AS AVG_Employees_Num
FROM startups
GROUP BY location;

/* What is the average size of a startup in each location, with average sizes above 500?*/
SELECT location, AVG(employees) AS AVG_Employees_Num
FROM startups
GROUP BY location
HAVING AVG_Employees_Num > 500;