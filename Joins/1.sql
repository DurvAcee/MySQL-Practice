use coffe_store;

select * from products;
select * from orders;

-- Inner Join
select products.name, orders.order_time from orders
inner join products on orders.product_id = products.id;

-- Inner join with minified code (inner join ~ join)
select p.name, o.order_time from orders o
join products p on o.product_id = p.id;


select p.name, o.order_time from orders o
join products p on o.product_id = p.id
where o.product_id = 5
order by o.order_time;


-- Left join
select * from customers;
select * from orders;

update orders
set customer_id = NULL
where id = 1;

select o.id, c.phone_number, c.last_name, o.order_time from orders o
left join customers c on o.customer_id = c.id
order by o.order_time
limit 10;

-- Reversing table position
select o.id, c.phone_number, c.last_name, o.order_time from customers c
left join orders o on  c.id = o.customer_id
order by o.order_time
limit 10;


-- Right Join
select o.id, c.phone_number, c.last_name, o.order_time from orders o
right join customers c on o.customer_id = c.id
order by o.order_time
limit 10;

-- Re-Updating cust_id to 1 instead of null
update orders
set customer_id = 1
where id = 1;

