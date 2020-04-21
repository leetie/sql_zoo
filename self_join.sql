--https://sqlzoo.net/wiki/Self_join

--1
SELECT COUNT(*) FROM stops;

--2
SELECT id FROM stops WHERE name='Craiglockhart';

--3
SELECT id, name FROM stops 
JOIN route ON stops.id = route.stop
WHERE num='4' AND company='LRT'

--4
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*)=2;

--5
