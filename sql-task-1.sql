show databases;

create database sql_practice;

use sql_practice;

-- -------------------
--  Table - 1
-- -------------------

create table student(
student_id int unique auto_increment,
email varchar(100) unique,
name varchar(50) not null,
age int check(age>=18 and age <= 30),
city varchar(100) default "hyderabad"
);

show tables;

select * from student;

desc student;

insert into student(email,name,age,city) values("jilla@gmail.com","lucky",18,"sdpt");

insert into student(email,name,age) values("lucky@gmail.com","jilla",29);

-- -------------------
--  Table - 2
-- -------------------

create table employee(
emp_id int unique auto_increment,
emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) check(salary > 15000),
doj date default "2026-09-26"
)auto_increment = 1;

select * from employee;

desc employee;

insert into employee(emp_name,email,salary) values("lucky","jilla@gmail.com",15001);

-- There is no validation for email,it will take any type of values.

insert into employee(emp_name,email,salary) values("lucky","jilla",15001);

insert into employee(emp_name,email,salary) values("lucky","12",15001);

update employee set email = "lucy@gmail.com" where email = "12";

-- -------------------
--  Table - 3
-- -------------------

create table products(
product_id int unique auto_increment,
product_name varchar(100) not null,
barcode int unique,
price bigint check(price > 0),
stock int default 0
);

insert into products(product_name,barcode,price,stock) values("iphone",123456,150000,2);

select * from products;

-- -------------------
--  Bonus Task
-- -------------------

create table customers(
id int unique auto_increment,
name varchar(100) not null,
city varchar(100) default "siddipet",
email varchar(100) unique,
items_count int check(items_count > 0) 
);

insert into customers(name,city,email,items_count) values("lucky","hyderabad","jilla@gmail.com",1);

select * from customers;

show tables;

insert into customers(name,email,items_count) values("lucky","jia@gmail.com",1);