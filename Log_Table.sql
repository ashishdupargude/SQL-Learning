USE startersql;

CREATE TABLE user_log (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
name VARCHAR(100),
create_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- USE startersql;

-- DESCRIBE user_log;