use cinema_booking_system;

-- 1. select customer id and count number of reserved seats grouped by customers for october 2017
select * from reserved_seat;
select * from bookings;
select * from customers;

select b.customer_id, count(rs.id) from bookings b
join reserved_seat rs on b.id = rs.booking_id
group by b.customer_id;

-- 2. select the film name and count the number of screenings for each film that is over 2 hours long
select * from films;
select * from screenings;

select f.name, f.length_min, count(s.id) from films f
join screenings s on f.id = s.film_id
group by f.name, f.length_min
having f.length_min > 120;