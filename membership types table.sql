CREATE DATABASE IF NOT EXISTS fitlife_gym;
USE fitlife_gym;

CREATE TABLE membership_types (
    membership_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL,
    monthly_fee DECIMAL(10,2),
    perks TEXT
);

INSERT INTO membership_types (type_name, monthly_fee, perks) VALUES
('Gold', 2500.00, 'Unlimited classes, Priority booking'),
('Silver', 1500.00, 'Limited classes, Standard booking');
