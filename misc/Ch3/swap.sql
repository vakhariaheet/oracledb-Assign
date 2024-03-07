CREATE OR REPLACE PROCEDURE SWAPNUM (
    NUM1 IN OUT INT,
    NUM2 IN OUT INT
) IS
    TEMP INT;
BEGIN
    TEMP := NUM1;
    NUM1 := NUM2;
    NUM2 := TEMP;
END SWAPNUM;
/

DECLARE
    NUM1 INT := &NUM1;
    NUM2 INT := &NUM2;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Before swapping : '
                         || NUM1
                         || ', '
                         || NUM2);
    SWAPNUM(NUM1, NUM2);
    DBMS_OUTPUT.PUT_LINE('After swapping : '
                         || NUM1
                         || ', '
                         || NUM2);
END;
/