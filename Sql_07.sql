USE startersql;

-- SELECT * FROM users;
-- SELECT COUNT(*) FROM users WHERE gender = 'female';
-- select min(salary) as min_salary, max(salary) as max_salary from users;


select sum(salary) as total_salary from users;
select  gender, avg(salary) as avg_salary from users group by gender;
select avg(salary) as avg_salary , gender from users group by gender;
select name, length(name) as name_len from users;
select id, gender, lower(name) as lower,concat(lower(name),"5677") as username,year(date_of_birth) as yob,length(name) as name_len from users;

 select name, datediff(curdate(), date_of_birth) as days from users;
 
--  set autocommit = 0;
 select * from users;
 commit;
 delete from users where id=6;
 rollback;
 delete from users where id=5;
 commit;
 SELECT * FROM users LIMIT 5;
 
 SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
 
 SELECT * FROM users ORDER BY salary DESC;
 
 SELECT * FROM users WHERE salary BETWEEN 70000 AND 80000;
 
 SELECT * FROM users;
 UPDATE users SET name = 'Alice' WHERE id = 1; 
 UPDATE users SET name = 'Aarav' WHERE id = 1;
 update users  set name = 'Ashish' , email = 'ashish0-8@gmail.com' where id = 26;
 
update users set salary = salary + 100 where salary < 60000 and id is not null;
SELECT COUNT(*) FROM users WHERE gender = 'Female';
SELECT name, YEAR(date_of_birth) AS birth_year FROM users;

SELECT id, MOD(id, 2) AS remainder FROM users;

select name, gender, If(gender = 'Female','Yes','No') as is_female from users;
SET autocommit = 1;
delete from users where id = 26; 