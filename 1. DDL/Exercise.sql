-- Exercise
-- 1. Add pk to id in pets & drop pk in people tables
describe pets;

alter table pets 
add primary key(id);

describe people;

alter table people
drop primary key;

-- 2. add fk to owner_id in pets referenceing id in people
alter table pets
add foreign key (owner_id) references people(id);

-- 3. add a column named email to people
describe people;

alter table people
add email varchar(30);

-- 4. add unique constraint to email in people
alter table people
add constraint u_email unique (email); 

-- 5. rename name column in pets to first_name
describe pets;
alter table pets change `name` `first_name` varchar(30);

-- 6. change postcode data type to char(7) in addresses
describe addresses;
alter table addresses modify postcode char(7);
