-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2 (Query Shown Below)
select *
from actor; 

select first_name, last_name
from actor
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer: 0 (Query Shown Below)

Select *
from payment
order by amount desc;

select COUNT(amount)
from payment
where amount between 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- Answer: Film 193 with 8 (Query Shown Below)

select *
from inventory;

SELECT film_id , COUNT(*) AS total_movies
FROM inventory
GROUP BY film_id 
ORDER BY total_movies desc;

-- 4. How many customers have the last name ‘William’?
-- Answer: 0 (Query Shown Below)

select *
from customer;

select last_name
from customer
where last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer: 2 - 7,304 (Query Shown Below)

select *
from payment; 

select COUNT (rental_id) as number_of_rental_sales, staff_id 
from payment
group by staff_id 
order by COUNT (rental_id) desc;

-- 6. How many different district names are there?
-- Answer: 378 (Query Shown Below)

select * 
from address;

select COUNT(distinct district)
from address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508 - 15 actors (Query Shown Below)

select *
from film_actor;

select COUNT(actor_id), film_id
from film_actor
group by film_id
order by COUNT (actor_id) DESC;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 21 (Query Shown Below)

select *
from customer

SELECT first_name,last_name,customer_id
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3 (Query Shown Below)

select *
from payment;

select COUNT (amount) as number_of_payments
from payment
where customer_id between 380 and 430
group by amount
having COUNT (amount) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5 rating categories, PG-13 has most ratings at 224 (Query Shown Below)

select *
from film;

SELECT COUNT(DISTINCT rating) AS number_of_rating_categories
FROM film;

SELECT rating, COUNT(*) AS total_movies
FROM film
GROUP BY rating
ORDER BY total_movies desc;

