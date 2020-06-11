SELECT *
FROM stream
LIMIT 20;

SELECT *
FROM chat
LIMIT 20;

SELECT DISTINCT game
FROM stream;

SELECT DISTINCT channel
FROM stream;

SELECT game, COUNT(*)
FROM stream
GROUP BY 1
ORDER BY 2 DESC;

SELECT country, COUNT(*)
FROM stream
WHERE game = "League of Legends"
GROUP BY 1
ORDER BY 2 DESC; 

SELECT player, COUNT(*)
FROM stream
GROUP By 1
ORDER BY 2 DESC;

SELECT time
FROM stream
LIMIT 10;

SELECT time, strftime('%S', time)
FROM stream
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', time),
   COUNT(*)
FROM stream
WHERE country = 'US'
GROUP BY 1;
