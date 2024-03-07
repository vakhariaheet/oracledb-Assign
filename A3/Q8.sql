DECLARE
    EMP               EMPLOYEE%ROWTYPE;
    MIN_SAL_EXCEPTION EXCEPTION;
BEGIN
    SELECT
        * INTO EMP
    FROM
        EMPLOYEE
    WHERE
        ENO = 'E003';
    IF EMP.SALARY < 50000 THEN
        RAISE MIN_SAL_EXCEPTION;
    ELSE
        DBMS_OUTPUT.PUT_LINE(EMP.ENO
                             || ' | '
                             || EMP.ENAME
                             || ' | '
                             || EMP.SALARY);
    END IF;
EXCEPTION
    WHEN MIN_SAL_EXCEPTION THEN
        DBMS_OUTPUT.PUT_LINE('Nikal');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Na Malyo');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Others');
END;
/