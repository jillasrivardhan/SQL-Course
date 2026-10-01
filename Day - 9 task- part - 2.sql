use day_9;

show tables;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    course_id INT
);


INSERT INTO Students (student_id, student_name, age, course_id)
VALUES
(1, 'Rahul', 20, 101),
(2, 'Priya', 21, 102),
(3, 'Arjun', 19, 101),
(4, 'Sneha', 22, 103),
(5, 'Kiran', 20, 104);


CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    duration_months INT
);

INSERT INTO Courses (course_id, course_name, duration_months)
VALUES
(101, 'Python', 6),
(102, 'Java', 5),
(103, 'SQL', 3),
(104, 'Machine Learning', 8),
(105, 'Web Development', 6);

select * from students;

rename table students to stu;

select * from stu;

select * 
from stu inner join courses
on
stu.course_id = courses.course_id;

select stu.student_name , courses.course_name 
from stu inner join courses
on
stu.course_id = courses.course_id;

select * from courses;

select * from
departments inner join employees
on
departments.dept_id = employees.dept_id
where employees.salary > 35000;

select * from
departments inner join employees
on
departments.dept_id = employees.dept_id
where departments.dept_name = 'it' or departments.dept_name = 'hr';

select avg(salary),departments.dept_name from
departments inner join employees
on
departments.dept_id = employees.dept_id
group by departments.dept_name;

select max(salary),departments.dept_name
from
departments inner join employees
on
departments.dept_id = employees.dept_id
group by departments.dept_name;

select *
from
departments inner join employees
on
departments.dept_id = employees.dept_id
where departments.dept_name like 's%';

select *
from
departments inner join employees
on
departments.dept_id = employees.dept_id
order by departments.dept_name;

select employees.emp_name,employees.salary,departments.dept_name
from
departments inner join employees
on
departments.dept_id = employees.dept_id
order by employees.salary desc;



