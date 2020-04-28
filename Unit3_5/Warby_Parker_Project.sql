/* Select all columns from the first 10 rows. What columns does the table have? */
 SELECT *
 FROM survey
 LIMIT 10;
 
 /* What is the number of responses for each question */
 SELECT question, COUNT(*) AS count
 FROM survey
 GROUP BY 1;
 
 /* Examine the first five rows of each table */
 SELECT *
 FROM quiz
 LIMIT 5;
 
 SELECT *
 FROM home_try_on
 LIMIT 5;
 
 SELECT *
 FROM purchase
 LIMIT 5;
 
 /* Left Join the three tables and slect the first 10 rows on table */
 SELECT DISTINCT quiz.user_id,
 home_try_on.user_id IS NOT NULL AS is_home_try_on,
 home_try_on.number_of_pairs, purchase.user_id IS NOT NULL AS is_purchase
 FROM quiz
 LEFT JOIN home_try_on
 ON home_try_on.user_id = quiz.user_id 
 LEFT JOIN purchase
 ON home_try_on.user_id = purchase.user_id
 LIMIT 10;
 
 