create database revision;

use revision;

CREATE TABLE Emp (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    HireDate DATE,
    Experience INT,
    ManagerID INT
);

select * from emp;

INSERT INTO Emp VALUES
(101,'Rahul','Male',28,'IT',55000,'Hyderabad','2022-01-15',3,201),
(102,'Anjali','Female',30,'HR',60000,'Chennai','2021-03-10',5,202),
(103,'Kiran','Male',26,'Finance',45000,'Bangalore','2023-02-20',2,203),
(104,'Sneha','Female',35,'IT',85000,'Hyderabad','2019-07-12',8,201),
(105,'Arjun','Male',32,'Sales',70000,'Mumbai','2020-11-05',6,204),
(106,'Priya','Female',29,'Marketing',48000,'Delhi','2022-06-18',3,205),
(107,'Vijay','Male',40,'Finance',95000,'Chennai','2017-09-25',12,203),
(108,'Meena','Female',31,'IT',62000,'Hyderabad','2021-08-30',5,201),
(109,'Suresh','Male',27,'HR',52000,'Pune','2023-04-14',2,202),
(110,'Deepika','Female',33,'Sales',78000,'Mumbai','2019-12-09',7,204),
(111,'Rakesh','Male',36,'Marketing',82000,'Bangalore','2018-05-21',9,205),
(112,'Pooja','Female',25,'IT',42000,'Hyderabad','2024-01-11',1,201),
(113,'Manoj','Male',38,'Finance',90000,'Chennai','2016-10-17',14,203),
(114,'Keerthi','Female',29,'HR',56000,'Delhi','2022-09-22',3,202),
(115,'Naveen','Male',34,'Sales',68000,'Pune','2020-04-13',6,204),
(116,'Divya','Female',27,'Marketing',47000,'Bangalore','2023-06-28',2,205),
(117,'Ajay','Male',41,'IT',98000,'Hyderabad','2015-02-19',15,201),
(118,'Bhavana','Female',30,'Finance',61000,'Mumbai','2021-07-07',5,203),
(119,'Harish','Male',26,'HR',43000,'Chennai','2024-02-15',1,202),
(120,'Lavanya','Female',37,'Sales',88000,'Delhi','2018-03-30',10,204),
(121,'Karthik','Male',29,'IT',57000,'Hyderabad','2022-05-25',3,201),
(122,'Swathi','Female',28,'Marketing',51000,'Pune','2022-08-18',3,205),
(123,'Praveen','Male',39,'Finance',93000,'Bangalore','2016-11-09',13,203),
(124,'Nandhini','Female',32,'HR',64000,'Chennai','2020-01-27',6,202),
(125,'Lokesh','Male',35,'Sales',76000,'Mumbai','2019-09-15',8,204),
(126,'Aishwarya','Female',24,'IT',40000,'Hyderabad','2024-03-12',1,201),
(127,'Gopi','Male',33,'Marketing',69000,'Delhi','2020-10-20',6,205),
(128,'Reshma','Female',31,'Finance',65000,'Pune','2021-05-05',5,203),
(129,'Vinod','Male',42,'HR',99000,'Bangalore','2014-12-01',16,202),
(130,'Sowmya','Female',27,'IT',53000,'Hyderabad','2023-08-08',2,201);

select * from emp;

select empname from emp; 

select empname,salary from emp;

select empname,department from emp
where department = "it";

select * from emp
where salary = 40000;

select * from emp 
where salary > 50000;

select * from emp 
where salary < 40000;

select * from emp 
where salary >= 40000 and 
salary <=70000;

select * from emp 
where age > 30;

select * from emp 
where age < 25;

select * from emp 
where empname like 'a%';

select * from emp 
where empname like '%a';

select * from emp 
where empname like '%ra%';

select * from emp 
where city = 'hyderabad';

select * from emp 
where department in ('it','hr');

select * from emp 
where department not in ('sales');

select * from emp 
where hiredate > '2023-01-01';

select * from emp 
order by salary desc;

select * from emp
order by empname desc;

select * from emp 
limit 10;

select * from emp
order by empid desc limit 10;

select distinct department from emp;

