use startersql;
 
 SHOW INDEXES FROM users;
 create index idx_email on users(gender);
 
 create index idx_gender_salary on users(gender, salary);
 -- select * from users where email="aarav@exmple.com" AND gender ="Male";
 
 DROP INDEX idx_email ON users;
 