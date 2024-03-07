CREATE OR REPLACE PROCEDURE FIND_IT_EMPLOYEES IS
    NAME EMPLOYEE.ENAME%TYPE; -- Declare the NAME variable
    ENO  EMPLOYEE.ENO%TYPE;
BEGIN
    SELECT
        ENAME,
        ENO INTO NAME,
        ENO
    FROM
        EMPLOYEE
    WHERE
        DEPARTMENT = 'IT'
        AND DESIGNATION = 'Manager'; -- Remove the semicolon
    DBMS_OUTPUT.PUT_LINE(NAME
                         || ' '
                         || ENO);
END FIND_IT_EMPLOYEES;
/

BEGIN
    FIND_IT_EMPLOYEES;
END;
/

-- OutPUT
-- Smith E002