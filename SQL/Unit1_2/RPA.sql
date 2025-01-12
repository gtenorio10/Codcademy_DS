/* Looking at the data */
SELECT *
FROM users
LIMIT 20;

/*Find the email addresses and birthdays of users whose birthday is between 1980-01-01 and 1989-12-31. */
SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31'
ORDER BY birthday;

/*Find the emails and creation date of users whose created_at date matches this condition. */
SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01'
ORDER BY created_at;

/* Find the emails of the users who received the ‘bears’ test.      */
SELECT email
FROM users
WHERE test = 'bears';

/* Find all the emails of all users who received a campaign on website BBB.     */
SELECT email
FROM users
WHERE campaign LIKE 'BBB-%';

/* Find all the emails of all users who received ad copy 2 in their campaign.  */
SELECT email
FROM users
WHERE campaign LIKE '%-2';

/*Find the emails for all users who received both a campaign and a test. */
SELECT email
FROM users
WHERE campaign IS NOT NULL AND test IS NOT NULL;
