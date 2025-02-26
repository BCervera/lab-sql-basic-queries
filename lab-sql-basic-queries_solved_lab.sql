USE sakila;
SHOW DATABASES;

SHOW TABLES;

SELECT * FROM actor;

SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM staff;

SELECT 
    (SELECT COUNT(*) FROM inventory) AS available_for_rent,
    (SELECT COUNT(*) FROM rental) AS rented_films;
    
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

SELECT * FROM actor WHERE first_name = 'SCARLETT';

SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';