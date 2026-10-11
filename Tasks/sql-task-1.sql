create database coders;

use coders;

CREATE TABLE Insta_post (
    post_id INT PRIMARY KEY,
    user_id INT,
    username VARCHAR(50),
    caption VARCHAR(255),
    likes INT,
    comments INT,
    created_at DATE
);

INSERT INTO Insta_post VALUES
(101, 1, 'yash_123', 'Morning vibes 🌞', 120, 15, '2023-01-01'),
(102, 2, 'neha_insta', 'Travel diaries ✈️', 300, 40, '2023-02-10'),
(103, 3, 'raj_cool', 'My new painting 🎨', 95, 10, '2023-02-20'),
(104, 1, 'yash_123', 'Happy Holi! 🌈', 500, 80, '2023-03-08'),
(105, 4, 'anita_star', 'Workout motivation 💪', 250, 25, '2023-03-15'),
(106, 5, 'vikas_travel', 'Beautiful sunset 🌅', 400, 60, '2023-03-20'),
(107, 3, 'raj_cool', 'Foodie life 🍕', 150, 20, '2023-04-05'),
(108, 2, 'neha_insta', 'Best friends ❤️', 600, 100, '2023-04-12'),
(109, 5, 'vikas_travel', 'Mountain trek 🏔️', 550, 90, '2023-04-25'),
(110, 4, 'anita_star', 'Self care Sunday 🧘‍♀️', 200, 18, '2023-05-01');

rename table insta_post to insta;

select * from insta;

select * from insta where likes >
(select avg(likes) from insta);

select * from insta where comments >
(select avg(comments) from insta);

select * from insta where likes = 
(select max(likes) from insta);

select * from insta where likes = 
(select min(likes) from insta);

select likes from insta order by likes desc 
limit 3;

select * from insta where likes = 
(select likes from insta order by
likes desc limit 1 offset 1);

select * from insta where created_at = 
(select likes from insta order by likes
desc limit 1);

select * from insta where
created_at = 
(select created_at from insta
where likes = 
(select likes from insta order by likes
desc limit 1));

select * from insta;

select * from insta where likes >
(select likes*2 from insta
where post_id = 103);

select * from insta;

select * from insta
where created_at > 
(select created_at from insta
order by created_at limit 1);

select * from insta
where created_at > 
(select created_at from insta
order by created_at desc limit 1);