--https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial

--1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

--3
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';

--4
SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

--5
SELECT * FROM nobel
WHERE yr BETWEEN 1980 AND 1989
AND subject = 'Literature';

--6
SELECT * FROM nobel
WHERE winner IN('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

--7
SELECT winner FROM nobel
WHERE winner LIKE 'John%';

--8
SELECT yr, subject, winner FROM nobel
WHERE yr BETWEEN 1980 AND 1984 AND (subject = 'Chemistry' OR subject = 'Physics');

--9
SELECT yr, subject, winner FROM nobel
WHERE yr = 1980 AND subject NOT IN('Chemistry', 'Medicine');

--10
SELECT yr, subject, winner FROM nobel
WHERE 
(yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature');

--11
SELECT * FROM nobel
WHERE winner = 'Peter Grünberg';

--12
SELECT * FROM nobel
WHERE winner = "Eugene O'Neill";

--13
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%';

