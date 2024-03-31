DECLARE
    EMP           EMPLOYEE%ROWTYPE;
    EMP_COUNT     INT;
    EMP_NOT_FOUND EXCEPTION;
BEGIN
    SELECT
        COUNT(*) INTO EMP_COUNT
    FROM
        EMPLOYEE
    WHERE
        ID = 1;
    IF EMP_COUNT = 0 THEN
        RAISE EMP_NOT_FOUND;
    ELSE
        SELECT
            * INTO EMP
        FROM
            EMPLOYEE
        WHERE
            ID = 1;
        DBMS_OUTPUT.PUT_LINE('Name: '
                             || EMP.NAME
                             || ' ID: '
                             || EMP.ID
                             || ' SALARY: '
                             || EMP.SALARY);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Data Found');
    WHEN EMP_NOT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not Found');
END;
/