/* Look at nomnom table */
SELECT *
FROM nomnom;
/* What are the column names? 
name neighborhood, cuisine, review, price, health */

/* What are the distinct neighborhood */
SELECT DISTINCT neighborhood
FROM nomnom;

/* What are the distinct cuisine type*/
SELECT DISTINCT cuisine
FROM nomnom;

/* Suppose we would like some Chinese takeout.
What are our options? */
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

/* Return all resturants w/ reviews of 4+ */
SELECT *
FROM nomnom
WHERE review >= 4;

/* Return all resturants that are Italian and $$$ */
SELECT *
FROM nomnom
WHERE cuisine = 'Italian' AND price = "$$$";

/* Find restaurant name that contains meatball */
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

/* Find restaurants in Midtown, Downtown or Chinatown */
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown' OR neighborhood = 'Downtown' OR neighborhood = 'Chinatown';

/* Find all the health grade pending restaurants (empty values). */
SELECT *
FROM nomnom
WHERE health IS NULL;

/* Create a Top 10 restaurant ranking base on reviews */
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

/* Use a CASE statement to change the rating system to:
review > 4.5 is Extraordinary
review > 4 is Excellent
review > 3 is Good
review > 2 is Fair
Everything else is Poor
Don’t forget to rename the new column! */
SELECT name,
  CASE 
   WHEN review > 4.5 THEN 'Extraordinary'
   WHEN review > 4 THEN 'Excellent'
   WHEN review > 3 THEN 'Good'
   WHEN review > 2 THEN 'Fair'
   ELSE 'Poor'
  END AS 'Review'  
FROM nomnom;