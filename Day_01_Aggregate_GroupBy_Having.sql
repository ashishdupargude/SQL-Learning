USE startersql;

SELECT  COUNT(*)  FROM users;
SELECT SUM(salary)  FROM users;

SELECT AVG(salary) FROM users;

SELECT MAX(salary) , MIN(salary) FROM users;

SELECT gender , COUNT(*)
FROM users
GROUP BY gender;

SELECT gender, AVG(salary)
 FROM users
 GROUP BY gender;


