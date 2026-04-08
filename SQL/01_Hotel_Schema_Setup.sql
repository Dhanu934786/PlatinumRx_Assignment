CREATE TABLE users (
    user_id INT,
    user_name VARCHAR(50)
);

CREATE TABLE bookings (
    booking_id INT,
    user_id INT,
    room_no INT,
    booking_date DATE
);

CREATE TABLE items (
    item_id INT,
    item_name VARCHAR(50),
    rate INT
);

CREATE TABLE booking_commercials (
    booking_id INT,
    item_id INT,
    quantity INT
);

INSERT INTO users VALUES
(1, 'A'),
(2, 'B');

INSERT INTO bookings VALUES
(101, 1, 201, '2021-11-10'),
(102, 1, 202, '2021-11-15'),
(103, 2, 203, '2021-10-10');

INSERT INTO items VALUES
(1, 'Food', 200),
(2, 'Laundry', 100);

INSERT INTO booking_commercials VALUES
(101, 1, 2),
(101, 2, 1),
(102, 1, 3),
(103, 2, 5);
