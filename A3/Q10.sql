CREATE OR REPLACE FUNCTION CHECK_ADULT RETURN BOOL IS
    IS_ADULT BOOL := FALSE;
    PER      PERSON%ROWTYPE;
BEGIN
    SELECT
        * INTO PER
    FROM
        PERSON
    WHERE
        PID = 'P004';
    IF PER.AGE > 18 THEN
        IS_ADULT := TRUE;
    END IF;

    RETURN IS_ADULT;
END CHECK_ADULT;
/

BEGIN
    IF CHECK_ADULT = TRUE THEN
        DBMS_OUTPUT.PUT_LINE('Adult');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NOT Adult');
    END IF;
END;
/