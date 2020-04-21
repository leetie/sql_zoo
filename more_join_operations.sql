--https://sqlzoo.net/wiki/More_JOIN_operations

--1
SELECT id, title FROM movie
WHERE yr=1962;

--2
SELECT yr FROM movie
WHERE title='Citizen Kane';

--3
SELECT id, title, yr FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr;

--4
SELECT id FROM actor WHERE name='Glenn Close';

--5
SELECT id FROM movie WHERE title='Casablanca';

--6
SELECT actor.name FROM actor
JOIN casting ON actor.id = casting.actorid 
WHERE movieid = 11768;

--7
SELECT actor.name FROM actor
JOIN casting ON actor.id = casting.actorid
WHERE movieid = (SELECT id FROM movie WHERE title='Alien');

--8
SELECT DISTINCT title FROM movie 
JOIN casting ON movie.id = casting.movieid WHERE casting.actorid = (SELECT id FROM actor WHERE name='Harrison Ford');

--9
SELECT DISTINCT title FROM movie 
JOIN casting ON movie.id = casting.movieid WHERE casting.actorid = (SELECT id FROM actor WHERE name='Harrison Ford') AND ord <> 1;

--10

--11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2
