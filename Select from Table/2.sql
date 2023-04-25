use coffe_store;

select * from customers;

-- In keyword
-- select customers who have last name as either taylor, bluth or armstrong
select * from customers
where last_name in ('Taylor','Bluth','Armstrong');

select * from customers
where first_name not in ('Katie','John','George');

-- Between keyword
select product_id, customer_id, order_time from orders
where customer_id between 5 and 10;

select product_id, customer_id, order_time from orders
where order_time between '2017-01-01' and '2017-01-07';

select * from customers 
where last_name between 'C' and 'L';

-- Like keyword

select * from customers
where last_name like '%o%';

select * from customers
where last_name like 'w%';

select * from customers
where first_name like '%o%';

-- we can also use underscore 
select * from customers
where first_name like '_o_';

select * from products
where price like '3%';

use coffe_store;

-- Order By (default is asc) 
select * from products
order by price asc;

select * from products
order by price desc;

select * from customers
order by last_name asc;

select * from customers
order by last_name desc;

select * from orders
where customer_id = 1
order by order_time desc;



