create database task_1;

use task_1;

create table emp(
emp_id int,
emp_name varchar(100),
emp_mail varchar(100),
doj date,
salary decimal(10,2),
city varchar(20),
pincode char(6)
);

select * from emp;

create table hospital(
id int,
patient_name varchar(100),
doj date,
disease varchar(50),
discharge_date date
);

alter table hospital add column fees bigint;

select * from hospital;

desc hospital;


create table amazon(
id int unique auto_increment,
order_date date,
name varchar(100),
address varchar(100),
pincode char(6),
delivery_date datetime,
payment decimal(8,2)
);

select * from amazon;

create table student(
id int,
name varchar(100),
age int,
marks int,
home_addrees varchar(100),
class text
);

select * from student;