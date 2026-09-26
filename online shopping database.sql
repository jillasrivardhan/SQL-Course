
create database online_shopping;

use online_shopping;

create table customers(
id int unique not null,
name varchar(100) not null,
items int not null check(items > 0),
address varchar(100) not null default "america",
email varchar(100) unique
);

insert into customers values(1,"mani",2,"sdpt","Hi@gmail.com"),(2,"hari",1,"hyd","bye@gmail.com"),(3,"uday",3,"america","hello@gmail.com");

select * from customers;

alter table customers add column age int;

update customers set age = 21 where age is null; 

delete from customers where id > 2;

alter table customers modify column address varchar(50);

desc customers;