create database hospital_management;

use hospital_management;

create table patients(
id int unique auto_increment,
name varchar(100),
gender char(1),
age int not null,
doj date default "2026-09-26"
);

insert into patients(name,gender,age,doj) values("lucky","M",21,"2025-09-21");

select * from patients;

set sql_safe_updates = 0;

update patients set address = "sdpt" where address is null;

alter table patients add column address varchar(100);

alter table patients add column mail_id varchar(100) first;

alter table patients drop column email;

alter table patients modify column gender varchar(10);

alter table patients rename column mail_id to email;

desc patients;

-- drop table patients; 

set autocommit = 0;

-- truncate table patients;

