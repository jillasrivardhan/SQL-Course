use airline_booking;

show tables;

select * from passenger;

select * from flight;

select * from booking;

create view new as
select passenger.first_name,flight.flight_number,
booking.seat_number
from
passenger inner join flight on
passenger.flight_id = flight.flight_id
inner join booking on
booking.flight_id;

create view active as
select * from booking 
where booking_status = 'confirmed';

show tables;

create view revenue as
select sum(payment.amount),flight.flight_id
from payment inner join
booking on payment.booking_id = 
booking.booking_id inner join flight on
flight.flight_id = booking.flight_id
group by flight.flight_id;

-- drop view new;

set sql_safe_updates = 0;

update passenger set first_name = "rahulbhai" 
where first_name = "rahul";

