use datefunctions;

select * from emp1;

select dayname(joining_date) from emp1;

select monthname(joining_date) from emp1;

select * from emp1 where day(joining_date) > 10;

select  * from emp1
where
dayofweek(joining_date) >=6 
and  
dayofweek(joining_date) <=7;

select dayofyear(joining_date)
from
emp1;

-- sunday-1 starting day of the week

select dayname((joining_date))
from
emp1;

-- quarter-1 = jan,feb,mar
-- quarter-2 = apr,may,june
-- quarter-3 = july,aug,sept
-- quarter-4 = oct,nov,dec

select quarter(joining_date) from emp1;

select datediff(curdate(),joining_date)
from emp1;

select date_add(joining_date , interval 30 day)
from emp1;

select date_sub(joining_date , interval 90 day)
from emp1;

