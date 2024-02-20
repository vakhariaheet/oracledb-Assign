DECLARE
    STR     VARCHAR2(255) := '&STR';
    I       INTEGER;
BEGIN
    FOR I IN 1..LENGTH(STR) LOOP
        DBMS_OUTPUT.PUT_LINE(SUBSTR(STR, 1, I));-- SUBSTR(Main String, Starting Index,Ending Index);
    END LOOP;
END;
/