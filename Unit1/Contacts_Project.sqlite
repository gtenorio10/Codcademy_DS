/*Create a new table called friends*/
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

/*Add Jane's info to the friend table*/
INSERT INTO friends 
VALUES (1,'Jane Doe', '1990-05-30');

/*Checking to see if friends table is created and Jane Doe is added*/
SELECT *
FROM friends;

/*Add two more friends to table*/
INSERT INTO friends
VALUES (2, 'Olive Pam', '1995-02-12');

INSERT INTO friends
VALUES (3, 'Michi See', '1996-10-31');

/*Update Jane Doe's last name to Smith*/
UPDATE friends
SET name = "Jane Smith"
WHERE id = 1;

/*Add a new column named email*/
ALTER TABLE friends
ADD email TEXT;

/*Update Email for everyone in table*/
UPDATE friends
SET email = "jane@codecademy.com"
WHERE id = 1;

UPDATE friends
SET email = "OPam@codecademy.com"
WHERE id = 2;

UPDATE friends
SET email = "See.M@codecademy.com"
WHERE id = 3;

/*Remove Jane from friends table*/
DELETE FROM friends
WHERE id = 1;

/*Checking current table*/
SELECT *
FROM friends;