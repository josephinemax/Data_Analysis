--select statement(select and from)
Select * from actor;
select * from address;
select * from film;

--Return the title,description, release year and rating
select title,description,release_year, rating
from film;

--Return the first and last name of actors
select first_name, last_name
from actor;

--Return the address,district and postal code
select address, district, postal_code
from address;

--select distinct( to return unique details)
select * from film;

select distinct rating
from film;

--Distinct replacement cost
select distinct replacement_cost
from film;

--Return the distict amount
select * from payment;

--select where statement (The where clause is used to filter your query based on a condition)
select * from actor;

select actor_id, first_name, last_name
from actor
where actor_id = 105;

select actor_id, first_name, last_name
from actor
where actor_id in (1,10,25,108,150,200)

select * from film
--return the title, release year,length and rental_rate of R rated movies
select title,release_year, length, rating
from film
where rating ='R';

select title, description, release_year, length, rating
from film
where length <= 60

-- select count statement
select * from film;

select count (*)from film
select count (*)from customer

select title,release_year, length, rating
from film
where rating ='R';

--limit
select * from rental limit 15;

--order by statement (arrange your result in ascending or descending order)
select* from customer;

select first_name,last_name,email
from customer
order by first_name asc;

select * from payment
--top 10 customers that spent the most money
select customer_id, amount
from payment
order by amount desc
limit 10;
-- Get the titles of the movies with film id 1-5
select * from film;

select film_id, title
from film
order by film_id asc
limit 10;

--between (lower value to higher value)
select * from payment

select customer_id, staff_id, amount
from payment
where amount between 2 and 5
order by amount desc;

select count (*)
from payment
where amount between 5 and 7

-- in statement (check for value in a list)
select * from customer

select first_name, last_name, email
from customer
where first_name in ('Mary','Maria','Micheal');

--like statement
select * from customer

select first_name, last_name, email
from customer
where first_name ilike 'ja%';

--Aggregate functions(count, min,max,average and sum)
select * from payment;
select count (*) from payment

select min (amount) from payment

select max(amount) from payment
select round(avg(amount),2) from payment
select sum (amount) from payment

--- Group by statement(group your results and also work with aggregate functions)

select * from film;

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc
limit 10;

-- having clause ( is used with the conjunction with group by)

select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount)>=180
order by sum(amount) desc;

select * from customer;

select distinct store_id 
from customer;

select store_id, count (customer_id)
from customer
group by store_id
having count (customer_id) >300;

--As statement 
select * from customer;

select first_name As Name, last_name As Surname, email As mailing_details
from customer;

select * from payment;
select payment_id, sum(amount) As Total
from payment
where payment_id = 7
group by payment_id;