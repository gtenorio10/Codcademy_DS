/* Look at the three tables */
SELECT * FROM trips;
-- id,  date, pickup, dropoff, rider_id, car_id, type, cost
SELECT * FROM riders;
-- id, first, last username, rating, total_trips, referred
SELECT * FROM cars;
--id, model, OS, status, trips_complete

/*What’s the primary key of trips?
-- id
What’s the primary key of riders?
--id
What’s the primary key of cars? */
--id

/* cross join the riders and cars tables */
SELECT *
FROM riders
CROSS JOIN cars;

/* create a trip logs with the trips and its users */
SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

/* create a link between trips and cars */
SELECT *
FROM trips
JOIN cars
ON  trips.car_id = cars.id;

/*Stack the riders table on top of the new table named riders2. */
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

/* What is the average cost of a trip */
SELECT ROUND(AVG(cost),2) AS "The average cost of a trip"
FROM trips;
-- $31.92

/* Find riders with less than 500 total trips */
SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;

/* Calculate the number of cars that are active */
SELECT COUNT(*)
FROM cars
WHERE status = "active";

/* Find the two cars with the highest trips completed */
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
