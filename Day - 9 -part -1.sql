create database day_9;

use day_9;

create table employees(
emp_id int unique not null,
emp_name varchar(100),
dept_id int,
salary decimal(10,2)
);

create table departments(
dept_id int,
dept_name varchar(50)
);

insert into employees values (1,'ravi',10,30000),
(2,'priya',20,40000),(3,'arun',10,35000),(4,'sneha',30,45000);

select * from employees;

insert into departments values (10,'IT'),(20,'HR'),(30,'SALES'),
(40,'FINANCE');

select * from departments;

select employees.emp_name,departments.dept_name
 from employees 
 inner join departments on
employees.dept_id = departments.dept_id;
-- group by departments.dept_name , employees.emp_name;

select 
employees.emp_name,employees.emp_id,departments.dept_name
from employees 
inner join departments on
employees.dept_id = departments.dept_id;

select * from employees;

select 
employees.emp_name,departments.dept_name
from employees 
inner join departments on
employees.dept_id = departments.dept_id
where departments.dept_name = 'IT';

select 
employees.emp_name,departments.dept_name
from employees 
inner join departments on
employees.dept_id = departments.dept_id
where departments.dept_name = 'HR';

select 
employees.emp_name,departments.dept_name,employees.salary
from employees 
inner join departments on
employees.dept_id = departments.dept_id;

select 
*
from employees
left join departments on
employees.dept_id = departments.dept_id;

select 
employees.emp_name ,departments.dept_name
from employees
left join departments on
employees.dept_id = departments.dept_id;

insert into employees values (5,'lucky',4,18000);

select * from employees;

select emp_name
from employees inner join
departments on
employees.dept_id = departments.dept_id
where departments.dept_name is null;

select *
from employees inner join
departments on
employees.dept_id = departments.dept_id
where employees.emp_id is null;

select * from departments;

set sql_safe_updates = 0;

update employees set dept_id = 40 where dept_id = 4;

insert into employees values (7,'lucky',60,18000);

select * from employees;

insert into departments values (50,'CSE'),(60,'EEE');

select * 
from departments left join employees on
departments.dept_id = employees.dept_id;

select count(emp_name),departments.dept_name
from departments right join employees
on
departments.dept_id = employees.dept_id
group by departments.dept_name;

select count(emp_name),departments.dept_name
from departments right join employees
on
departments.dept_id = employees.dept_id
group by departments.dept_name
having count(emp_name) > 1;

select max(salary) as high_sal , departments.dept_name
from departments left join employees
on
departments.dept_id = employees.dept_id
group by departments.dept_name;










