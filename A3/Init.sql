CREATE TABLE EMPLOYEE (
    ENO VARCHAR(10) PRIMARY KEY,
    ENAME VARCHAR(20),
    DEPARTMENT VARCHAR(20),
    DESIGNATION VARCHAR(20),
    SALARY DECIMAL(10, 2)
);

CREATE TABLE PERSON (
    PID VARCHAR(10) PRIMARY KEY,
    PNAME VARCHAR(20),
    AGE INT,
    HEIGHT DECIMAL(5, 2),
    WEIGHT DECIMAL(5, 2),
    BLOODGROUP VARCHAR(10)
);

INSERT INTO EMPLOYEE VALUES (
    'E001',
    'John',
    'HR',
    'Manager',
    50000
),
(
    'E002',
    'Smith',
    'IT',
    'Manager',
    40000
),
(
    'E003',
    'Peter',
    'Finance',
    'Accountant',
    30000
),
(
    'E004',
    'Tom',
    'Sales',
    'Salesman',
    20000
),
(
    'E005',
    'Aaron',
    'Marketing',
    'Marketing Manager',
    60000
);

INSERT INTO PERSON VALUES (
    'P001',
    'John',
    25,
    5.8,
    70,
    'A+'
),
(
    'P002',
    'Smith',
    30,
    5.9,
    75,
    'B+'
),
(
    'P003',
    'Peter',
    35,
    5.7,
    65,
    'O+'
),
(
    'P004',
    'Tom',
    40,
    5.6,
    80,
    'AB+'
),
(
    'P005',
    'Jerry',
    45,
    5.5,
    85,
    'A-'
);