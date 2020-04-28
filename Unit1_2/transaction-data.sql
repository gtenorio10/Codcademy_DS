/* Look at the data. What are the column names */
SELECT *
FROM transaction_data
LIMIT 10;
-- id, full_name, email, zip, ip_address

/* Find the full_names and emails of the transactions listing 20252 as the zip code.                          */
SELECT full_name, email
FROM transaction_data
WHERE zip = 20252;
 
/* Find names with "Art Vandelay" or der in middle name */
SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay'
OR full_name LIKE '% der %';

/* Select ip_address and emails and find ip address that starts with 10 */
SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

/* Find the emails in transaction_data with ‘temp_email.com’ as a domain. */
SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

/* Find ip address starting with ‘120.’ and their full name starts with ‘John’.     */
SELECT *
FROM transaction_data
WHERE ip_address LIKE '120.%' AND
full_name LIKE 'John%';
 