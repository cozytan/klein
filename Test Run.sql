

-- testing if data table exist
SHOW TABLES;




-- Test membership join (checks Gold/Silver issue)
SELECT 
    m.full_name,
    mt.type_name,
    mt.perks
FROM members m
JOIN membership_types mt
ON m.membership_id = mt.membership_id;





-- Test payment tracker
SELECT 
    m.full_name,
    p.amount,
    p.payment_date
FROM payments p
JOIN members m ON p.member_id = m.member_id;





-- Test bookings (fixes manual booking problem)
SELECT 
    m.full_name,
    s.service_name,
    b.booking_date
FROM bookings b
JOIN members m ON b.member_id = m.member_id
JOIN services s ON b.service_id = s.service_id;








SELECT * FROM membership_types;



-- To add member
INSERT INTO members (full_name, phone, membership_id, join_date, expiry_date)
VALUES ('Juan Dela Cruz', '0917-555-1234', 1, '2025-02-01', '2026-02-01');



-- To prevent deleting all rows or data
SET SQL_SAFE_UPDATES = 0;



-- Delete member
DELETE FROM members
WHERE full_name = 'Juan Dela Cruz'
AND phone = '0917-555-1234';




--  Verify
SELECT * FROM members;



