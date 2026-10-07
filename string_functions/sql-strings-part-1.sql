create database string_functions;

use string_functions;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(80),
    phone VARCHAR(20)
);

rename table employees to emp;

select * from emp;

INSERT INTO emp
(employee_id, first_name, last_name, email, city, department, job_title, phone)
VALUES
(101, 'Arjun', 'Reddy', 'arjun.reddy@gmail.com', 'Hyderabad', 'IT', 'Software Engineer', '9876543210'),
(102, 'Priya', 'Sharma', 'priya.sharma@yahoo.com', 'Bengaluru', 'HR', 'HR Executive', '9123456780'),
(103, 'Rahul', 'Kumar', 'rahul.kumar@outlook.com', 'Chennai', 'Finance', 'Financial Analyst', '9988776655'),
(104, 'Sneha', 'Patel', 'sneha.patel@gmail.com', 'Mumbai', 'IT', 'Data Analyst', '9012345678'),
(105, 'Vikram', 'Rao', 'vikram.rao@company.com', 'Pune', 'Sales', 'Sales Manager', '8899776655'),
(106, 'Ananya', 'Das', 'ananya.das@gmail.com', 'Hyderabad', 'Marketing', 'Content Writer', '9345678901'),
(107, 'Kiran', 'Reddy', 'kiran.reddy@company.com', 'Warangal', 'IT', 'Backend Developer', '8765432109'),
(108, 'Meena', 'Iyer', 'meena.iyer@yahoo.com', 'Kochi', 'Finance', 'Accountant', '9876501234'),
(109, 'Rohit', 'Verma', 'rohit.verma@gmail.com', 'Delhi', 'Sales', 'Sales Executive', '9090909090'),
(110, 'Divya', 'Nair', 'divya.nair@outlook.com', 'Kochi', 'HR', 'Recruiter', '9555512345');

select * from emp;

select *,upper(first_name) cap,length(first_name) len from emp;

select *,upper(city) from emp;

select *,lower(department) as low from emp;

select concat(first_name," ",last_name) full_name from emp;

select left(first_name,3) from emp;

select substring(phone,7) from emp;

select job_title from emp;

select trim(job_title) from emp;

select replace(email,'@gmail.com','@company.com') from emp;

select substring(city,1,5) from emp;

select reverse(last_name) from emp;



