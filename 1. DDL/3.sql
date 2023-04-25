-- Creating new database & tables to use alter 
create database test;

use test;

create table addresses (
	id int,
    house_no int,
    city varchar(20),
    postcode varchar(7)
);

create table people (
	id int,
    first_name varchar(20),
    last_name varchar(20),
    address_id int
);

create table pets(
	id int,
    name varchar(20),
    species varchar(20),
    owner_id int
);

show tables;

-- SQL To add / drop primary key to a table 
describe addresses;

alter table addresses
add primary key (id);

alter table addresses
drop primary key;


describe addresses;
describe people;

-- Add foreign key to a table
alter table people
add constraint FK_PeopleAddress
foreign key (address_id) references addresses(id);

-- Drop foreign key to a table
alter table people 
drop foreign key FK_PeopleAddress;
