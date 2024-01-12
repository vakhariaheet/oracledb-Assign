DECLARE
    VAL VARCHAR2(1):='&VAL';
BEGIN
    IF VAL = 'a' OR VAL = 'i' OR VAL = 'o' OR VAL = 'u' OR VAL = 'e' THEN
        DBMS_OUTPUT.PUT_LINE(VAL
                             ||' is a vowel');
    ELSE
        DBMS_OUTPUT.PUT_LINE(VAL
                             || ' is consonent');
    END IF;
END;
/