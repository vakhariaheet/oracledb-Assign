CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SALARY DECIMAL(10, 2)
);

INSERT INTO EMPLOYEE (
    ID,
    NAME,
    SALARY
) VALUES (
    1,
    'John Doe',
    1000.00
),
(
    2,
    'Jane Doe',
    2000.00
),
(
    3,
    'Jim Doe',
    3000.00
),
(
    4,
    'Jill Doe',
    4000.00
),
(
    5,
    'Jack Doe',
    5000.00
);