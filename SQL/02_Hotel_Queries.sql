-- Q1
SELECT user_id, room_no
FROM bookings b1
WHERE booking_date = (
    SELECT MAX(booking_date)
    FROM bookings b2
    WHERE b1.user_id = b2.user_id
);

-- Q2
SELECT 
    b.booking_id,
    SUM(bc.quantity * i.rate) AS total_amount
FROM bookings b
JOIN booking_commercials bc 
    ON b.booking_id = bc.booking_id
JOIN items i 
    ON bc.item_id = i.item_id
WHERE MONTH(b.booking_date) = 11
  AND YEAR(b.booking_date) = 2021
GROUP BY b.booking_id;

-- Q3
SELECT 
    b.booking_id,
    SUM(bc.quantity * i.rate) AS total_amount
FROM bookings b
JOIN booking_commercials bc 
    ON b.booking_id = bc.booking_id
JOIN items i 
    ON bc.item_id = i.item_id
GROUP BY b.booking_id
HAVING SUM(bc.quantity * i.rate) > 1000;

-- Q4
SELECT 
    i.item_name,
    SUM(bc.quantity) AS total_quantity
FROM booking_commercials bc
JOIN items i 
    ON bc.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_quantity DESC;

-- Q5
SELECT 
    b.booking_id,
    SUM(bc.quantity * i.rate) AS total_amount
FROM bookings b
JOIN booking_commercials bc 
    ON b.booking_id = bc.booking_id
JOIN items i 
    ON bc.item_id = i.item_id
GROUP BY b.booking_id
ORDER BY total_amount DESC
LIMIT 1 OFFSET 1;
