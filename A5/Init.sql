CREATE TABLE EMPLOYEE(
    ENO NUMBER(4) PRIMARY KEY,
    ENAME VARCHAR2(10),
    DEPARTMENT VARCHAR2(10),
    SALARY NUMBER(7, 2)
);

CREATE TABLE DEPARTMENT(
    DNAME VARCHAR2(10),
    ENO NUMBER(4) REFERENCES EMPLOYEE(ENO)
);

INSERT INTO EMPLOYEE VALUES(
    1,
    'John',
    'Management',
    10000
),
(
    2,
    'Smith',
    'IT',
    20000
),
(
    3,
    'Peter',
    'IT',
    25000
),
(
    4,
    'Tom',
    'Finance',
    15000
),
(
    5,
    'Jerry',
    'Finance',
    12000
),
(
    6,
    'Jack',
    'Management',
    30000
);