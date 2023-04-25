-- Exercise 3
-- 1. From customers, select distinct last names and order alphabetically from a-z

select distinct last_name from customers
order by last_name asc;

-- 2. From orders, select first 3 orders placed by customer with 1, in feb 2017

select * from orders
where customer_id = 1
and order_time between '2017-02-01' and '2017-02-28'
order by order_time
limit 3;

-- 3. From products, select name, price & coffee origin but rename price to retail price in results table

select name, price as retail_price , coffee_origin from products;