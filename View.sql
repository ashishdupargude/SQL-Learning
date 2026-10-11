
USE startersql;
-- CREATE VIEW high_salary_users AS
-- SELECT id, name, salary
-- FROM users
-- WHERE salary > 70000;

-- SELECT * FROM high_salary_users;

-- SELECT * FROM high_salary_users;

-- UPDATE users
-- SET salary = 72000
-- WHERE name = 'Raj'

CREATE VIEW rich_users AS
SELECT *
 FROM users
 WHERE salary > 70000;  
UPDATE  users SET salary = 30000 WHERE id =2 ;

SELECT name , email, salary FROM rich_users;

DROP VIEW rich_users;

