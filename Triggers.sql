USE startersql;

-- delimiter $$
-- CREATE TRIGGER after_user_insert
-- AFTER INSERT ON users
-- FOR EACH ROW
-- BEGIN

-- INSERT INTO user_log(user_id, name)
-- VALUE(new.id, new.name);

-- END $$

-- DELIMITER ;

-- insert into users (name,email,gender,date_of_birth, salary) 
-- values ('Rohan','rohan2@gmail.com','Male','2000-07-07', 56000 );

SELECT * FROM user_log;

DROP TRIGGER IF EXISTS after_user_insert;
