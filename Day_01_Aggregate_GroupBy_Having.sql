USE startersql;

SELECT  COUNT(*)  FROM users;
SELECT SUM(salary)  FROM users;

SELECT AVG(salary) FROM users;

SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary FROM users;

SELECT gender , COUNT(*)
FROM users
GROUP BY gender;

SELECT gender, AVG(salary)
 FROM users
 GROUP BY gender;


SELECT gender, AVG(salary)
FROM users
GROUP BY gender
HAVING AVG(salary) > 50000;

SELECT city, COUNT(*)
FROM addresses
GROUP BY city;

SELECT city , COUNT(*)
FROM addresses 
GROUP BY city
HAVING COUNT(*) > 2;

SELECT gender , COUNT(*) AS total_users, AVG(salary) AS avgrage_salary
FROM users
GROUP BY gender
ORDER BY avgrage_salary DESC;

