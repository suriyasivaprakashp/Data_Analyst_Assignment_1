CREATE TABLE clinic_sales (
  sale_id INT PRIMARY KEY,
  patient_name VARCHAR(50),
  sales_channel VARCHAR(50),  -- Online / Offline
  amount INT,
  sale_date DATE
);

CREATE TABLE expenses (
  expense_id INT PRIMARY KEY,
  expense_type VARCHAR(50),
  amount INT,
  expense_date DATE
);


INSERT INTO clinic_sales VALUES
(1, 'Ravi', 'Online', 500, '2021-11-10'),
(2, 'Kumar', 'Offline', 700, '2021-11-11'),
(3, 'Arun', 'Online', 800, '2021-12-01'),
(4, 'John', 'Offline', 400, '2021-12-05');

INSERT INTO expenses VALUES
(1, 'Rent', 300, '2021-11-01'),
(2, 'Salary', 400, '2021-11-15'),
(3, 'Electricity', 200, '2021-12-01'),
(4, 'Maintenance', 150, '2021-12-10');
