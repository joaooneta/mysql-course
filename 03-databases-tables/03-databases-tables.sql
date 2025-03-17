SHOW DATABASES;

CREATE DATABASE pet_shop;

USE pet_shop;

SELECT database();

CREATE TABLE cats (
	name VARCHAR(50),
	age INT
);

CREATE TABLE dogs (
	name VARCHAR(50),
	breed VARCHAR(50),
	age INT
);

SHOW TABLES;

SHOW COLUMNS FROM cats;
SHOW COLUMNS FROM dogs;

DESC cats;
DESC dogs;

DROP TABLE cats;

CREATE TABLE pastries (
	name VARCHAR(50),
    quantity INT
);

DESC pastries;

DROP TABLE pastries;

DROP DATABASE pet_shop;

