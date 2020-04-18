/* Find unique year and count how many unique year
https://www.w3schools.com/sql/sql_count_avg_sum.asp */
SELECT COUNT(DISTINCT year)
FROM population_years;
--There are 11 Distinct year

/* What is the largest population size for Gabon in this dataset? */
SELECT *
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;
-- The largest population size for Gabon is 1.54526 millions in 2010



