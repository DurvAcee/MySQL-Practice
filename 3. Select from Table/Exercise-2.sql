-- Exercise
-- 1. from prod, select name & price of all prod with coffee_origin equal to colombia or indonesia, ordered by name from a to z

select name, price, coffee_origin from products
where coffee_origin in ('Colombia','Indonesia')
order by name asc;

-- 2. from orders, select all orders from february 2017 for customers id of 2,4,6 or 8

select * from orders
where order_time between '2017-02-01' and '2017-02-28'
and customer_id in (2,4,6,8);

-- 3. from customers, select fname, phone num of all customers who's last name contains the pattern 'ar'

select first_name, phone_number from customers
where last_name like '%ar%';



