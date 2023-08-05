-- SHOP Table
CREATE TABLE SHOP (P_ID INT, P_NAME VARCHAR(50),PRICE_$ INT, P_TYPE VARCHAR(25));
INSERT INTO SHOP VALUES ('1', 'Core i5 13600K','408', 'CPU');
INSERT INTO SHOP VALUES ('3', 'Core i9 13900KF','719', 'CPU');
INSERT INTO SHOP VALUES ('4', 'MSI Pro Z790-A','505', 'Motherboard');
SELECT * FROM SHOP;

-- PO Table
CREATE Table PO (P_ID INT, P_NAME VARCHAR(50), QUANTITY INT);
INSERT INTO PO VALUES ('2', 'Core i7 13790F', '14');
INSERT INTO PO VALUES ('3', 'Core i9 13900KF', '2');
SELECT * FROM PO;

-- JOINS
-- INNER JOIN
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
INNER JOIN PO ON SHOP.P_ID = PO.P_ID
ORDER BY SHOP.P_ID;

-- LEFT JOIN
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
LEFT JOIN PO ON SHOP.P_ID = PO.P_ID
ORDER BY SHOP.P_ID;

-- RIGHT JOIN
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
RIGHT JOIN PO ON SHOP.P_ID = PO.P_ID
ORDER BY SHOP.P_ID;

-- FULL OUTER JOIN
-- FULL OUTER JOIN is not supported by MYSQL
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
FULL OUTER JOIN PO ON SHOP.P_ID = PO.P_ID
ORDER BY P_ID;

-- This will work in MYSQL
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
LEFT JOIN PO ON SHOP.P_ID = PO.P_ID
UNION
SELECT SHOP.P_ID, SHOP.P_NAME, PO.QUANTITY
FROM SHOP
RIGHT JOIN PO ON SHOP.P_ID = PO.P_ID
ORDER BY P_ID;