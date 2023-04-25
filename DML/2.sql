create database example;

use example;

create table people(
	id int auto_increment primary key,
    name varchar(30),
    age int,
    gender enum('M','F')
);

select * from people;

insert into people (name, age, gender)
values ('Emma','21','F'), ('John','30','M'),('Thomas',27,'M');

-- Delete data from table 
delete from people
where name = 'John';

-- delete multiple rows
delete from people
where gender = 'F';

-- delete all rows from table
delete from people;
