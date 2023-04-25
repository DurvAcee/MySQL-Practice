use cinema_booking_system;

-- 1. How many bookings did customer id 10 make
select * from customers;

select count(*) from bookings 
where customer_id = 10;

-- 2. count number of screenings for blade runner 2049 in october 2017
select * from screenings;
select * from films;

select count(*) from screenings s
join films f on f.id = s.film_id
where s.start_time between '2017-10-01' and '2017-10-31'
and f.name = 'Blade Runner 2049';

-- 3. count number of unique customers who made a booking for october 2017
select * from customers;
select * from bookings;

select count(distinct(customer_id)) from bookings; 