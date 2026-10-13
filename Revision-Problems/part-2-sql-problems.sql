use revision;

select count(empname) from emp;

select max(salary) from emp;

select min(salary) from emp;

select avg(salary) from emp;

select sum(salary) from emp;

select department,count(empid) from emp
group by department;

select department,max(salary) from emp
group by department;

select department,sum(salary) from emp
group by department;

select department,count(empid) from emp
group by department
having count(empid) > 5;

select city,count(empname) from emp
group by city
having count(empname) > 3;

select department,avg(salary) from emp
group by department
order by avg(salary)
desc limit 1;

select city,count(empid) from emp
group by city 
order by count(empid) desc limit 1;

