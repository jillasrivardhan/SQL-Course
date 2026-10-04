use subquerys;

select * from emp;

select * from emp as e where salary<
(select avg(salary) from emp where department=e.department);

select * from emp as e where salary =
(select max(salary) from emp where
department = e.department);

select * from emp as e where salary =
(select min(salary) from emp where
department = e.department);

select * from emp as e where age >
(select avg(age) from emp where 
department = e.department);


SELECT department, city
FROM emp
GROUP BY department, city;






