DECLARE
    CURSOR EMPCURSOR IS
    SELECT
        *
    FROM
        EMPLOYEE
    ORDER BY
        SALARY DESC;
    EMP EMPLOYEE%ROWTYPE;
BEGIN
    OPEN EMPCURSOR;
    LOOP
        FETCH EMPCURSOR INTO EMP;
        EXIT WHEN EMPCURSOR%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(EMP.ENO
                             || ' '
                             || EMP.ENAME
                             || ' '
                             || EMP.SALARY
                             || ' '
                             || EMP.DEPARTMENT);
    END LOOP;

    CLOSE EMPCURSOR;
END;
/