USE startersql;
-- SELECT AVG (salary) FROM users;
-- select * from users where salary < (SELECT AVG (salary) FROM users);

SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN(
SELECT id FROM users WHERE salary < (SELECT AVG (salary) FROM users)
);


SELECT name, salary,
(SELECT AVG (salary) FROM users ) AS average_salary
FROM users;



