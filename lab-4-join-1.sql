-- 1 How many films are there for each of the categories in the category table. Use appropriate join to write this query
use sakila;
SELECT distinct name AS genre, count(film_id) AS number FROM category AS c
JOIN film_category AS fm
ON c.category_id = fm.category_id
GROUP BY name
ORDER BY number DESC;

-- 2 Display the total amount rung up by each staff member in August of 2005

SELECT staff_id, sum(amount) AS total FROM payment
GROUP BY staff_id;


SELECT * FROM payment;

-- 3 Which actor has appeared in the most films?

SELECT actor_id, COUNT(actor_id) AS appearances FROM film_actor
GROUP BY actor_id
ORDER BY appearances DESC
LIMIT 1;

-- 4 Most active customer (the customer that has rented the most number of films)
SELECT * FROM rental;
SELECT customer_id, COUNT(customer_id) AS rentals FROM rental
GROUP BY customer_id
ORDER BY rentals DESC
LIMIT 1;

-- 5 Display the first and last names, as well as the address, of each staff member.
SELECT first_name, last_name, address FROM staff as s
JOIN address as a
ON s.address_id = a.address_id;

-- 6 List each film and the number of actors who are listed for that film

SELECT distinct f.title as TITLE, count(fa.film_id) AS ACTOR FROM film AS f
JOIN film_actor as fa
ON f.film_id = fa.film_id
GROUP BY f.title 
ORDER BY TITLE;

 /*
 7 Using the tables payment and customer and the JOIN command, list the total paid by each customer.
 List the customers alphabetically by last name.
 */

SELECT c.last_name AS Last_Name,p.customer_id AS Customer_ID, sum(p.amount) AS Paid FROM payment AS p
JOIN customer as c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY Last_Name ASC;

-- 8 List number of films per category









