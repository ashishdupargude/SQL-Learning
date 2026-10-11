CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;