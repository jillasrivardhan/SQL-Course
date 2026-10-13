use revision;

select upper(empname) from emp;

select lower(empname) from emp;

select length(empname) from emp;

select left(empname,3) from emp;

select right(empname,3) from emp;

select replace(empname,"a"," ")
from emp;

select trim(empname) from emp;

select concat(empname,"-",department)
from emp;

select reverse(empname) from emp;

desc emp;

select substring(empname,"1","1")
from emp;




