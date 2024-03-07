DECLARE
    I    NUMBER;
    J    NUMBER;
    ROWS NUMBER:=&ROWS;
BEGIN
    FOR I IN 1..ROWS LOOP
        FOR J IN 1..I LOOP
            DBMS_OUTPUT.PUT('* ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;
/