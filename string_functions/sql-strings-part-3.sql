use string_functions;

select * from emp;


select concat(upper(first_name)," ",upper(last_name)) as full_name
from emp;

select substring_index(email,'@',1) from emp;

select concat(left(city,2)," ",right(city,2)) from emp;

