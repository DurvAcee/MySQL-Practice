use test; 

select * from pets;

-- add a unique constraint to a column 
alter table pets
add constraint u_species unique (species);

-- remove a unique constraint from a column 
alter table pets
drop index u_species;

-- alter / rename column name
select * from pets;

alter table pets change `species` `animal_type` varchar(20);
alter table pets change `animal_type` `species` varchar(20);

-- change column's datatype
describe addresses;

alter table addresses modify city varchar(30);


