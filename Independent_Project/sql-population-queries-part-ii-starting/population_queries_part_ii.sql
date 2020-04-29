-- How many entries in the database are from Africa?
SELECT COUNT(*) AS Num_From_Africa
FROM countries
WHERE continent = 'Africa';
--56 entries

-- What was the total population of Oceania in 2005?
SELECT SUM(p.population) AS Total_Population
FROM population_years AS p
JOIN countries AS c
ON c.id = p.country_id
WHERE p.year = '2005' AND c.continent = 'Oceania';
--32.664

-- What is the average population of countries in South America in 2003?
SELECT AVG(p.population) AS Average_Population
FROM population_years AS p
JOIN countries AS c
ON c.id = p.country_id
WHERE p.year = '2003' AND c.continent = "South America";
--25.891


-- What country had the smallest population in 2007?
SELECT c.name, c.continent, MIN(p.population) AS smallest_population
FROM countries AS c
JOIN population_years AS p
ON c.id = p.country_id
WHERE p.year = "2007";
--Niue

-- What is the average population of Poland during the time period covered by this dataset?
SELECT ROUND(AVG(p.population),3) AS Average_Population
FROM population_years AS p
JOIN countries AS c
ON c.id = p.country_id
WHERE c.name = "Poland";
--38.561

-- How many countries have the word "The" in their name?
SELECT COUNT(*) AS "Number of countries with 'The' in its name"
FROM countries
WHERE name LIKE "% The%";
--2

-- What was the total population of each continent in 2010?
SELECT c.continent, ROUND(SUM(p.population), 2) AS Total_Population
FROM countries AS c
JOIN population_years AS p
WHERE p.year = "2010"
GROUP By 1
ORDER BY 2 DESC;

