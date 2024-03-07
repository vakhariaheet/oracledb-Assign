DECLARE
    CURRENT_HOUR INTEGER;
BEGIN
    CURRENT_HOUR := TO_CHAR(SYSTIMESTAMP, 'HH24');
    IF CURRENT_HOUR > 5 AND CURRENT_HOUR < 12 THEN
        DBMS_OUTPUT.PUT_LINE('Good Morning');
    ELSIF CURRENT_HOUR < 18 THEN
        DBMS_OUTPUT.PUT_LINE('Good Afternoon');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Good Night');
    END IF;
END;
/