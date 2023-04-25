use coffe_store;
select * from orders;
select * from customers;
select * from products;

-- 1. select order id & customer phone number for all orders of product d 4
select o.id, c.phone_number from orders o
join customers c on c.id = o.customer_id
where o.product_id = 4;

-- 2. select product name, order time for filter coffees sold between january 15th 2017 and february 14th 2017
select p.name, o.order_time from products p
join orders o on o.product_id = p.id
where p.name = 'Filter'
and o.order_time between '2017-01-15' and '2017-02-14';

-- 3. select the product name and price and order time for all orders from females in january 2017
select p.name, p.price, o.order_time from products p
join orders o on o.product_id = p.id
join customers c on c.id = o.customer_id
where c.gender = 'F'
and o.order_time between '2017-01-01' and '2017-01-31';