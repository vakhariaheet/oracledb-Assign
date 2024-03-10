DECLARE
    CURSOR EMPCURSOR IS
    SELECT
        ENO
    FROM
        EMPLOYEE
    WHERE
        DEPARTMENT = 'Finance';
    EID EMPLOYEE.ENO%TYPE;
BEGIN
    OPEN EMPCURSOR;
    LOOP
        FETCH EMPCURSOR INTO EID;
        EXIT WHEN EMPCURSOR%NOTFOUND;
        UPDATE EMPLOYEE
        SET
            SALARY = SALARY + SALARY * 0.03
        WHERE
            ENO = EID;
        DBMS_OUTPUT.PUT_LINE('Salary Updated for '
                             || EID);
    END LOOP;

    CLOSE EMPCURSOR;
END;
/