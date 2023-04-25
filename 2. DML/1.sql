use coffe_store;

select * from products;

-- Insert data into table
insert into products (name, price, coffee_origin)
values ('Espresso',2.50,'Brazil');

-- Insert Multiple rows of data
insert into products (name, price, coffee_origin)
values ('Macchiato',3.00,'Brazil'), ('Cappuccino',3.5,'Csota Rica');

insert into products (name, price, coffee_origin)
values ('Latte',3.50,'Indonesia'),('Americano',3.00,'Brazil'),('Flat White',3.50,'Indonesia'),('Filter',3.00,'India');

-- Update values from table 
select * from products;

update products 
set coffee_origin = 'Srl Lanka'
where id = 7;

-- Update values without using PK
set sql_safe_updates = 0;

-- Update multiple values from single row
update products
set price = 3.25, coffee_origin = 'Ethiopia'
where name = 'Americano';

-- We can also update multiple rows in single update
update products
set coffee_origin = 'Colombia'
where coffee_origin = 'Brazil';