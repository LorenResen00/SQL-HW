-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2 (Query Shown Below)
select *
from actor; 

select first_name, last_name
from actor
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer: 5567 (Query Shown Below)
Select *
from payment;

select COUNT(amount)
from payment
where amount between 3.99 AND 5.99;

--This Shows up as '0' in my count!- Need Help 

-- 3. What film does the store have the most of? (search in inventory)
-- Answer: Film 200 with 9 (Query Shown Below)

select *
from inventory;

select film_id,inventory_id
from inventory;

--Need Help finding!

-- 4. How many customers have the last name ‘William’?
-- Answer: 0 (Query Shown Below)

select *
from customer;

select last_name
from customer
where last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer: 1-8040 (Query Shown Below)

--Need Help!

-- 6. How many different district names are there?
-- Answer: 378 (Query Shown Below)

--Need Help!

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508 - 15 actors (Query Shown Below)

--Try then see if Need Help

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13 (Query Shown Below)

select *
from customer

SELECT first_name,last_name,customer_id
FROM customer
WHERE last_name LIKE '%es';

--Need Check to make sure it's accurate!

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3 (Query Shown Below)

--Need Help

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- Answer: 25 ratings, PG-13 has most (Query Shown Below)

--Need Help
