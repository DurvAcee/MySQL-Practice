-- 1. from cust table, select first name & phone number of all females who have a last name of bluth

select * from customers;

select first_name, phone_number from customers
where gender = 'F'
and last_name = 'Bluth';

-- 2. from products table, select name for all prod that have a price greater than 3.00 or a coffee origin of sri lanka

select * from products;

select name from products
where price > 3.00
or coffee_origin = 'Sri Lanka';


-- 3. how many male customers don't have a phone number entered into the customers table ?

select * from customers;

select count(*) from customers
where phone_number is null
and gender = 'M';