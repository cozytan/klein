CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO payments (member_id, amount, payment_date) VALUES
(1,2500,'2024-01-15'),
(2,2500,'2024-02-01'),
(3,1500,'2024-06-01'),
(4,2500,'2024-03-10'),
(5,1500,'2024-07-01');
