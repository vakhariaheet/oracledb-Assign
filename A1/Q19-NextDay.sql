DECLARE
    TODAY TIMESTAMP := SYSTIMESTAMP;
BEGIN
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(TODAY+1,'YYYY-MM-DD HH24:MI:SS'));
END;
/