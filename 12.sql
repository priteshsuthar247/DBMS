-- Basic
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;

-- For loop
DECLARE
    i NUMBER;
BEGIN
    FOR i IN 1 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

-- Minimum Maximum
DECLARE
    a NUMBER;
    b NUMBER;
    n NUMBER;
BEGIN
    a := 10;
    b := 100;
    IF a > b THEN
        n := a;
    ELSE
        n := b;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Maximum number is ' || n);
END;

-- Factorial
DECLARE
    f NUMBER := 1;
    i NUMBER;
    n NUMBER;
BEGIN
    n := 10;
    
    FOR i IN 1 .. n LOOP
        f := f * i;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(n || ' != ' || f);
END;