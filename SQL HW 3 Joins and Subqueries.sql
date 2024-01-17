-- SQL 3 HW Joins and Subqueries Lorenzo Resendiz

-- 1. List all customers who live in Texas (use JOINs) --

select * from customer;

select * from address;

select customer.customer_id, customer.first_name, customer.last_name, address.district
from customer
join address on customer.address_id = address.address_id
where address.district = 'Texas';
-- Answer: 5 total customers that love in Texas --


-- 2. Get all payments above $6.99 with the Customer's Full Name

select * from payment;

select * from customer;

select customer.first_name, customer.last_name, payment.payment_id, payment.amount
from customer
join payment on customer.customer_id = payment.customer_id 
where payment.amount > 6.99;
-- 35 total customers with payments above 6.99 with customer full name --


-- 3. Show all customers names who have made payments over $175(use subqueries)

select * from customer;

select * from payment;

select first_name, last_name
from customer
where customer_id in(

select customer_id
from payment
where amount > 175
);
-- Answer: 3 customers with payments over $175 --


-- 4. List all customers that live in Nepal (use the city table)

select * from customer;

select customer.customer_id, customer.first_name, customer.last_name
from customer
join address on customer.address = address.address 
join city on address.city_id = city.city_id 
join country on city.country_id = country.country_id 
where country.country = 'Nepal';
-- Answer: No customers in Nepal


-- 5. Which staff member had the most transactions?

select * from staff;

select staff.staff_id, staff.first_name, staff.last_name, count(payment.payment_id) as transaction_count
from staff
join payment on staff.staff_id = payment.staff_id 
group by staff.staff_id, staff.first_name, staff.last_name 
order by transaction_count desc
limit 1;
-- Answer Jon Stephens had the most transactions --


-- 6. How many movies of each rating are there?

select * from film;

select rating, COUNT(film_id) AS film_count
from film
group by rating;
-- Answer: NC-17 - 209, G - 178, PG-13 - 224, PG - 194, R - 196 --


-- 7. Show all customers who have made a single payment above $6.99 (Use Subqueries)

select * from customer;

select customer_id, first_name, last_name
from customer
where customer_id IN(

select customer_id
from payment
group by customer_id 
having count (payment_id) = 1 and max(amount) > 6.99
);
-- Answer: 1 customer with a single payment above 6.99 --


-- 8. How many free rentals did our stores give away?

select * from rental;

select * from payment;

 select rental_id
from rental
where rental_id IN(

select rental_id
from payment
group by rental_id 
having count (amount) = 0
);

-- Answer: 0 free rentals







