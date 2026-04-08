SELECT * 
FROM bookings
ORDER BY booking_date DESC
LIMIT 1;

SELECT b.booking_id, SUM(i.rate * bc.quantity) AS total
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(b.booking_date) = 11 AND YEAR(b.booking_date) = 2021
GROUP BY b.booking_id;


SELECT b.booking_id, SUM(i.rate * bc.quantity) AS total
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
GROUP BY b.booking_id
HAVING total > 1000;
