/*See which plans are used by premium members*/
SELECT premium_users.user_id, plans.description
FROM plans
JOIN premium_users
ON premium_users.membership_plan_id = plans.id;

/* Look at the titles of songs that were played by each user */
SELECT plays.user_id, plays.play_date, songs.title
FROM plays
JOIN songs
ON plays.song_id = songs.id;

/* Which users aren’t premium users? */
 SELECT users.id
 FROM users
 LEFT JOIN premium_users
 ON users.id = premium_users.user_id
 WHERE premium_users.user_id IS NULL;
 
 /* Use a left join to combine january and february on user_id and select user_id from january.
Add the following WHERE statement to find which users played songs in January, but not February */
WITH january AS (
  SELECT *
  FROM plays
  WHERE strftime("%m", play_date) = '01'
),
february AS (
  SELECT *
  FROM plays
  WHERE strftime("%m", play_date) = '02'

)
SELECT january.user_id
FROM january
LEFT JOIN february
ON january.user_id = february.user_id
WHERE february.user_id IS NULL;

/*For each month in months, we want to know if each user in premium_users was active or canceled. Cross join months and premium_users and select: */
SELECT premium_users.user_id, premium_users.purchase_date, premium_users.cancel_date, months.months
FROM months
CROSS JOIN premium_users;

/*Replace the SELECT statement in your CROSS JOIN with the following statement:*/
SELECT premium_users.user_id,
  months.months,
  CASE
    WHEN (
      premium_users.purchase_date <= months.months
      )
      AND
      (
        premium_users.cancel_date >= months.months
        OR
        premium_users.cancel_date IS NULL
      )
    THEN 'active'
    ELSE 'not_active'
  END AS 'status'
FROM premium_users
CROSS JOIN months;

/*Songify has added some new songs to their catalog.Combine songs and bonus_songs using UNION and select all columns from the result. */
SELECT *
FROM songs
UNION 
SELECT *
FROM bonus_songs
LIMIT 10;

/*Add a third UNION/SELECT so that the result contains 2017-03-01.*/
SELECT '2017-01-01' as month
UNION
SELECT '2017-02-01' as month
UNION
SELECT '2017-03-01' as month;

/*Use a WITH statement to alias this code as play_count.

Join play_count with songs and select (in this order):

songs table’s title column
songs table’s artist column
play_count‘s times_played column*/
WITH play_count AS (
  SELECT song_id,
COUNT(*) AS 'times_played'
FROM plays
GROUP BY song_id)
SELECT songs.title, songs.artist, play_count.times_played
  FROM play_count
  JOIN songs
  ON play_count.song_id = songs.id;


