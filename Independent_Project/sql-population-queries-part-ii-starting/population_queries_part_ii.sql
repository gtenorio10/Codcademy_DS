-- How many entries in the database are from Africa?
SELECT COUNT(*) AS Num_From_Africa
FROM countries
WHERE continent = 'Africa';
--56 entries

-- What was the total population of Oceania in 2005?
SELECT SUM(p.population) AS Total_Population
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE p.year = '2005' AND c.continent = 'Oceania';
--32.664

-- What is the average population of countries in South America in 2003?
SELECT AVG(p.population) AS Average_Population
FROM population_years AS p
LEFT JOIN countries AS c
ON c.id = p.country_id
WHERE p.year = '2003' AND c.continent = "South America";
--25.891


-- What country had the smallest population in 2007?



-- What is the average population of Poland during the time period covered by this dataset?



-- How many countries have the word "The" in their name?



-- What was the total population of each continent in 2010?


