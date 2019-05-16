# Write a query that produces a list of documentary movies (where movie category is ‘Documentary’) and a 
#movie description contains the word ‘Drama’.  You will have to create a triple join between category, 
#film_category, and category tables.  Your result should contain the following columns with meaningful aliases:
#1.	Category Name
#2.	Film Title 
#3.	Film Description
#4.	Release Year
SELECT a_category.name, a_film.title,  a_film.description, a_film.release_year 
FROM film_category a_film_category
JOIN film a_film ON a_film.film_id = a_film_category.film_id
JOIN category a_category ON a_category.category_id = a_film_category.category_id
WHERE a_category.name = "Documentary" AND a_film.description like "%Drama%";

SELECT a_film.title,CONCAT(a_actor.first_name," ",a_actor.last_name)
FROM film_actor a_film_actor
JOIN film a_film ON a_film.film_id = a_film_actor.film_id
JOIN actor a_actor ON a_actor.actor_id = a_film_actor.actor_id
#GROUP BY a_actor.first_name,a_actor.last_name
WHERE a_actor.first_name = "JULIA" AND a_actor.last_name = "MCQUEEN";  

SELECT a_film.title,CONCAT(a_actor.first_name," ",a_actor.last_name)
FROM film_actor a_film_actor
JOIN film a_film ON a_film.film_id = a_film_actor.film_id
JOIN actor a_actor ON a_actor.actor_id = a_film_actor.actor_id
#GROUP BY a_actor.first_name,a_actor.last_name
WHERE a_film.title = "AMADEUS HOLY"; 

SELECT a_film.title,a_customer.first_name,a_customer.last_name
FROM customer a_customer
JOIN rental a_rental ON a_rental.customer_id = a_customer.customer_id
JOIN inventory a_inventory ON a_inventory.inventory_id = a_rental.inventory_id
JOIN film a_film ON a_film.film_id = a_inventory.film_id
WHERE first_name = "KATHLEEN" AND last_name = "ADAMS";

#1.Film most rented
#2.Most popular actor
#3.Average rental length



