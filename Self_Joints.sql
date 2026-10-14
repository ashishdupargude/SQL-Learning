USE startersql;


ALTER TABLE users
 ADD COLUMN referred_by_id INT; 
 
-- SELECT * FROM users;

UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3,13,14,15,16,17,20); -- User 1 referred Users 2 and 3
UPDATE users SET referred_by_id = 2 WHERE id = 4; -- User 2 referred User 4

SELECT 
a.id,
a.name AS user_name,
b.name AS refereed_by_name
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

SELECT * FROM users;