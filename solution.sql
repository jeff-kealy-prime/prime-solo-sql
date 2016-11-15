CREATE TABLE syntax_practice (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33);

SELECT *
FROM syntax_practice;

DELETE FROM syntax_practice;

--question 1
SELECT username
FROM syntax_practice
WHERE city='chicago';

--question 2
SELECT username
FROM syntax_practice
WHERE username like '%a%';

--question 3
UPDATE syntax_practice
SET account_balance = 10
WHERE transactions_attempted=0 AND account_balance=0;

--question 4
SELECT username
FROM syntax_practice
WHERE transactions_attempted >= 9;

--question 5
SELECT username, account_balance
FROM syntax_practice
ORDER BY account_balance DESC
LIMIT 3;

--question 6
SELECT username, account_balance
FROM syntax_practice
ORDER BY account_balance ASC
LIMIT 3;

--question 7
SELECT username, account_balance
FROM syntax_practice
WHERE account_balance >100;

--question 8
INSERT INTO syntax_practice
(username, city, transactions_completed, transactions_attempted, account_balance) 
VALUES ('JEFF', 'MINNEAP', 1, 1, 1000000355.80);

--question 9
DELETE FROM syntax_practice
WHERE city = 'miami' OR city='phoenix' AND transactions_completed < 5;
