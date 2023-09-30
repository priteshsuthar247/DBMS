-- ORDERS TABLE
CREATE TABLE ORDERS (P_ID INT, P_NAME VARCHAR(50),PRICE_$ INT, P_TYPE VARCHAR(25));
INSERT INTO ORDERS VALUES ('1', 'Core i5 13600K','408', 'CPU');
INSERT INTO ORDERS VALUES ('2', 'Core i7 13790F','499', 'CPU');
INSERT INTO ORDERS VALUES ('3', 'Core i9 13900KF','719', 'CPU');
INSERT INTO ORDERS VALUES ('4', 'MSI Pro Z790-A','505', 'Motherboard');
INSERT INTO ORDERS VALUES ('5', 'ASUS ROG Maximus Z790 HERO','798', 'Motherboard');

-- Cursor
DECLARE   
   total_rows NUMBER(2);  
BEGIN  
   UPDATE ORDERS  
   SET PRICE_$ = PRICE_$ + (PRICE_$*0.1);  
   
   IF SQL%NOTFOUND THEN  
      DBMS_OUTPUT.PUT_LINE('No customers updated');  
   ELSIF SQL%FOUND THEN  
      total_rows := SQL%ROWCOUNT;  
      DBMS_OUTPUT.PUT_LINE(total_rows || ' customers updated');  
   END IF;   
END;

SELECT * FROM ORDERS;