create database datefunctions;

use datefunctions;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    joining_date DATE,
    birth_date DATE,
    last_login DATETIME,
    salary DECIMAL(10,2)
);

INSERT INTO employees
(employee_id, first_name, last_name, joining_date, birth_date, last_login, salary)
VALUES
(101, 'Arjun', 'Reddy', '2022-06-15', '2001-03-21', '2026-10-01 09:15:30', 65000.00),
(102, 'Priya', 'Sharma', '2021-02-10', '2000-11-08', '2026-10-02 10:20:15', 72000.00),
(103, 'Rahul', 'Kumar', '2023-08-22', '2002-07-14', '2026-09-28 14:35:45', 58000.00),
(104, 'Sneha', 'Patel', '2020-01-05', '1999-12-02', '2026-10-03 08:05:20', 81000.00),
(105, 'Vikram', 'Rao', '2019-11-18', '1998-05-27', '2026-09-30 18:40:10', 95000.00),
(106, 'Ananya', 'Das', '2024-04-12', '2003-09-16', '2026-10-04 11:10:55', 55000.00),
(107, 'Kiran', 'Reddy', '2022-09-30', '2001-01-19', '2026-10-05 16:25:35', 68000.00),
(108, 'Meena', 'Iyer', '2021-07-07', '2000-06-30', '2026-09-27 12:50:40', 76000.00),
(109, 'Rohit', 'Verma', '2023-03-25', '2002-10-11', '2026-10-06 09:45:05', 60000.00),
(110, 'Divya', 'Nair', '2020-12-01', '1999-08-23', '2026-10-07 17:30:25', 84000.00);

select * from employees;

select curdate(),first_name from
employees;

select current_date(),first_name from
employees;

select curtime(),first_name from
employees;

select now(),first_name from
employees;

select * from employees;

select year(joining_date) from employees;

select month(joining_date) from employees;

rename table employees to emp1;

select * from emp1;

select concat("day-",day(joining_date),"month-",month(joining_date))
as joining_day_of_month
from emp1;

select hour(last_login) from emp1;

select minute(last_login) from emp1;
select second(last_login) from emp1;



