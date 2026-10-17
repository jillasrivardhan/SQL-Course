use triggers;

show tables;

CREATE TABLE aircraft (
    aircraft_id INT ,
    model VARCHAR(50),
    total_seats INT
);

INSERT INTO aircraft VALUES
(1, 'Airbus A320', 100),
(2, 'Boeing 737', 150),
(3, 'Airbus A350', 250);

CREATE TABLE flight (
    booking varchar(100)
);

delimiter $$
create trigger t1
after insert on aircraft
for each row
begin
insert into flight(booking) value ('flight booked');
end$$
delimiter ;

insert into aircraft values(1,'spicejet',80);

select * from flight;

set sql_safe_updates=0;

alter table flight add column id int;

delimiter $$
create procedure t2()
begin
select * from flight;
end$$
delimiter ;

call t2();

alter table flight drop column id;

alter table flight add column id int first;


insert into aircraft values(4,'indigo',90);

delimiter $$
create trigger t2
after update on aircraft
for each row
begin
insert into flight(booking) value ('data updated');
end$$
delimiter ;

select * from aircraft;

update aircraft set aircraft_id = 3 where model = 'spicejet';

call t2();

delimiter $$
create trigger t4
after delete on aircraft
for each row
begin
insert into flight(booking) value ('record deleted');
end$$
delimiter ;

delete from aircraft where aircraft_id = 4;

call t2();

select * from aircraft;

delimiter $$
create trigger t5
before insert on aircraft
for each row
begin
if new.aircraft_id > 5 then signal sqlstate '45000'
set message_text = 'seats are over';
end if;
end$$
delimiter ;

insert into aircraft values(6,'airindia',80);
