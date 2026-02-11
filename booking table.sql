CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    service_id INT,
    booking_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

INSERT INTO bookings (member_id, service_id, booking_date) VALUES
(1,1,'2024-06-01'),
(2,3,'2024-06-02'),
(3,2,'2024-06-03'),
(4,1,'2024-06-04'),
(5,2,'2024-06-05');

