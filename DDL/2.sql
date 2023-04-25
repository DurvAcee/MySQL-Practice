-- 1. Alter table - Add / drop columns from table
select * from products;

alter table products
add column coffee_origin varchar(30);

alter table products
drop column coffee_origin;

-- 2. Delete / Drop table
create table test (
	id int auto_increment primary key,
	name varchar(30),
    age int
);

show tables;

drop table test;

-- 3. Truncate table ( delete values from table without deleting the table itself. )
truncate table test;