CREATE OR REPLACE PROCEDURE FIND_20_PERSON(
    PER OUT PERSON%ROWTYPE
) AS
BEGIN
    SELECT
        * INTO PER
    FROM
        PERSON
    WHERE
        AGE=20;
END FIND_20_PERSON;
/

DECLARE
    PER PERSON%ROWTYPE;
BEGIN
    FIND_20_PERSON(PER);
    DBMS_OUTPUT.PUT_LINE('PID :'
                         || PER.PID );
END;
/