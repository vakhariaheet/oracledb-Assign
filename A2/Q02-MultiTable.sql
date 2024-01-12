DECLARE
    NUM NUMBER(3) := &NUM;
    I   NUMBER(2);
BEGIN
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(NUM
                             || ' X '
                             || I
                             || ' = ' || (NUM * I) );
    END LOOP;
END;
/

