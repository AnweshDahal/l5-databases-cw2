-- 19030735 ANWESH DAHAL

ALTER TABLE address ADD district VARCHAR2(40);
UPDATE address SET district = 'Kathmandu' WHERE city = 'Kathmandu';
UPDATE address SET district = 'Jhapa' WHERE city = 'Jhapa';
UPDATE address SET district = 'Lalitpur' WHERE city = 'Lalitpur';
UPDATE address SET district = 'Sunsari' WHERE city in ('Itahari', 'Dharan');
