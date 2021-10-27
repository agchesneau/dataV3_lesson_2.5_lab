USE sakila;
-- 1
SELECT * FROM actor
WHERE first_name = 'Scarlett';
-- 2
SELECT COUNT(DISTINCT(inventory_id)), COUNT(DISTINCT(rental_id)) FROM rental;
-- 3
SELECT min(length) AS min_duration, max(length) AS max_duration FROM film;
-- 4
SELECT CONCAT(floor(AVG(length)/60),':',floor(AVG(length)%60)) FROM film;
-- 5
SELECT COUNT(DISTINCT(last_name)) FROM actor;
-- 6
SELECT DATEDIFF(max(rental_date), min(rental_date)) FROM rental;
-- 7
SELECT *, date_format(rental_date, '%M') AS 'month', date_format(rental_date, '%W') AS 'day'
FROM rental
LIMIT 20;
-- 8
SELECT *,date_format(rental_date, '%M') AS 'month', date_format(rental_date, '%W') AS 'day',
CASE
WHEN date_format(rental_date, '%W') IN ('Saturday', 'Sunday') THEN 'weekend'
-- WHEN date_format(rental_date, '%W') = 'Sunday' THEN 'weekend'
ELSE 'weekday'
END AS 'day_type'
FROM rental
LIMIT 20;
-- 9
SELECT Distinct(release_year) from film;
-- 10
SELECT title FROM film
WHERE title LIKE '%ARMAGEDDON%';
-- 11
SELECT title FROM film
WHERE title LIKE '%APOLLO';
-- 12
SELECT title FROM film
ORDER BY length DESC
LIMIT 10;
-- 13
SELECT title FROM film
WHERE special_features LIKE '%Behind the scenes%';