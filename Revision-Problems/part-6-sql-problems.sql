use revision;

call dt();

select * from emp order by age;

select * from emp order by age limit 1 offset 1;

select * from emp order by age desc limit 1 offset 2;

select *,rank() over(order by salary) as r from emp;

select *,row_number() over(order by salary) from emp;

select department,count(*)
from emp
group by department;


