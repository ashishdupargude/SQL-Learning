CREATE DATABASE IF NOT EXISTS startersql;

USE startersql;
select * from users;

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('Male','Female','other'),
date_of_birth DATE,
salary DECIMAL(10,2),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into users (name,email,gender,date_of_birth,salary)
values('PP','PP@08@gmail.com','male','1999-09-09','50000');
alter table users add constraint unique_email unique (email);

select count(*) from users where gender = 'Female';
-- select min(salary) as min_salary,MAX(salary) as max_salary from users;

select gender, sum(salary) as avg_salary from users group by gender;
alter table users add column is_active boolean default true;
alter table users drop column is_active;
alter table users modify column name varchar(150);

alter table users add constraint chk_dob check (date_of_birth > '1920-01-01');
insert into users (name, email,gender, date_of_birth,salary) 
values (null, 'ashish12@gmail,.com','male','1900-01-01','40000');



select * from users;