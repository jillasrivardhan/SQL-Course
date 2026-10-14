use airline_booking;

select * from booking;

select * from flight;

desc booking;

insert into booking values 
(5016,205,1002,'2026-01-01','12B','confirmed');

delimiter $$
create procedure book(id int,pid int,fid int,b_d date,s_n varchar(20),s varchar(10))
begin
insert into booking values(id,pid,fid,b_d,s_n,s);
select * from booking;
end$$
delimiter ;

call book(5017,207,1001,'2025-01-01','13D','cancelled');

show tables;

delimiter $$
create procedure tables()
begin
select * from booking;
select * from flight;
select * from airport;
select * from passenger;
end$$
delimiter ;

call tables();

select * from payment;

delimiter $$
create procedure revenue()
begin
select sum(amount) from payment;
end$$
delimiter ;



call revenue();




