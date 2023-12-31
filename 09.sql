-- STORE TABLE
CREATE TABLE STORE (P_ID INT, P_NAME VARCHAR(50),PRICE_$ INT, P_TYPE VARCHAR(25));
INSERT INTO STORE VALUES ('1', 'Core i5 13600K','408', 'CPU');
INSERT INTO STORE VALUES ('2', 'Core i7 13790F','499', 'CPU');
INSERT INTO STORE VALUES ('3', 'Core i9 13900KF','719', 'CPU');
INSERT INTO STORE VALUES ('4', 'MSI Pro Z790-A','505', 'Motherboard');
INSERT INTO STORE VALUES ('5', 'ASUS ROG Maximus Z790 HERO','798', 'Motherboard');
INSERT INTO STORE VALUES ('6', 'Gigabyte Z690 Aero D','383', 'Motherboard');
INSERT INTO STORE VALUES ('7', 'Nvidia RTX 4070 Ti 12GB GDDR6X','1329', 'GPU');
INSERT INTO STORE VALUES ('8', 'Nvidia RTX 4080 16GB GDDR6','1699', 'GPU');
INSERT INTO STORE VALUES ('9', 'Nvidia RTX 4090 24GB GDDR6','2099', 'GPU');
INSERT INTO STORE VALUES ('10', 'GSkill Trident Z5 2 x 32GB DDR5 6400MHZ','317', 'Memory');
INSERT INTO STORE VALUES ('11', 'Corsair Vengeance 2 x 32GB DDR5 6400MHZ','324', 'Memory');
INSERT INTO STORE VALUES ('12', 'Samsung 990 Pro 2TB','324', 'Storage');
INSERT INTO STORE VALUES ('13', 'WD Black SN850X 2TB','169', 'Storage');
INSERT INTO STORE VALUES ('14', 'MSI MAG Series CORELIQUID 360R V2','259', 'Cooler');
INSERT INTO STORE VALUES ('15', 'ARCTIC Liquid Freezer II 360 A-RGB','219', 'Cooler');
INSERT INTO STORE VALUES ('16', 'MSI MPG A1000G PCIE 5 80 Plus Gold 1000W', '723', 'PSU');
INSERT INTO STORE VALUES ('17', 'Corsair HXi 1500-Watt ATX Modular Power Supply', '529', 'PSU');
SELECT * FROM STORE;

-- GROUP BY COUNT
SELECT COUNT(P_ID), P_TYPE FROM STORE GROUP BY P_TYPE;

-- GROUP BY SUM
SELECT SUM(PRICE_$), P_TYPE FROM STORE GROUP BY P_TYPE;

-- GROUP BY AVG
SELECT AVG(PRICE_$), P_TYPE FROM STORE GROUP BY P_TYPE;

-- GROUP BY MIN
SELECT MIN(PRICE_$), P_TYPE FROM STORE GROUP BY P_TYPE;

-- GROUP BY MAX
SELECT MAX(PRICE_$), P_TYPE FROM STORE GROUP BY P_TYPE;