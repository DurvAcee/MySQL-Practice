-- distinct 
select distinct coffee_origin from products;

select distinct customer_id, product_id from orders
where order_time between '2017-02-01' and '2017-02-28';


-- Limit
select * from customers
limit 5 offset 5;

select * from customers
order by last_name
limit 10;

-- alias (change column name in the result set)
select name as coffee, price, coffee_origin as country from products;