use clauses;

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2),
Age INT,
City VARCHAR(30),
JoiningDate DATE
);

INSERT INTO Employees VALUES
(101, 'Alice', 'HR', 45000, 25, 'Hyderabad', '2022-01-10'),
(102, 'Bob', 'IT', 70000, 30, 'Chennai', '2021-06-15'),
(103, 'Charlie', 'Finance', 55000, 28, 'Bangalore', '2020-08-20'),
(104, 'David', 'IT', 80000, 35, 'Hyderabad', '2019-03-12'),
(105, 'Eva', 'HR', 48000, 27, 'Mumbai', '2023-02-18'),
(106, 'Frank', 'Sales', 60000, 31, 'Delhi', '2021-11-25'),
(107, 'Grace', 'Finance', 75000, 29, 'Chennai', '2018-09-10'),
(108, 'Henry', 'Sales', 52000, 26, 'Bangalore', '2022-07-05'),
(109, 'Ivy', 'IT', 90000, 32, 'Mumbai', '2017-05-30'),
(110, 'Jack', 'HR', 47000, 24, 'Delhi', '2023-01-12');

select * from Employees;

select name,salary from Employees where salary > 60000;

rename table Employees to emp;

select * from emp;

select name,Department from emp where department = "it";

select name,age from emp where age < 30;

select * from emp where city ="hyderabad" order by salary;

select name,salary from emp order by salary desc;

select * from emp where salary between 50000 and 80000 order by age;

select * from emp where department = "hr" order by name;

select * from emp where joiningdate = "2021-01-01" order by joiningdate desc;

select * from emp where city = "chennai" or city = "bangalore" order by city,salary desc;

select * from emp where age >25 order by department asc , salary desc;

