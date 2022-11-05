/*
 CREATE TABLE User_name(
 Id int PRIMARY KEY,
 LastName varchar(100) NOT NULL,
 FirstName varchar(100) NOT NULL,
 Age int,
 Salary int
 );
 */
/*
 INSERT INTO
 USER_NAME
 VALUES
 (1, "Tirumala", "Uma Satish", 21, 50000),
 (2, "Konidela", "Keerthi", 20, 20000),
 (3, "Akkineni", "Akhil", 40, 100000),
 (4, "Bokka", "Rama krishna", 45, 10000);
 */
/* 
 CREATE TABLE Movie(
 Id int PRIMARY KEY,
 MovieName varchar(100),
 hero varchar(100),
 heroin varchar(100),
 ticketPrice int,
 movieRating int CHECK (
 movieRating >= 0
 AND movieRating <= 10
 ),
 userId int,
 FOREIGN KEY (userId) REFERENCES user_name(Id)
 );
 */
/*
 INSERT INTO
 Movie
 VALUES
 (1, "Chanti", "venkatesh", "seetha", 100, 5.1, 1),
 (2, "kaanthara", "Ramesh", "kanthi", 290, 7, 1),
 (3, "Bagumathi", "Arjun", "Anuska", 200, 8, 1),
 (4, "Mirchi", "Prabhas", "Anuska", 130, 4, 1),
 (5, "RRR", "NTR", "Aliabhatta", 120, 3, 2),
 (6, "SeethaRamam", "jack", "seetha", 190, 10, 2);
 */
/*
 INSERT INTO
 movie
 VALUES
 (
 7,
 "Gabbarsingh",
 "Pawan kalyan",
 "sruthi hassan",
 300,
 2,
 2
 );
 */
/*
 -- Get List of all the movies watched by the User
 SELECT
 *
 FROM
 Movie
 WHERE
 userId = 1;
 */
/*
 -- Get List of movies watched by the User and which movie ticket price is more than 150
 SELECT
 *
 FROM
 movie
 WHERE
 userId = 1
 AND ticketPrice > 150;
 */
--Get List of movies watched by the User and which movie rating below 5 out of 10
/*
 SELECT
 *
 FROM
 movie
 WHERE
 movieRating < 5
 AND userId = 1;
 */
-- list of movies of a user where heroin repeats more than twice
/*
 SELECT
 *
 FROM
 movie
 WHERE
 userId = 1
 AND heroin IN (
 SELECT
 heroin
 FROM
 movie
 WHERE
 userId = 1
 GROUP BY
 heroin
 HAVING
 count(*) >= 2
 );
 */
-- Print total and avg amount he spent on the movies
/*
SELECT
  sum(ticketPrice) AS Total,
  round(avg(ticketPrice), 2) AS Avg_Price
FROM
  movie
WHERE
  userId = 1;
*/