CREATE TABLE FACULTY(
    FACULTY_ID INT PRIMARY KEY,
    FACULTY_NAME VARCHAR(50),
    FACULTY_SUBJECT_TAKEN VARCHAR(50),
    FACULTY_MAIL_ADDRESS VARCHAR(50)
);

INSERT INTO FACULTY VALUES(
    1,
    'Dr. Alok Kumar',
    'Data Structure',
    'alok.kumar@cllg.ac.in'
),
(
    2,
    'Dr. Anil Kumar',
    'DBMS and SQL',
    'anil.kumar@cllg.ac.in'
),
(
    3,
    'nancy',
    'maths',
    'nancy@cllg.ac.in'
);

UPDATE FACULTY SET FACULTY_MAIL_ADDRESS = 'nancy@glsica.org' WHERE FACULTY_NAME = 'nancy';

