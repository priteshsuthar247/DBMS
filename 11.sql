-- Creating Table as Admin
-- STORE TABLE
CREATE TABLE STORE (P_ID INT, P_NAME VARCHAR(50),PRICE_$ INT, P_TYPE VARCHAR(25));
INSERT INTO STORE VALUES ('1', 'Core i5 13600K','408', 'CPU');
INSERT INTO STORE VALUES ('2', 'Core i7 13790F','499', 'CPU');
INSERT INTO STORE VALUES ('3', 'Core i9 13900KF','719', 'CPU');
INSERT INTO STORE VALUES ('4', 'MSI Pro Z790-A','505', 'Motherboard');
INSERT INTO STORE VALUES ('5', 'ASUS ROG Maximus Z790 HERO','798', 'Motherboard');

-- Creating Employee Account
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'pass123';

-- Granting SELECT Privilages to employee
GRANT SELECT, INSERT, UPDATE ON pritesh.* TO 'manager'@'localhost';

-- Testing Privilages as employee
SELECT * FROM STORE;

-- Testing Unauthorized Privilages as employee
DELETE FROM STORE WHERE P_ID = 5;

-- Revoking INSERT privilage from employee
REVOKE INSERT ON pritesh.* FROM 'employee'@'localhost';

-- Testing Unauthorized Privilages as employee
INSERT INTO STORE VALUES ('6', 'Gigabyte Z690 Aero D','383', 'Motherboard');