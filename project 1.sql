create database Online_Movie_Streaming_Platform;
use Online_Movie_Streaming_Platform;
CREATE TABLE Users (
    User_id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Gender VARCHAR(10),
    Subscription_plan VARCHAR(50)
);
select * from Users;
INSERT INTO Users (User_id, First_name, Last_name, Gender, Subscription_plan) 
VALUES 
(1, 'Arun', 'Kumar', 'Male', 'Premium'),
(2, 'Priya', 'Shankar', 'Female', 'Basic'),
(3, 'Karthik', 'Raj', 'Male', 'Standard'),
(4, 'Divya', 'Ravi', 'Female', 'Premium'),
(5, 'Vijay', 'Anand', 'Male', 'Basic'),
(6, 'Sneha', 'Ravi', 'Female', 'Premium'),
(7, 'Rahul', 'Varma', 'Male', 'Standard'),
(8, 'Anitha', 'Devi', 'Female', 'Basic'),
(9, 'Surya', 'Mani', 'Male', 'Premium'),
(10, 'Meena', 'Rao', 'Female', 'Standard'),
(11, 'Suresh', 'Kumar', 'Male', 'Premium'),
(12, 'Latha', 'Mohan', 'Female', 'Basic'),
(13, 'Ganesh', 'Iyer', 'Male', 'Standard'),
(14, 'Revathi', 'Bala', 'Female', 'Premium'),
(15, 'Prakash', 'Rao', 'Male', 'Basic'),
(16, 'Asha', 'Rani', 'Female', 'Standard'),
(17, 'Naveen', 'Das', 'Male', 'Premium'),
(18, 'Kavitha', 'Singh', 'Female', 'Basic'),
(19, 'Yogesh', 'Nair', 'Male', 'Standard'),
(20, 'Preeti', 'Sharma', 'Female', 'Premium');
select * from Users;

CREATE TABLE Subscription_plan (
    Subscription_id INT PRIMARY KEY,
    User_id INT,
    Plan_name VARCHAR(50),
    Start_date DATE,
    End_date DATE,
    FOREIGN KEY (User_id) REFERENCES Users(User_id)
);
INSERT INTO Subscription_plan (Subscription_id, User_id, Plan_name, Start_date, End_date) 
VALUES 
(1, 1, 'Premium', '2024-01-01', '2024-12-31'),
(2, 2, 'Basic', '2024-02-01', '2024-08-01'),
(3, 3, 'Standard', '2024-03-01', '2024-09-01'),
(4, 4, 'Premium', '2024-04-01', '2025-04-01'),
(5, 5, 'Basic', '2024-05-01', '2024-11-01'),
(6, 6, 'Premium', '2024-06-01', '2025-06-01'),
(7, 7, 'Standard', '2024-07-01', '2025-01-01'),
(8, 8, 'Basic', '2024-08-01', '2025-02-01'),
(9, 9, 'Premium', '2024-09-01', '2025-09-01'),
(10, 10, 'Standard', '2024-10-01', '2025-04-01'),
(11, 11, 'Premium', '2024-11-01', '2025-11-01'),
(12, 12, 'Basic', '2024-12-01', '2025-06-01'),
(13, 13, 'Standard', '2025-01-01', '2025-07-01'),
(14, 14, 'Premium', '2025-02-01', '2026-02-01'),
(15, 15, 'Basic', '2025-03-01', '2025-09-01'),
(16, 16, 'Standard', '2025-04-01', '2025-10-01'),
(17, 17, 'Premium', '2025-05-01', '2026-05-01'),
(18, 18, 'Basic', '2025-06-01', '2025-12-01'),
(19, 19, 'Standard', '2025-07-01', '2026-01-01'),
(20, 20, 'Premium', '2025-08-01', '2026-08-01');
select * from Subscription_plan;

CREATE TABLE Payment_table (
    Payment_id INT PRIMARY KEY,
    User_id INT,
    Amount DECIMAL(10, 2),
    Payment_date DATE,
    FOREIGN KEY (User_id) REFERENCES Users(User_id)
);
INSERT INTO Payment_table (Payment_id, User_id, Amount, Payment_date) 
VALUES 
(1, 1, 15.99, '2024-01-01'),
(2, 2, 9.99, '2024-02-01'),
(3, 3, 12.99, '2024-03-01'),
(4, 4, 15.99, '2024-04-01'),
(5, 5, 9.99, '2024-05-01'),
(6, 6, 15.99, '2024-06-01'),
(7, 7, 12.99, '2024-07-01'),
(8, 8, 9.99, '2024-08-01'),
(9, 9, 15.99, '2024-09-01'),
(10, 10, 12.99, '2024-10-01'),
(11, 11, 15.99, '2024-11-01'),
(12, 12, 9.99, '2024-12-01'),
(13, 13, 12.99, '2025-01-01'),
(14, 14, 15.99, '2025-02-01'),
(15, 15, 9.99, '2025-03-01'),
(16, 16, 12.99, '2025-04-01'),
(17, 17, 15.99, '2025-05-01'),
(18, 18, 9.99, '2025-06-01'),
(19, 19, 12.99, '2025-07-01'),
(20, 20, 15.99, '2025-08-01');
select * from Payment_table;

CREATE TABLE Genres (
    Genre_id INT PRIMARY KEY,
    Genre_name VARCHAR(50)
);
INSERT INTO Genres (Genre_id, Genre_name) 
VALUES 
(1, 'Action'),
(2, 'Drama'),
(3, 'Comedy'),
(4, 'Thriller'),
(5, 'Romance'),
(6, 'Horror'),
(7, 'Adventure'),
(8, 'Scientific-Fiction'),
(9, 'Historical'),
(10, 'Mystery'),
(11, 'Fantasy'),
(12, 'Biography'),
(13, 'Musical'),
(14, 'Documentary'),
(15, 'Family'),
(16, 'Crime'),
(17, 'Sports'),
(18, 'War'),
(19, 'Western'),
(20, 'Animation');
select * from Genres;

CREATE TABLE Movies (
    Movie_id INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre_id INT,
    Release_year INT,
    Duration INT,
    FOREIGN KEY (Genre_id) REFERENCES Genres(Genre_id)
);
INSERT INTO Movies (Movie_id, Title, Genre_id, Release_year, Duration) 
VALUES 
(1, 'Vikram', 1, 2022, 155),
(2, 'Kaithi', 1, 2019, 145),
(3, 'Asuran', 2, 2019, 141),
(4, 'Soorarai Pottru', 2, 2020, 153),
(5, 'Master', 1, 2021, 179),
(6, 'Doctor', 3, 2021, 148),
(7, 'Love Today', 5, 2022, 154),
(8, 'Kannum Kannum Kollaiyadithaal', 4, 2020, 160),
(9, 'Sita Ramam', 5, 2022, 163),
(10, 'Thani Oruvan', 4, 2015, 160),
(11, 'Ponniyin Selvan: I', 1, 2022, 167),
(12, 'Ponniyin Selvan: II', 2, 2023, 164),
(13, 'Viswasam', 2, 2019, 153),
(14, 'Bigil', 1, 2019, 178),
(15, 'Maanagaram', 4, 2017, 137),
(16, 'Jai Bhim', 2, 2021, 164),
(17, 'Naanum Rowdy Dhaan', 3, 2015, 140),
(18, 'Ghilli', 1, 2004, 160),
(19, 'Anniyan', 4, 2005, 178),
(20, 'Karnan', 2, 2021, 159);
select * from Movies;

CREATE TABLE Watch_History (
    Watch_id INT PRIMARY KEY,
    User_id INT,
    Movie_id INT,
    Start_time DATETIME,
    Progress_percentage DECIMAL(5,2),
    Device VARCHAR(50),
    Location VARCHAR(100),
    FOREIGN KEY (User_id) REFERENCES Users(User_id),
    FOREIGN KEY (Movie_id) REFERENCES Movies(Movie_id)
);
INSERT INTO Watch_History (Watch_id, User_id, Movie_id, Start_time, Progress_percentage, Device, Location) 
VALUES 
(1, 1, 1, '2024-03-15 10:00:00', 75, 'Smart TV', 'Chennai'),
(2, 2, 2, '2024-03-16 15:00:00', 100, 'Mobile', 'Coimbatore'),
(3, 3, 3, '2024-03-17 12:00:00', 50, 'Tablet', 'Madurai'),
(4, 4, 4, '2024-03-18 18:00:00', 80, 'Laptop', 'Salem'),
(5, 5, 5, '2024-03-19 20:00:00', 60, 'Smart TV', 'Trichy'),
(6, 6, 6, '2024-03-20 21:00:00', 90, 'Mobile', 'Chennai'),
(7, 7, 7, '2024-03-21 22:00:00', 30, 'Laptop', 'Erode'),
(8, 8, 8, '2024-03-22 14:00:00', 100, 'Smart TV', 'Tirunelveli'),
(9, 9, 9, '2024-03-23 16:00:00', 70, 'Mobile', 'Vellore'),
(10, 10, 10, '2024-03-24 19:00:00', 85, 'Tablet', 'Thoothukudi'),
(11, 11, 11, '2024-03-25 20:00:00', 65, 'Smart TV', 'Chennai'),
(12, 12, 12, '2024-03-26 21:00:00', 100, 'Mobile', 'Madurai'),
(13, 13, 13, '2024-03-27 22:00:00', 50, 'Laptop', 'Salem'),
(14, 14, 14, '2024-03-28 18:00:00', 80, 'Smart TV', 'Trichy'),
(15, 15, 15, '2024-03-29 20:00:00', 60, 'Mobile', 'Coimbatore'),
(16, 16, 16, '2024-03-30 21:00:00', 90, 'Tablet', 'Madurai'),
(17, 17, 17, '2024-03-31 22:00:00', 30, 'Smart TV', 'Erode'),
(18, 18, 18, '2024-04-01 14:00:00', 100, 'Mobile', 'Vellore'),
(19, 19, 19, '2024-04-02 16:00:00', 70, 'Laptop', 'Thoothukudi'),
(20, 20, 20, '2024-04-03 19:00:00', 85, 'Tablet', 'Chennai');
select * from Watch_History;


-- QUERIES--


SELECT * FROM Users
WHERE Subscription_plan = 'Premium';

SELECT * FROM Movies
WHERE Genre_id = (SELECT Genre_id FROM Genres WHERE Genre_name = 'Action');

SELECT Users.First_name, Users.Last_name, Watch_History.Start_time, Watch_History.Progress_percentage
FROM Watch_History
JOIN Users ON Watch_History.User_id = Users.User_id
WHERE Watch_History.Movie_id = 1;  -- Movie 'Vikram' has Movie_id 1

SELECT Users.First_name, Users.Last_name, SUM(Payment_table.Amount) AS Total_Payment
FROM Payment_table
JOIN Users ON Payment_table.User_id = Users.User_id
GROUP BY Users.User_id;

SELECT DATE(Start_time) AS Watch_Date,
SUM(Duration * (Progress_percentage / 100)) AS Total_Watch_Time_Minutes
FROM Watch_History 
JOIN Movies ON Watch_History.Movie_id = Movies.Movie_id
GROUP BY DATE(Start_time)
ORDER BY Watch_Date;

SELECT g.Genre_name, 
COUNT(m.Movie_id) AS Movie_Count
FROM Genres g
JOIN Movies m ON g.Genre_id = m.Genre_id
GROUP BY g.Genre_name
ORDER BY Movie_Count DESC;

SELECT Title,Duration 
FROM Movies
WHERE Duration >= 120 
ORDER BY Duration DESC;

SELECT u.User_id,u.First_name,u.Last_name,
SUM(p.Amount) AS Total_Spent
FROM Users u
JOIN Payment_table p ON u.User_id = p.User_id
GROUP BY u.User_id
ORDER BY Total_Spent DESC
LIMIT 5;

CREATE VIEW User_Activity_Summary AS
SELECT 
    u.User_id,
    u.First_name,
    u.Last_name,
    COUNT(DISTINCT w.Movie_id) AS Total_Movies_Watched,
    SUM(p.Amount) AS Total_Amount_Spent
FROM Users u
LEFT JOIN Watch_History w ON u.User_id = w.User_id
LEFT JOIN Payment_table p ON u.User_id = p.User_id
GROUP BY u.User_id;

SELECT 
    User_id,
    First_name,
    Last_name,
    Total_Movies_Watched,
    Total_Amount_Spent
FROM User_Activity_Summary;
