/*Exercici 1*/

SELECT COUNT(*) 
FROM flights;

/*Exercici 2*/

SELECT Origin, AVG(ArrDelay) AS prom_arribades, avg(DepDelay) AS prom_sortides
FROM flights
GROUP BY Origin;

/*Exercici 3*/

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

/*Exercici 4*/

SELECT City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM flights
JOIN usairports ON usairports.IATA = flights.Origin
GROUP BY City, colYear, colMonth
ORDER BY City, colYear, colMonth;

/*Exercici 5*/

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled
FROM flights
WHERE Cancelled = 1
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY total_cancelled DESC, UniqueCarrier, colYear, colMonth;

/*Exercici 6*/

SELECT TailNum, SUM(Distance) AS totalDistance
FROM flights
WHERE TailNum <> ''
GROUP BY TailNum
ORDER BY totalDistance  DESC, TailNum
LIMIT 10;

/*Exercici 7*/

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC, UniqueCarrier;

