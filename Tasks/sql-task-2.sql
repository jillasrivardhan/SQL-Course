use coders;

select * from insta;

select * from insta where comments = 
(select max(comments) from insta);

SELECT *
FROM insta
WHERE likes > (
    SELECT AVG(likes)
    FROM insta
    WHERE created_at >= '2023-03-01'
      AND created_at < '2023-04-01'
);

select user_id,username,likes from insta
order by likes limit 1;

select * from insta
where length(caption) >
(select avg(length(caption)) from insta);

select distinct * from insta
where likes > 500;

select distinct * from insta
where likes < 100;



