use revision;

show tables;

select * from emp;

select * from emp where salary >
(select avg(salary) from emp);

select * from emp where salary <
(select avg(salary) from emp);

select * from emp
order by salary desc limit 1;

select * from emp
order by salary desc limit 1 offset 1;

select * from emp
order by salary desc limit 1 offset 2;

select * from emp
order by salary desc limit 1 offset 4;

delimiter $$
create procedure dt()
begin
select * from emp;
end$$
delimiter ;

call dt();

select *,rank() over(order by empname) from emp;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (name, email, department, salary)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'IT', 45000),
('Priya Reddy', 'priya@gmail.com', 'HR', 38000),
('Rahul Sharma', 'rahul@gmail.com', 'IT', 45000),
('Arjun Kumar', 'arjun@gmail.com', 'Finance', 50000),
('Sneha Rao', 'sneha@gmail.com', 'IT', 42000),
('Priya Reddy', 'priya@gmail.com', 'HR', 38000),
('Vamsi Krishna', 'vamsi@gmail.com', 'Sales', 35000),
('Rahul Sharma', 'rahul@gmail.com', 'IT', 45000),
('Kiran Reddy', 'kiran@gmail.com', 'Finance', 48000),
('Arjun Kumar', 'arjun@gmail.com', 'Finance', 50000);

select * from employees;

select name,count(*) as r
from employees
group by name
having count(*)>1;

select * from emp where salary =
(select max(salary) from emp);

select * from emp where salary =
(select min(salary) from emp);

select * from emp where empid % 2 = 0;

select * from emp where empid % 2 <> 0;

select * from emp where age between 25 and 35;

select * from emp
order by salary desc limit 3;

select * from emp
order by salary limit 3;

select * from emp where salary % 1000 = 0;

select * from emp where experience > 10;

select * from emp where managerid is null;

call dt();

select managerid,count(*) from emp
group by managerid;

select managerid,count(*) from emp
group by managerid
having count(*) > 5;



