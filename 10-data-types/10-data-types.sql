CREATE DATABASE test;

USE test;

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

CREATE TABLE captions (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP
);

CREATE TABLE captions2 (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT CURTIME();

SELECT CURDATE();

SELECT NOW();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM people;

SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people;

SELECT 
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime)
FROM people;

SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM people;

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

CREATE TABLE inventory (
	item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(CURDATE());

SELECT DAYNAME(CURDATE());

SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

CREATE TABLE tweets(
	tweet VARCHAR(255),
    username VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW()
);

DROP DATABASE test;