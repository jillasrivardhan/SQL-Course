create database tcl_dcl;

use tcl_dcl;


CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

set autocommit=0;

INSERT INTO student (id, name, marks) VALUES
(1, 'Rahul', 85),
(2, 'Priya', 92),
(3, 'Arjun', 76),
(4, 'Sneha', 88),
(5, 'Kiran', 67);

-- the set autocommit was disabled , so when i insert data that is temporarily stored

select * from student;

savepoint a;

insert into student(id,name,marks) values(6, 'Ananya', 95),
(7, 'Vikram', 72),
(8, 'Divya', 81),
(9, 'Sai', 90),
(10, 'Meena', 58);

savepoint b;

select * from student;

-- so i saved them temporarily , if you make any mistake you can use rollback to go back to that command using reference name (a,b)

rollback to a;

select * from student;

-- so i used commit this saves the data permanently
commit;

rollback;

select * from student;

insert into student(id,name,marks) values(6, 'Ananya', 95),
(7, 'Vikram', 72),
(8, 'Divya', 81),
(9, 'Sai', 90),
(10, 'Meena', 58);

commit;

select * from student;

rollback;
select * from student;

set autocommit=1;




