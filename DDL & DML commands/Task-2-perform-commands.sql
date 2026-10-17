
use task_1;

create table student_1(
roll_no int,
name varchar(100),
age int
);

alter table student_1 add column marks int;

alter table student_1 add column city varchar(100);

select * from student_1;

alter table student_1 add column pincode char(6) after marks;

alter table student_1 add column address varchar(50) after marks;

alter table student_1 add column id int first;

alter table student_1 add column grade text first;

rename table student_1 to student_data;

select * from student_data;

alter table student_data modify column grade varchar(10);

INSERT INTO student_data
VALUES
('A', 101, 1, 'Rahul Sharma', 20, 88, 'MG Road', '500001', 'Hyderabad'),
('B', 102, 2, 'Priya Reddy', 21, 76, 'Kukatpally', '500072', 'Hyderabad'),
('A', 103, 3, 'Arjun Kumar', 20, 92, 'Gandhi Nagar', '500003', 'Hyderabad'),
('C', 104, 4, 'Sneha Patel', 22, 68, 'Ameerpet', '500016', 'Hyderabad'),
('B', 105, 5, 'Vikram Singh', 21, 81, 'Madhapur', '500081', 'Hyderabad');

select * from student_data;

truncate table student_data;

drop table student_data;

-- drop database task_1;

