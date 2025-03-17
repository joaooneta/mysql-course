CREATE DATABASE pet_shop;

USE pet_shop;

CREATE TABLE cats (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
);
DESC cats;

INSERT INTO cats(name, age)
VALUES ('Jetson', 7),
	   ('Cat 2', 2),
	   ('Cat 3', 3);

SELECT * FROM cats;

CREATE TABLE people (
	id INT AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    last_name VARCHAR(20) NOT NULL DEFAULT 'person',
	age INT NOT NULL DEFAULT 99,
    PRIMARY KEY(id)
);
DESC people;

INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

INSERT INTO people(first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42);

INSERT INTO people(first_name, last_name, age)
VALUES ('Linda', 'Belcher', 45),
	   ('Phillip', 'Frond', 38),
       ('Calvin', 'Fischoeder', 70);

SELECT * FROM people;

DROP TABLE people;

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT "employed"
);

DROP DATABASE pet_shop;