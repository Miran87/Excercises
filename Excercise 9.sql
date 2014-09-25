Hotel (hotelNo, hotelName, city)
Room (roomNo, hotelNo, type, price)
Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
Guest (guestNo, guestName, guestAddress)

SELECT * FROM Hotel
SELECT * FROM Hotel WHERE city = 'London'
SELECT 
	guestName, guestAddress
FROM
	guest
WHERE
	guestAddress LIKE '%London%' AND guestAddress
ORDER BY
	guestname

10 List all double or family rooms with a price below £40.00 per night, in ascending order of price.

SELECT * FROM Room WHERE type = 'double' OR type = 'family' AND price < 40.00 ORDER BY price 

-- LIST ALLE ANSÆTTES "POSITION" OG SPECIFICERER HVOR MANGE HVER BRANCH HAR OG HVAD DERES GENNEMSNITLIG LØN HVOR DU SORTERER MED DEN HØJESTE TIL DEN LAVESTE
-- Position, AVEREGE, EMPLOYEE


SELECT position, branchNo, AVG(Salary) AS AVERAGESALARY
FROM Staff
GROUP BY position
ORDER BY salary DESC

-- 12 How many hotels are there?
SELECT hotelNo, COUNT(*) FROM hotel;

-- 13 What is the average price of a room?
SELECT AVG(price) FROM room;

-- 14 What is the total revenue per night from all double rooms?
SELECT COUNT(*) AS Rooms, SUM(price) AS total FROM room WHERE type = 'double rooms'; 

-- 15 How many different guests have made bookings for August?
SELECT COUNT(guestNo) AS Guests FROM booking WHERE dateFrom = 'August';

SELECT guestNo, COUNT(*) FROM booking WHERE dateFrom ='2014-08';
SELECT COUNT(*) AS August, SUM(guestNo) AS Guests  FROM booking WHERE dateFrom LIKE '20__-08%'; 

-- 22 List the number of rooms in each hotel.
SELECT COUNT(roomNo) AS  FROM room WHERE hotelNo = '1';

SELECT hotelNo, SUM(roomNo) FROM room GROUP BY hotelNo; 

SELECT branchNo, COUNT(*) AS Employee
FROM Staff 
GROUP BY branchNo 
HAVING Employee > 1 -- NÅR MAN BRUGER "GROUP BY", SÅ KAN MAN IKKE BRUGE "WHERE". I STEDET SKAL MAN BRUGE "HAVING
ORDER BY branchNo;

-- 23 List the number of rooms in each hotel in London.
SELECT city, COUNT(hotelName) AS Hotel
FROM hotel
GROUP BY city
HAVING city = 'London';

-- 27 Insert a row into a table.
-- INSERT INTO Branch VALUES('B007', 'Victor Bendix Gade 6', 'Kbh', '2100');
INSERT INTO hotel Values('6', 'Blue Hotel', 'Sarajevo');

-- 28 Update the price of all rooms by 5%.
/*UPDATE Branch
SET street = 'Frederiksvej 8', city = 'Viborg' 
WHERE branchNo = 'B007';*/
UPDATE room
SET price = 1.05 * price;

-- 29 Delete a row in a table
-- DELETE FROM Branch WHERE branchNo = 'B008';
DELETE FROM hotel WHERE hotelName = 'Hilton';









