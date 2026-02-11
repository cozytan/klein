CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(50),
    monthly_price DECIMAL(10,2)
);

INSERT INTO services (service_name, monthly_price) VALUES
('Boxing', 2000.00),
('Yoga', 1500.00),
('Personal Coach', 3000.00);
