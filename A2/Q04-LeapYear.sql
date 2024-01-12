DECLARE
    YEAR NUMBER(4) := &YEAR;
BEGIN
    IF MOD(YEAR, 4) = 0 THEN
        IF MOD(YEAR, 100)  != 0 THEN
            DBMS_OUTPUT.PUT_LINE(YEAR
                                 || ' is a leap year');
        ELSIF MOD(YEAR, 400) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(YEAR
                                 || ' is a leap year');
        ELSE
            DBMS_OUTPUT.PUT_LINE(YEAR
                                 || ' is not a leap year');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE(YEAR
                             || ' not is a leap year');
    END IF;
END;
/