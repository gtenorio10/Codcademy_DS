/* Look at the dat */
SELECT *
FROM met
LIMIT 10;

/* How many pieces are in the American Decorative Art collection? */
SELECT COUNT(*) AS Num_Of_Pieces
FROM met;
-- 3948 pieces

/*Count the number of pieces where the category includes ‘celery’.*/
SELECT COUNT(*) AS Num_Of_Pieces
FROM met
WHERE category LIKE '%celery%'; 

/*Find the title and medium of the oldest piece(s) in the collection. */
SELECT MIN(date) AS Oldest_Date
FROM met;

SELECT title, medium, date
FROM met
WHERE date LIKE '%1600%';

/*Find the top 10 countries with the most pieces in the collection. */
SELECT country, COUNT(*) AS count
FROM met 
WHERE country IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

/*Find the categories HAVING more than 100 pieces. */
SELECT category, COUNT(*) AS Num_Of_Pieces
FROM met
GROUP BY 1
HAVING Num_Of_Pieces > 100
ORDER BY 2 DESC;

/*Count the number of pieces where the medium contains ‘gold’ or ‘silver’.And sort in descending order.*/
SELECT medium, COUNT(*) AS count
FROM met
WHERE medium LIKE '%gold%' or medium LIKE '%silver%'
GROUP BY 1
ORDER BY 2 DESC;




