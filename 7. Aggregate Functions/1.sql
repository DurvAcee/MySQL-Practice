-- Aggregate functions

use cinema_booking_system;

select * from customers;

-- Count 
select count(*) from customers;
select count(first_name) from customers;

select count(*) from customers
where last_name = 'Smith';

select count(*) from customers
where first_name is NULL;

-- Sum
select * from rooms;
select sum(no_seats) from rooms;

select sum(no_seats) from rooms
where id > 1;

-- Min and Max
select * from films;

select max(length_min) from films;
select min(length_min) from films;

-- Average
select avg(length_min) from films;

select avg(length_min) from films
where length_min > 120;