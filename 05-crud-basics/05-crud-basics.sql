CREATE DATABASE pet_shop;

USE pet_shop;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
SELECT * FROM cats;

SELECT age FROM cats;

SELECT breed, age FROM cats;

SELECT name, age FROM cats WHERE age = 4;

SELECT * FROM cats WHERE name = 'Egg';

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT name, age FROM cats WHERE breed = "Tabby";

SELECT cat_id, age FROM cats WHERE cat_id = age;

SELECT cat_id as id, name FROM cats;

UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

UPDATE cats SET age = 14
WHERE name = 'Misty';

SELECT * FROM cats WHERE name = 'Jackson';
UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

SELECT * FROM cats WHERE name = 'Ringo';
UPDATE cats SET breed = 'British Shorthair'
WHERE name = 'Ringo';

SELECT * FROM cats WHERE breed = 'Maine Coon';
UPDATE cats SET age = '12'
WHERE breed = 'Maine Coon';

DELETE FROM cats 
WHERE name = 'Egg';

DELETE FROM cats;

DELETE FROM cats
WHERE age = 4;

DELETE FROM cats
WHERE age = cat_id;

DROP DATABASE pet_shop;