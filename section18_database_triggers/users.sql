CREATE DATABASE DB_trigger_demo;
USE DB_trigger_demo;

CREATE TABLE users(
    username VARCHAR(100),
    age INT
);

CREATE TABLE userlog(
    username VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);


-- sample dataset
INSERT INTO users(username, age) VALUES 
('Adam', 15),
('Brain', 30);