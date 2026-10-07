
use string_functions;

select * from emp;

select job_title from emp;

select char_length(job_title) from emp;

select concat_ws("|",first_name,last_name,city,department)
as profile from emp;

select ltrim(job_title),rtrim(job_title) from emp;

select replace(job_title," ","") from emp;

select substring_index(email,'@',-1) from emp;

select lower(email) normalized_email from emp;