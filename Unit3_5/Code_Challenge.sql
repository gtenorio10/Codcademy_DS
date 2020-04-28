/* Use COUNT() and a LIKE operator to determine the number of users that have an email ending in ‘.com’. */
SELECT COUNT(*)
FROM users
WHERE email LIKE "%.com";

/* What are the most popular first names on Codeflix? */
SELECT first_name, COUNT(*) AS "Count"
FROM users
GROUP BY first_name
ORDER BY 2 DESC;

/* The UX Research team wants to see a distribution of watch durations. They want the result to contain:

duration, which is the watch event duration, rounded to the closest minute
count, the number of watch events falling into this “bucket” */
SELECT ROUND(watch_duration_in_minutes) AS "duration", COUNT(*) AS "count"
FROM watch_history
GROUP BY duration
ORDER BY duration;

/* Find all the users that have successfully made a payment to Codeflix and find their total amount paid.

Sort them by their total payments (from high to low). */
SELECT user_id, SUM(amount) AS amount
FROM payments
WHERE status = "paid"
GROUP BY user_id
ORDER BY amount DESC;

/* Generate a table of user ids and total watch duration for users who watched more than 400 minutes of content.                                    */
SELECT user_id, SUM(watch_duration_in_minutes) AS duration_total
FROM watch_history
GROUP BY user_id
HAVING duratio_total > 400;

/* To the nearest minute, how many minutes of content were streamed on Codeflix? */
SELECT ROUND(SUM(watch_duration_in_minutes), 0) AS 'Overall_duration'
FROM watch_history;

/* Which days in this period did Codeflix collect the most money? */
SELECT pay_date AS date, SUM(amount) AS "total amount"
FROM payments
WHERE status = 'paid'
GROUP BY pay_date
ORDER BY sum(amount) DESC;

/* When users successfully pay Codeflix (status = 'paid'), what is the average payment amount?    */
SELECT avg(amount) AS "Avg Payment"
FROM payments
WHERE status == 'paid';

/* Of all the events in the watch_history table, what is the duration of the longest individual watch event? What is the duration of the shortest?   */
SELECT MAX(watch_duration_in_minutes) AS 'max duration', MIN(watch_duration_in_minutes) AS 'min duration'
FROM watch_history;