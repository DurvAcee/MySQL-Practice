-- Creating database and tables

SHOW DATABASES;

CREATE DATABASE coffe_store;

USE coffe_store;

CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3,2)
);

SHOW TABLES;

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender ENUM('M','F'),
    phone_number VARCHAR(11)
);


-- Creating table with a foreign key 

create table orders (
	id int auto_increment primary key,
    product_id int,
    customer_id int,
    order_time datetime,
    foreign key(product_id) references products(id),
	foreign key(customer_id) references customers(id)
);