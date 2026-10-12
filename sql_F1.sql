-- RENAME TABLE coustomers To users
-- ALTER TABLE users ADD column is_active BOOLEAN DEFAULT TRUE;

-- SELECT * from users;
-- ALTER TABLE users DROP COLUMN is_active;
-- ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;
-- ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;
-- USE startersql;
-- ALTER TABLE users MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY AFTER date_of_birth;

-- ALTER TABLE users
-- MODIFY COLUMN date_of_birth DATE FIRST;
-- ALTER TABLE users MODIFY COLUMN id INT AUTO_INCREMENT AFTER date_of_birth;


INSERT INTO users 
(date_of_birth,name, gender, email)
VALUES
('2015-07-28','PM2','Female','abc2@gmail,.com'),
('2015-08-28','PM3','Female','abc3@gmail,.com'),
('2015-09-28','PM4','Female','abc4@gmail,.com');

USE startersql;

SELECT * FROM users;

SELECT * FROM users WHERE gender = 'male';

SELECT * FROM users WHERE gender <> 'female';

SELECT * FROM users WHERE date_of_birth >'1999-01-01';
SELECT * FROM users WHERE id > 10;

SELECT * FROM users WHERE id > 5;

SELECT * FROM users WHERE id <20;

SELECT * FROM users WHERE date_of_birth IS NULL;

SELECT * FROM users WHERE date_of_birth BETWEEN '1999-01-01' AND '2000-01-01';

SELECT * FROM users WHERE gender IN ('male','other')

SELECT * FROM users WHERE name LIKE 'A%'; 

select * from users where name like '%sh%';

SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';

SELECT * FROM users ORDER BY date_of_birth ASC;


SELECT * FROM users ORDER BY name DESC;



