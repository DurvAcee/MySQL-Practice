use cinema_booking_system;
show tables;

select * from films;
select * from customers;
select * from rooms;
select * from screenings;
select * from seats;
select * from bookings;
select * from reserved_seat;

-- changing column name that had a spelling mistake
describe films;
alter table films change `lenght_min` `length_min` int;

-- Inserting data
INSERT INTO films (name, length_min)
VALUES ('Blade Runner 2049',153),
('Dunkirk',106),
('Geostorm',121),
('Thor: Ragnarok',107),
('Jigsaw',116),
('The Death of Stalin',98),
('The Lego Ninjago Movie',101),
('Murder on the Orient Express',135),
('Paddington 2',88),
('Breathe',117),
('Blade Runner',127),
('Victoria and Abdul',112);
