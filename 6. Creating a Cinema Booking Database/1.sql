show databases;

-- Creating New Database
create database cinema_booking_system;

use cinema_booking_system;

-- Creating Films table
create table films (
	id int primary key auto_increment,
    name varchar(45) not null unique,
    lenght_min int not null
);

show tables;

select * from films;

describe films;

-- Creating customers table
create table customers (
    id int primary key auto_increment,
    first_name varchar(45),
    last_name varchar(45) not null,
    email varchar(45) not null unique
);

show tables;

describe customers;

-- Creating Rooms table

create table rooms (
    id int primary key auto_increment,
    name varchar(45) not null,
    no_seats int not null
);

show tables; 

describe rooms;

-- Creating Screenings table
create table screenings (
    id int primary key auto_increment,
    film_id int not null,
    room_id int not null,
    start_time datetime not null,
    foreign key(film_id) references films(id),
    foreign key(room_id) references rooms(id)
);

show tables; 

describe screenings;

-- Creating seats table
create table seats (
	id int primary key auto_increment,
    rown char(1) not null,
    number int not null,
    room_id int not null,
    foreign key(room_id) references rooms(id)
);

show tables;

describe seats;

-- Creating bookings table
create table bookings (
	id int primary key auto_increment,
    screening_id int not null,
    customer_id int not null,
    foreign key (screening_id) references screenings(id),
    foreign key (customer_id) references customers(id)
);

show tables;

describe bookings;

-- Creating reserved_seat table
create table reserved_seat (
	id int primary key auto_increment,
    booking_id int not null,
    seat_id int not null,
    foreign key (booking_id) references bookings(id),
    foreign key (seat_id) references seats(id)
);

show tables;

describe reserved_seat;