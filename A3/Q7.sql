CREATE OR REPLACE FUNCTION GETMINSAL RETURN INT AS
    MINSAL INT;
BEGIN
    SELECT
        MIN(SALARY) INTO MINSAL
    FROM
        EMPLOYEE;
    RETURN MINSAL;
END GETMINSAL;
/

DECLARE
    SAL INT;
BEGIN
    SAL := GETMINSAL();
    DBMS_OUTPUT.PUT_LINE('Min Salary is: '
                         || SAL);
END;
/