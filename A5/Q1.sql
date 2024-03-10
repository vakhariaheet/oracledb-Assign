DECLARE
    CURSOR EMPCURSOR IS
    SELECT
        *
    FROM
        EMPLOYEE
    WHERE
        DEPARTMENT = 'IT';
    EMP EMPLOYEE%ROWTYPE;
BEGIN
    OPEN EMPCURSOR;
    LOOP
        FETCH EMPCURSOR INTO EMP;
        EXIT WHEN EMPCURSOR%NOTFOUND;
        INSERT INTO DEPARTMENT VALUES (
            EMP.DEPARTMENT,
            EMP.ENO
        );
        DBMS_OUTPUT .PUT_LINE('DEPARTMENT: '
                              || EMP.DEPARTMENT
                              || ' EMPLOYEE NO: '
                              || EMP.ENO);
    END LOOP;
END;
/