DECLARE
    MNGR     VARCHAR(30) := '&MNGR';
    TOTALEMP INT;
BEGIN
    SELECT
        COUNT(*) INTO TOTALEMP
    FROM
        EMPLOYEE
    WHERE
        MANAGER = MNGR;
    DBMS_OUTPUT.PUT_LINE(TOTALEMP
                         || ' employees found');
END;
/