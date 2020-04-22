/* Looking at transactions table */
SELECT *
FROM transactions;

/*What is the total money_in in the table?*/
SELECT SUM(money_in) AS Total_Money_In
FROM transactions;
--$17173.0 USD

/*What is the total money_out in the table?*/
SELECT SUM(money_out) AS Total_Money_Out
FROM transactions;
--$33417.0 USD

/*How many money_in transactions are in this table?
How many money_in transactions are in this table where ‘BIT’ is the currency?*/
SELECT COUNT(*) AS num_money_in
FROM transactions
WHERE money_in IS NOT NULL;
--43 money in

SELECT COUNT(*) AS num_money_in
FROM transactions
WHERE money_in IS NOT NULL AND currency = 'BIT';
--21 money in and BIT

/*What was the largest transaction in this whole table? Was it money_in or money_out? */
SELECT MAX(money_in) AS Max_Money_In, MAX(money_out) AS Max_Money_Out
FROM transactions;
--money_out

/*What is the average money_in in the table for the currency Ethereum (‘ETH’)?*/
SELECT AVG(money_in) AS Avg_money_in
FROM transactions
WHERE currency = 'ETH';
-- ~131.89

/*Select date, average money_in, and average money_out from the table.And group everything by date.*/
SELECT date, AVG(money_in) AS Avg_money_in, AVG(money_out) AS Avg_money_out
FROM transactions
GROUP BY 1;

/* Round the avg from the perivous query */
SELECT date, ROUND(AVG(money_in),2) AS Avg_money_in, ROUND(AVG(money_out),2) AS Avg_money_out
FROM transactions
GROUP BY 1;
