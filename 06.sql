-- Character Functions
    -- ASCII
    SELECT ASCII('Pritesh') AS NumCodeOfFirstChar;
    FROM STORE;

    -- CHAR
    SELECT CHAR(65) AS CodeToCharacter;

    -- CONCAT
    SELECT CONCAT('Hello', ' World');
    -- OR
    SELECT 'Hello' + ' World';
    -- OR
    SELECT CONCAT_WS(',', 'Hello', ' World');

    -- LEN
    SELECT LEN('Hello World');
    -- Use this for mysql
    SELECT LENGTH('Hello World');

    -- LOWER
    SELECT LOWER('HELLO WORLD');

    -- LEFT
    SELECT LEFT('Hello World', 4) AS ExtractString;

    -- STUFF
    SELECT STUFF('Hello World', 1, 5, 'Bye Bye');
    -- Use this for mysql
    SELECT INSERT('Hello World', 1, 5, 'Bye Bye');

-- Numeric Functions
    -- ABS
    SELECT Abs(-243.5) AS AbsNum;

    -- CEILING
    SELECT CEILING(25.75) AS CeilValue;

    -- FLOOR
    SELECT FLOOR(25.75) AS FloorValue;

    -- COALESCE
    SELECT COALESCE(NULL, NULL, NULL, 'Hello', NULL, 'World');

    -- CAST
    SELECT CAST(25.65 AS INT);

-- Date Functions
    -- CURRENT_TIMESTAMP
    SELECT CURRENT_TIMESTAMP();

    -- DATEADD
    SELECT DATE_ADD("2023-09-28", INTERVAL 15 DAY);

    -- DATEDIFF
    SELECT DATEDIFF("2023-12-31", "2023-01-01");
