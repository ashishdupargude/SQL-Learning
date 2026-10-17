
USE startersql;

SELECT name, salary, 
       CASE 
           WHEN salary > 70000 THEN 'High'
           WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM users;

SELECT 
    CASE 
        WHEN salary > 70000 THEN 'High'
        WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    COUNT(*) AS user_count
FROM users
GROUP BY salary_category;


SELECT 
    SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) AS male_count,
    SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS female_count
FROM users;

SELECT 
    SUM(CASE WHEN gender = 'Male' THEN salary ELSE 0 END) AS total_male_salary,
    SUM(CASE WHEN gender = 'Female' THEN salary ELSE 0 END) AS total_female_salary
FROM users;


SELECT COUNT(*) AS high_earners_count
FROM users
WHERE salary > 60000;



SELECT name, salary,
       CASE 
           WHEN salary >= 60000 THEN 'Eligible'
           ELSE 'Not Eligible'
       END AS eligibility_status
FROM users;



SELECT gender, COUNT(*) AS user_count
FROM users
WHERE salary > 60000
GROUP BY gender;

SELECT COUNT(*) AS users_in_range
FROM users
WHERE salary BETWEEN 40000 AND 70000;

SELECT 
    COUNT(*) AS total_users,
    SUM(CASE WHEN salary > 70000 THEN 1 ELSE 0 END) AS high_salary_users,
    SUM(CASE WHEN salary < 40000 THEN 1 ELSE 0 END) AS low_salary_users
FROM users;
