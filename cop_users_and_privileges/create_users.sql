SHOW DATABASES;

-- syntax
-- CREATE USER <username>@<domain> IDENTIFIED BY <password>
CREATE USER will@localhost IDENTIFIED BY 'pass123';

-- show users
SELECT * FROM MYSQL.user;

