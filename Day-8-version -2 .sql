-- =========================================================
-- AIRLINE BOOKING & FLIGHT MANAGEMENT SYSTEM
-- DATABASE SCHEMA + SAMPLE DATA
-- =========================================================

CREATE DATABASE airline_booking;
USE airline_booking;


-- =========================================================
-- 1. AIRPORT TABLE
-- =========================================================

CREATE TABLE airport (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);


-- =========================================================
-- 2. AIRCRAFT TABLE
-- =========================================================

CREATE TABLE aircraft (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    total_seats INT NOT NULL
);


-- =========================================================
-- 3. FLIGHT TABLE
-- =========================================================

CREATE TABLE flight (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL,
    source_airport_id INT NOT NULL,
    destination_airport_id INT NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    aircraft_id INT NOT NULL,

    FOREIGN KEY (source_airport_id)
        REFERENCES airport(airport_id),

    FOREIGN KEY (destination_airport_id)
        REFERENCES airport(airport_id),

    FOREIGN KEY (aircraft_id)
        REFERENCES aircraft(aircraft_id)
);


-- =========================================================
-- 4. PASSENGER TABLE
-- =========================================================

CREATE TABLE passenger (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE,
    passport_number VARCHAR(20) UNIQUE
    
);


-- =========================================================
-- 5. BOOKING TABLE
-- =========================================================

CREATE TABLE booking (
    booking_id INT PRIMARY KEY,
    passenger_id INT NOT NULL,
    flight_id INT NOT NULL,
    booking_date DATE NOT NULL,
    seat_number VARCHAR(5) NOT NULL,
    booking_status VARCHAR(20) NOT NULL,

    FOREIGN KEY (passenger_id)
        REFERENCES passenger(passenger_id),

    FOREIGN KEY (flight_id)
        REFERENCES flight(flight_id)
);


-- =========================================================
-- 6. PAYMENT TABLE
-- =========================================================

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(30) NOT NULL,

    FOREIGN KEY (booking_id)
        REFERENCES booking(booking_id)
);


-- =========================================================
-- 7. CREW TABLE
-- =========================================================

CREATE TABLE crew (
    crew_id INT PRIMARY KEY,
    crew_name VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL
);


-- =========================================================
-- 8. FLIGHT_CREW TABLE
-- =========================================================

CREATE TABLE flight_crew (
    flight_id INT NOT NULL,
    crew_id INT NOT NULL,

    PRIMARY KEY (flight_id, crew_id),

    FOREIGN KEY (flight_id)
        REFERENCES flight(flight_id),

    FOREIGN KEY (crew_id)
        REFERENCES crew(crew_id)
);


-- =========================================================
-- INSERT DATA
-- =========================================================


-- =========================================================
-- 1. AIRPORT DATA
-- =========================================================

INSERT INTO airport
(airport_id, airport_name, city, country)
VALUES
(1, 'Rajiv Gandhi International Airport', 'Hyderabad', 'India'),
(2, 'Indira Gandhi International Airport', 'Delhi', 'India'),
(3, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
(4, 'Kempegowda International Airport', 'Bangalore', 'India'),
(5, 'Chennai International Airport', 'Chennai', 'India');


-- =========================================================
-- 2. AIRCRAFT DATA
-- =========================================================

INSERT INTO aircraft
(aircraft_id, model, total_seats)
VALUES
(101, 'Airbus A320', 180),
(102, 'Boeing 737-800', 189),
(103, 'Airbus A321', 220),
(104, 'Boeing 787-9', 296),
(105, 'Airbus A350', 325);


-- =========================================================
-- 3. FLIGHT DATA
-- =========================================================

INSERT INTO flight
(
    flight_id,
    flight_number,
    source_airport_id,
    destination_airport_id,
    departure_time,
    arrival_time,
    aircraft_id
)
VALUES
(1001, 'AI101', 1, 2, '2026-10-01 06:30:00', '2026-10-01 08:45:00', 101),

(1002, '6E202', 2, 3, '2026-10-01 09:30:00', '2026-10-01 11:45:00', 102),

(1003, 'UK303', 3, 4, '2026-10-01 13:00:00', '2026-10-01 14:45:00', 103),

(1004, 'AI404', 4, 5, '2026-10-02 07:00:00', '2026-10-02 08:30:00', 101),

(1005, '6E505', 5, 1, '2026-10-02 10:00:00', '2026-10-02 12:00:00', 102),

(1006, 'AI606', 1, 3, '2026-10-02 15:00:00', '2026-10-02 17:15:00', 104),

(1007, 'UK707', 2, 4, '2026-10-03 08:00:00', '2026-10-03 10:30:00', 105),

(1008, '6E808', 3, 5, '2026-10-03 18:00:00', '2026-10-03 20:00:00', 103);


-- =========================================================
-- 4. PASSENGER DATA
-- =========================================================

INSERT INTO passenger
(
    passenger_id,
    first_name,
    last_name,
    gender,
    date_of_birth,
    passport_number
)
VALUES
(201, 'Rahul', 'Sharma', 'M', '1998-05-15', 'P100001'),

(202, 'Priya', 'Reddy', 'F', '1997-08-20', 'P100002'),

(203, 'Arjun', 'Kumar', 'M', '1994-03-10', 'P100003'),

(204, 'Sneha', 'Patel', 'F', '2000-11-25', 'P100004'),

(205, 'Vikram', 'Singh', 'M', '1992-07-18', 'P100005'),

(206, 'Ananya', 'Iyer', 'F', '1999-01-30', 'P100006'),

(207, 'Kiran', 'Rao', 'M', '1996-09-12', 'P100007'),

(208, 'Neha', 'Verma', 'F', '2001-04-22', 'P100008'),

(209, 'Rohit', 'Mehta', 'M', '1993-12-05', 'P100009'),

(210, 'Pooja', 'Nair', 'F', '1995-06-17', 'P100010'),

(211, 'Amit', 'Joshi', 'M', '1991-10-08', 'P100011'),

(212, 'Divya', 'Menon', 'F', '2002-02-14', 'P100012');


-- =========================================================
-- 5. BOOKING DATA
-- =========================================================

INSERT INTO booking
(
    booking_id,
    passenger_id,
    flight_id,
    booking_date,
    seat_number,
    booking_status
)
VALUES
(5001, 201, 1001, '2026-09-20', '12A', 'Confirmed'),

(5002, 202, 1001, '2026-09-21', '12B', 'Confirmed'),

(5003, 203, 1002, '2026-09-21', '15A', 'Confirmed'),

(5004, 204, 1002, '2026-09-22', '15B', 'Confirmed'),

(5005, 205, 1003, '2026-09-22', '20A', 'Confirmed'),

(5006, 206, 1004, '2026-09-23', '10A', 'Confirmed'),

(5007, 207, 1005, '2026-09-23', '18C', 'Confirmed'),

(5008, 208, 1006, '2026-09-24', '25A', 'Confirmed'),

(5009, 209, 1007, '2026-09-24', '30B', 'Confirmed'),

(5010, 210, 1008, '2026-09-25', '14C', 'Confirmed'),

(5011, 201, 1003, '2026-09-25', '20B', 'Confirmed'),

(5012, 202, 1004, '2026-09-26', '10B', 'Confirmed'),

(5013, 203, 1001, '2026-09-26', '13A', 'Cancelled'),

(5014, 204, 1006, '2026-09-27', '25B', 'Confirmed'),

(5015, 205, 1007, '2026-09-27', '30C', 'Confirmed');


-- =========================================================
-- 6. PAYMENT DATA
-- =========================================================

INSERT INTO payment
(
    payment_id,
    booking_id,
    payment_date,
    amount,
    payment_method
)
VALUES
(9001, 5001, '2026-09-20', 5500.00, 'Credit Card'),

(9002, 5002, '2026-09-21', 5500.00, 'UPI'),

(9003, 5003, '2026-09-21', 6200.00, 'Debit Card'),

(9004, 5004, '2026-09-22', 6200.00, 'UPI'),

(9005, 5005, '2026-09-22', 4800.00, 'Credit Card'),

(9006, 5006, '2026-09-23', 4500.00, 'Net Banking'),

(9007, 5007, '2026-09-23', 5000.00, 'UPI'),

(9008, 5008, '2026-09-24', 7500.00, 'Credit Card'),

(9009, 5009, '2026-09-24', 6800.00, 'Debit Card'),

(9010, 5010, '2026-09-25', 5200.00, 'UPI'),

(9011, 5011, '2026-09-25', 4800.00, 'Credit Card'),

(9012, 5012, '2026-09-26', 4500.00, 'UPI'),

(9013, 5014, '2026-09-27', 7500.00, 'Net Banking'),

(9014, 5015, '2026-09-27', 6800.00, 'Credit Card');


-- =========================================================
-- 7. CREW DATA
-- =========================================================

INSERT INTO crew
(
    crew_id,
    crew_name,
    role
)
VALUES
(301, 'Rajesh Kumar', 'Captain'),

(302, 'Suresh Reddy', 'First Officer'),

(303, 'Anjali Sharma', 'Cabin Crew'),

(304, 'Meena Patel', 'Cabin Crew'),

(305, 'Vijay Singh', 'Captain'),

(306, 'Kavya Rao', 'Cabin Crew'),

(307, 'Arun Menon', 'First Officer'),

(308, 'Sneha Iyer', 'Cabin Crew');


-- =========================================================
-- 8. FLIGHT_CREW DATA
-- =========================================================

INSERT INTO flight_crew
(
    flight_id,
    crew_id
)
VALUES
(1001, 301),
(1001, 302),
(1001, 303),
(1001, 304),

(1002, 305),
(1002, 307),
(1002, 306),

(1003, 301),
(1003, 302),
(1003, 308),

(1004, 305),
(1004, 307),
(1004, 303),

(1005, 301),
(1005, 302),
(1005, 304),

(1006, 305),
(1006, 307),
(1006, 306),

(1007, 301),
(1007, 302),
(1007, 308),

(1008, 305),
(1008, 307),
(1008, 304);

select * from booking;

update booking set booking_status = "cancelled" where booking_id in (5001,5002); 

select * from payment;

set sql_safe_updates = 0;

update payment set amount = amount * 10;

select * from booking;

delete from booking where booking_status = "cancelled";

select * from flight;

select * from airport;

select city,flight_number from airport inner join flight on 
airport.airport_id = flight.source_airport_id;

select * from passenger;

select first_name , last_name from passenger where date_of_birth > '1995-01-01';

select * from booking;

select count(booking_status),flight_id from booking group by flight_id;

select count(booking_status),flight_id from booking 
group by flight_id
having count(booking_status) > 50;

select * from passenger;

select * from flight;

select last_name from passenger order by last_name desc;

select payment.payment_date,payment.payment_method,payment.amount from flight
 inner join booking on 
 flight.flight_id = 
booking.flight_id inner join payment on 
payment.booking_id = booking.booking_id;

select * from crew;

select * from flight_crew;

SELECT 
    crew.crew_name,
    flight_crew.flight_id
FROM crew
INNER JOIN flight_crew
    ON crew.crew_id = flight_crew.crew_id
GROUP BY 
    crew.crew_name,
    flight_crew.flight_id;
    
select * from passenger;

alter table passenger add column flight_id int;

UPDATE passenger
SET flight_id = CASE passenger_id
    WHEN 201 THEN 1001
    WHEN 202 THEN 1001
    WHEN 203 THEN 1002
    WHEN 204 THEN 1002
    WHEN 205 THEN 1003
    WHEN 206 THEN 1004
    WHEN 207 THEN 1005
    WHEN 208 THEN 1006
    WHEN 209 THEN 1007
    WHEN 210 THEN 1008
    when 211 then 1006
    when 212 then 1003
END
WHERE passenger_id BETWEEN 201 AND 212;

select * from passenger;

select * from flight;

select * from airport;

select
passenger.first_name,passenger.last_name,flight.flight_number
from passenger 
inner join flight on
passenger.flight_id = flight.flight_id;

select
-- passenger.first_name,passenger.last_name,flight.flight_number
*
from passenger 
left join flight on
passenger.flight_id = flight.flight_id;

select
passenger.first_name,passenger.last_name,flight.source_airport_id,flight.destination_airport_id
from passenger 
inner join flight on
passenger.flight_id = flight.flight_id inner join airport on
flight.source_airport_id = airport.airport_id;
















