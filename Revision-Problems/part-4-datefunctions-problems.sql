use revision;

select *,curdate() from emp;

select * from emp
where year(hiredate) = year('2020-01-01');

select * from emp
where month(hiredate) = month('2020-01-01');

select * from emp
where month(hiredate) = month('2020-01-01');

select datediff(year(hiredate),year(curdate()))
from emp;  

SELECT 
TIMESTAMPDIFF(YEAR, hiredate, CURDATE())
FROM emp;   

select *,year(hiredate),year(curdate()) from emp;

select *
from emp
where hiredate >= date_sub('2020-01-01' ,interval 30 day );

select * from emp
where hiredate <= date_sub('2020-01-01',interval 1 year)
and hiredate >= date_sub('2019-01-01',interval 1 year);

select *,dayname(hiredate) as dayname from emp;

select *,monthname(hiredate) as monthname from emp;