DECLARE
    CURSOR EMPCURSOR IS
    SELECT
        ENO
    FROM
        EMPLOYEE
    WHERE
        DEPARTMENT = 'Management';
    EID EMPLOYEE.ENO%TYPE;
BEGIN
    OPEN EMPCURSOR;
    LOOP
        FETCH EMPCURSOR INTO EID;
        EXIT WHEN EMPCURSOR%NOTFOUND;
        DELETE FROM EMPLOYEE
        WHERE
            ENO = EID;
        DBMS_OUTPUT.PUT_LINE('Employee Deleted :  '
                             || EID);
    END LOOP;

    CLOSE EMPCURSOR;
END;
/