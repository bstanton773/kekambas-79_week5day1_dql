-- HELLO WORLD SQL Query - SELECT ALL RECORDS FROM ACTOR TABLE
select * from actor;

select * from film;


-- To limit columns, use column name that you would like to see
select release_year, title, length, rating, film_id
from film;


-- TO begin filtering rows, we can use the WHERE clause
select *
from actor
where first_name = 'Nick';

-- Using WHERE with LIKE 
select *
from actor
where first_name LIKE 'Nick';


-- Using WHERE with LIKE and wildcard (%)
select *
from actor
where first_name like 'J%';


-- Using WHERE with LIKE and single character wildcart (_)
select *
from actor
where first_name like 'J__';

-- Combining wildcards
select *
from actor
where first_name like 'K__%';



-- Comparative Operators:
-- Greater Than (>) -- Less Than (<)
-- Greater Than or Equal (>=) -- Less Than or Equal (<=)
-- Not Equal (<>)


-- WHENEVER LOOKING AT NEW TABLE, START WITH SELECT *
select * from payment;


-- Query for data that shows payments above $2
select customer_id, amount
from payment 
where amount > '2.00';



select *
from payment p 
where amount <= 7.99;


select *
from payment
where amount <> 4.99;


-- BETWEEN AND
-- Query payments that are between 3 and 6
select *
from payment
where amount between 3.99 and 6.99; -- where amount >= 3.99 and amount <= 6.99


-- OR Clause
select customer_id, payment
from payment 
where amount > 7 OR amount < 2;


-- Ordering the rows:
-- ORDER BY column_name (ASC[default]/DESC)
select *
from payment
where amount between 3.99 and 6.99
order by amount DESC;


-- SQL Aggregations -- SUM(), AVG(), COUNT(), MIN(), MAX()
select SUM(amount)
from payment
where amount between 3.99 and 6.99;

select AVG(amount)
from payment
where amount between 3.99 and 6.99;

select MIN(amount)
from payment
where amount between 3.99 and 6.99;

select MAX(payment_date)
from payment
where amount between 3.99 and 6.99;


-- Query to count how many payments there were greater than 5.99
select COUNT(*)
from payment
where amount > 5.99;

-- How many unique payment values are greater than 5.99
select COUNT(distinct amount)
from payment 
where amount > 5.99;


select MAX(amount) as highest_paid_rental
from payment;


select payment_id as abc, amount
from payment;



-- GROUP BY CLAUSE
select amount, COUNT(*)
from payment 
group by amount;


select customer_id, SUM(amount)
from payment
group by customer_id 
order by SUM(amount) DESC;


select customer_id, COUNT(*) as total_payments
from payment 
where amount > 5.99
group by customer_id 
order by total_payments DESC;


-- HAVING CLAUSE
-- Having is to group by as Where is to from 
select customer_id, COUNT(*) as total_payments
from payment 
where amount > 5.99
group by customer_id 
having COUNT(*) >= 10
order by total_payments DESC;



-- LIMIT AND OFFSET CLAUSE
select *
from actor
offset 10 -- start at record 11
limit 10; -- only display the first 10 records (11-20 in this case)



-- FULL SYNTAX (MINUS JOINS)
select
from 
--join
--on
where 
group by 
having
order by
offset 
limit


