/* Look at table, What are the top stories w/ highest score */
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

/*First, find the total score of all the stories.*/
SELECT SUM(score) AS Total_Score
FROM hacker_news;
--6366

/* Find the individual users who have gotten combined scores of more than 200, and their combined scores. */
SELECT user, SUM(score) AS Total_Score
FROM hacker_news
GROUP BY user
HAVING Total_Score > 200
ORDER BY 2 DESC;

/*Then, we want to add these users’ scores together and divide by the total to get the percentage */
SELECT ((517.0 + 309.0 + 304.0 + 282.0) / 6366.0) *100;
-- ~ 22.2%

/* How many times has each offending user posted this link? */
SELECT user, COUNT(*) AS Total_URL_Shared
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 2 DESC;

/* Which of these sites fee Hacker News the most (github, medium, new york time) */
SELECT CASE
  WHEN url LIKE '%gtihub.com%' THEN 'Github'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
  END AS 'Source'
  FROM hacker_news;
  
/* Add a column for the number of stories from each URL using COUNT(). */
 SELECT CASE
  WHEN url LIKE '%gtihub.com%' THEN 'Github'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
  END AS 'Source', COUNT(url) AS total_url_count
  FROM hacker_news
  GROUP BY 1
  ORDER BY 2 DESC;
  
/* Look at timestamp column */
SELECT timestamp
FROM hacker_news
LIMIT 10;

/* Use the strftime function for hour */
SELECT timestamp,
strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

/* Okay, now we understand how strftime() works. Let’s write a query that returns three columns:
The hours of the timestamp
The average score for each hour
The count of stories for each hour */
SELECT strftime('%H', timestamp) AS hour, AVG(score) AS Avg_Score, COUNT(*) AS num_of_stories
FROM hacker_news
GROUP BY 1
ORDER BY 1;

/* Round avg and remove null */
SELECT strftime('%H', timestamp) AS hour, ROUND(AVG(score),1) AS Avg_Score, COUNT(*) AS num_of_stories
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1; 

