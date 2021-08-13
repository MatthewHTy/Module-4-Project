-- Artist Table
-- 1.

INSERT INTO artist (name)

VALUES ('Sam Smith');

INSERT INTO artist (name)

VALUES ('Khalid');

INSERT INTO artist (name)

VALUES ('Brockhampton');
-- 2.

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- Employee Table
-- 1.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- 2.
SELECT * FROM employee WHERE reports_to = 2;

-- 3.
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- Invoice Table
-- 1.
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- 2.
SELECT MAX(total) FROM invoice;

-- 3.
SELECT MIN(total) FROM invoice;

-- 4.
SELECT * FROM invoice WHERE total > 5;

-- 5.
SELECT COUNT(*) FROM invoice WHERE total < 5;

-- 6.
SELECT SUM(total) FROM invoice;

-- JOIN Queries (Various Tables)
-- 1.
SELECT * FROM invoice AS i
JOIN invoice_line AS il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

-- 2.
SELECT i.invoice_date AS invoice_date, c.first_name AS first_name, c.last_name AS fast_name, i.total AS total
FROM invoice i 
JOIN customer c ON i.customer_id = c.customer_id;

-- 3.
SELECT c.first_name AS c_first_name, c.last_name AS c_last_name, e.first_name AS csupport_first_name, e.last_name AS csupport_last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- 4.
SELECT al.title AS title, ar.name AS artist
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

