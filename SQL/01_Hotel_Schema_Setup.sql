CREATE TABLE users (
  user_id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO users VALUES
(1, 'Ravi'),
(2, 'Kumar'),
(3, 'Arun');

CREATE TABLE bookings (
  booking_id INT PRIMARY KEY,
  user_id INT,
  room_no INT,
  booking_date DATE,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO bookings VALUES
(101, 1, 201, '2021-11-10'),
(102, 2, 202, '2021-11-15'),
(103, 1, 203, '2021-12-01'),
(104, 3, 204, '2021-12-05');

CREATE TABLE items (
  item_id INT PRIMARY KEY,
  item_name VARCHAR(50),
  rate INT
);

INSERT INTO items VALUES
(1, 'Food', 200),
(2, 'Laundry', 100),
(3, 'Spa', 500);

CREATE TABLE booking_commercials (
  id INT PRIMARY KEY,
  booking_id INT,
  item_id INT,
  quantity INT,
  FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
  FOREIGN KEY (item_id) REFERENCES items(item_id)
);

INSERT INTO booking_commercials VALUES
(1, 101, 1, 2),  -- Food x2
(2, 101, 2, 1),  -- Laundry x1
(3, 102, 3, 1),  -- Spa x1
(4, 103, 1, 3),  -- Food x3
(5, 104, 2, 2);  -- Laundry x2
