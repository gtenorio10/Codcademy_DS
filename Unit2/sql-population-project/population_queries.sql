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

/* What were the 10 lowest population countries in 2005 */
SELECT country,
       population
  FROM population_years
 WHERE year = 2005
 ORDER BY population
 LIMIT 10;
-- Top 10 of lowest population in 2005 from least to greatest 
-- Niue, Falklan Islands (Islas Malvinas), Montserrat, Saint Pierre and Miquelon
-- Saint Helana, Nauru, Cook Islands, Turks and Caicos Islands
-- Virgin Islands, British and Gibraltar

/* What are all the distinct countries with a population of over 100 million in the year 2010? */
SELECT DISTINCT country,
                population
  FROM population_years
 WHERE year = 2010 AND 
       population >= 100
 ORDER BY population DESC;
--The countries (greatest to least) w/ more than 100 million people in 2010 are:
-- China, India, US, Indonesia, Brazil, Pakistan, Bangladesh, Nigeria, Russia, Japan, Mexico

/* How many countries in this data set have the word 'Islands' in their name? */
SELECT COUNT(DISTINCT country)
  FROM population_years
WHERE country LIKE "%Islands%";
-- There are 9 Distinct country that has "Islands" in its name

/*What is the difference in population between 2000 and 2010 in Indonesia? */
SELECT *
    FROM population_years
WHERE country = "Indonesia" AND (year = 2000 OR year = 2010)
ORDER BY year DESC;
--28.29173 more population increase from 2000 to 2010
