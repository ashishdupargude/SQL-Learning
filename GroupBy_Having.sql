USE startersql;

SELECT gender AS "Gender", AVG(salary) AS "Average Salary" , COUNT(*) AS "count"

FROM users WHERE id< 5000 GROUP BY gender
HAVING AVG (salary)>61000 AND COUNT(*) <19 ; 




SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL 
GROUP BY referred_by_id
HAVING COUNT(*) >1;

-- SELECT * FROM users;


SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH rollup;


SELECT gender AS "gender" , AVG(salary) AS "Avgrage Salary", COUNT(*) AS 'count'
FROM users WHERE id< 5000 GROUP BY gender WITH rollup;


