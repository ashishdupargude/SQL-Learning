USE startersql;
-- select * from users where name like '_a_h%'

SELECT * FROM users
ORDER BY id
-- LIMIT 5 ;
-- LIMIT 15 OFFSET 3;
LIMIT 3,15;


SELECT DISTINCT gender FROM users;

SELECT * FROM addresses;
-- truncate table addresses;

