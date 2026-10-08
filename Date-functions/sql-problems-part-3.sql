use datefunctions;

select extract(month from joining_date) from emp1;

select date_format(joining_date, "%d %b %Y")from emp1;
