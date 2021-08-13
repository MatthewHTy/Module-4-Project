-- Artist Table
-- 1.
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- 2. 
SELECT * FROM artist WHERE name LIKE 'Black%';

-- 3.
SELECT * FROM artist WHERE name LIKE '%Black%';

-- Employee Table
-- 1.
SELECT MAX(birth_date) from employee;

-- 2.
SELECT MIN(birth_date) from employee;

-- Invoice Table
-- 1.
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

-- 2.
SELECT AVG(total) FROM invoice;


-- Join Queries
-- 1.
