-- Procedure
CREATE OR REPLACE PROCEDURE procd
IS
    v_name VARCHAR(10) := 'Baymax';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, I am ' || v_name);
END;

-- Execution
BEGIN
  procd;
END;
-- or
execute procd;
-- or
exec procd;

-- Function
CREATE OR REPLACE FUNCTION adder(n1 IN NUMBER, n2 IN NUMBER)    
RETURN NUMBER    
IS     
    n3 NUMBER(8);    
BEGIN    
    n3 := n1 + n2;    
    RETURN n3;    
END;

-- Calling the funtion
DECLARE    
   n3 NUMBER(2);    
BEGIN    
   n3 := adder(11, 22);    
   DBMS_OUTPUT.PUT_LINE('Addition is: ' || n3);    
END;
