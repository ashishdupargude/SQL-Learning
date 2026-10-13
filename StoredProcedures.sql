USE startersql ;
SELECT * FROM users;


-- DELIMITER $$
-- CREATE PROCEDURE AddUser(
-- In p_name varchar(100),
-- in p_email varchar(100),
-- in p_gender ENUM ('Male', 'Female','Other' ),
-- in p_dob DATE,
-- in p_salary INT
-- )


-- BEGIN
-- Insert into users (name ,email ,gender,date_of_birth,salary)
-- values (p_name, p_email,p_gender,p_dob,p_salary);
-- select * from users;
-- END $$

-- DELIMITER ;

CALL AddUser('John2', 'john2@gamil.com','Male','2000-07-28','70000' );
