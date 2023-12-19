use sakil;

-- 1) Display all available tables in the Sakila database.
show tables;
show databases;

-- 2) Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;

-- 3) Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name as 'LANGUAGE' from sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
from staff;

-- 4) Retrieve unique release years.
select distinct release_year from film;

-- 5) Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select count(*) from store;

-- 5.2 Determine the number of employees that the company has.
select count(*) from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
-- "request information is not available in film table" so we modified the question as "count of distinct film available in inventory".
select count(distinct film_id) from inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) from actor;

-- 6)Retrieve the 10 longest films.
select title, length from film order by length desc limit 10;

-- 7) Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = 'SCARLETT';

-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
SELECT * from film where title LIKE '%ARMAGEDDON' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
select count(*) as 'count_of_films_with_behind_the_scenes' from film where special_features LIKE '%Behind the scenes%';
