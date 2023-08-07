-- TO CREATE A TABLE.
CREATE TABLE BITS
(SR_NO INT, COURSE VARCHAR(100), INTAKE INT);

-- TO VIEW THE TABLE.
SELECT * FROM BITS;

-- TO INSERT THE DATA.
INSERT INTO BITS VALUES ("1", "Electronics and Communications Engineering", "");
INSERT INTO BITS VALUES ("2", "Information Technology", "");
INSERT INTO BITS VALUES ("3", "Computer Science Engineering", "");
INSERT INTO BITS VALUES ("4", "Mechanical Engineering", "");
INSERT INTO BITS VALUES ("5", "Electrical Engineering", "");
INSERT INTO BITS VALUES ("6", "Civil Engineering", "");
SELECT * FROM BITS;

-- TO UODATE THE VALUES
UPDATE BITS SET INTAKE = "120" WHERE SR_NO = "1";
UPDATE BITS SET INTAKE = "120" WHERE SR_NO = "2";
UPDATE BITS SET INTAKE = "120" WHERE SR_NO = "3";
UPDATE BITS SET INTAKE = "80" WHERE SR_NO = "4";
UPDATE BITS SET INTAKE = "60" WHERE SR_NO = "5";
UPDATE BITS SET INTAKE = "10" WHERE SR_NO = "6";
SELECT * FROM BITS;

-- TO DELETE THE ROWS.
DELETE FROM BITS WHERE SR_NO >=4;
SELECT * FROM BITS;
