create database practice;

use practice;

select now();

select curdate();

select curtime();

select current_date();
select current_time();

select date_add('2026-12-12',interval 2 year);

select date_sub('2026-08-12',interval 5 year);

select datediff('2026-09-12','2026-09-10');

select extract(year from '2026-10-10');
select extract(month from '2026-10-10');
select extract(day from '2026-10-12');

select extract(month from curdate());

select extract(year from '2026-10-10');

select extract(hour from now());

select day('2026-11-09');

select month('2005-11-09');

select year("2004-09-01");

select hour(now());
select day(now());
select second(now());

select dayname(now());
select monthname(now());