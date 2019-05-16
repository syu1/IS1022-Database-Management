SELECT a_film.title,a_film.rental_rate,a_film.replacement_cost FROM inventory a_inventory
JOIN film a_film ON a_film.film_id = a_inventory.film_id
WHERE a_inventory.inventory_id in
(SELECT rental.inventory_id FROM rental WHERE MONTH(return_date) = 5 AND YEAR(return_date) = 2005);

SELECT a_film.title,a_film.rental_rate FROM inventory a_inventory
JOIN film a_film ON a_film.film_id = a_inventory.film_id
WHERE a_inventory.inventory_id =
(SELECT MAX(amount) FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
WHERE rental.inventory_id);

SELECT a_film.title,a_film.rental_rate,MAX(a_payment.amount)
FROM film a_film
LEFT JOIN inventory a_inventory ON a_film.film_id = a_inventory.film_id
JOIN rental a_rental on a_rental.inventory_id = a_inventory.inventory_id
JOIN payment a_payment on a_payment.rental_id = a_rental.rental_id




   


 