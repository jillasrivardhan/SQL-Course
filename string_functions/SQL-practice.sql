use subquerys;

show tables;

select * from emp;

SELECT *
FROM emp
WHERE salary = (
    SELECT MAX(salary)
    FROM emp
    WHERE salary < (
        SELECT MAX(salary)
        FROM emp
    )
);

select length(" ");

select trim("jilla  sri  vardhan");

select replace("mani","a","2");

select trim("      ram      ");

select substring_index("jilla sri vardhan","a",2);

alter table emp add column email varchar(100);

select * from emp;

set sql_safe_updates =0;

update emp set email = concat(name,age,'@gmail.com') where email is null;


