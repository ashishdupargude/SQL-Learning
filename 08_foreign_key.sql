use startersql;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (

id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
street VARCHAR(255),
city VARCHAR(100),
state VARCHAR(100),
pincode VARCHAR(10),
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE


);

insert into addresses (user_id, street, city,state,pincode)
values
(1, 'MG Road', 'Pune', 'Maharashtra', '411001'),
(2, 'FC Road', 'Pune', 'Maharashtra', '411004'),
(3, 'Baner Road', 'Pune', 'Maharashtra', '411045'),
(4, 'Kothrud Road', 'Pune', 'Maharashtra', '411038'),
(6, 'Hinjewadi Road', 'Pune', 'Maharashtra', '411057'),
(7, 'Viman Nagar Road', 'Pune', 'Maharashtra', '411014'),
(8, 'Aundh Road', 'Pune', 'Maharashtra', '411007'),
(9, 'FC Road', 'Pune', 'Maharashtra', '411005'),
(10, 'Hadapsar Road', 'Pune', 'Maharashtra', '411028'),
(11, 'Wakad Road', 'Pune', 'Maharashtra', '411057'),
(12, 'Kharadi Road', 'Pune', 'Maharashtra', '411014'),
(13, 'Shivaji Nagar', 'Pune', 'Maharashtra', '411005'),
(14, 'Camp Road', 'Pune', 'Maharashtra', '411001'),
(15, 'Pashan Road', 'Pune', 'Maharashtra', '411021'),
(16, 'Kalyani Nagar', 'Pune', 'Maharashtra', '411006'),
(17, 'Karve Road', 'Pune', 'Maharashtra', '411038'),
(18, 'Deccan Road', 'Pune', 'Maharashtra', '411004'),
(19, 'Bavdhan Road', 'Pune', 'Maharashtra', '411021'),
(20, 'Wadgaon Road', 'Pune', 'Maharashtra', '411041'),
(21, 'Sinhagad Road', 'Pune', 'Maharashtra', '411041'),
(22, 'Kondhwa Road', 'Pune', 'Maharashtra', '411048'),
(23, 'Bibwewadi Road', 'Pune', 'Maharashtra', '411037'),
(24, 'Dhanori Road', 'Pune', 'Maharashtra', '411015'),
(25, 'Yerawada Road', 'Pune', 'Maharashtra', '411006'),
(28, 'Solapur Road', 'Pune', 'Maharashtra', '411013');


-- INSERT INTO addresses (user_id, street, city, state, pincode)
-- VALUES
-- (99, 'Test Road', 'Pune', 'Maharashtra', '411001');

-- INSERT INTO users
-- (id, name, email, gender, date_of_birth, salary)
-- VALUES
-- (28, 'PP', 'PP@08@gmail.com', 'Male', '1999-09-09', 50000.00);
-- delete from users where id=28;
select * from users;

SELECT * FROM addresses;