create database day_8;

use day_8;

create table airport(
airport_id int primary key,
airport_name varchar(100),
city varchar(100),
country varchar(50)
);

create table aircraft(
aircraft_id int primary key,
model varchar(50),
total_seats int
);

create table flight(
flight_id int primary key,
flight_number varchar(20),
source_airport_id int,
destination_airport_id int,
departure_time datetime,
arrival_time datetime,

foreign key (flight_id) references aircraft(aircraft_id) 
);

create table passengers(
passenger_id int primary key,
first_name varchar(50),
last_name varchar(50),
gender char(1),
dob date,
passport_number varchar(20)
);

create table booking(
booking_id int primary key,
booking_date date,
seat_number varchar(5),
booking_status varchar(20),

foreign key (booking_id) references passengers(passenger_id),
foreign key (booking_id) references flight(flight_id)
);

create table payment(
payment_id int primary key,
payment_date date,
amount decimal(10,2),
payment_method varchar(30),

foreign key (payment_id) references booking(booking_id)
);

create  table crew(
crew_id int primary key,
crew_name varchar(100),
role varchar(50)
);

CREATE TABLE FLIGHT_CREW (
    flight_id INT NOT NULL,
    crew_id   INT NOT NULL,
    PRIMARY KEY (flight_id, crew_id),
    FOREIGN KEY (flight_id) REFERENCES FLIGHT(flight_id),
    FOREIGN KEY (crew_id)   REFERENCES CREW(crew_id)
);   

-- -----------------------
-- DDL COMMANDS
-- -----------------------
select * from passengers;

alter table passengers add column email varchar(100);

select * from booking;

desc booking;

alter table booking modify column seat_number varchar(10);

drop table payment;

rename table crew to flight_crew_member;

select * from flight_crew_member;

-- -----------------------
-- DML COMMANDS
-- -----------------------





