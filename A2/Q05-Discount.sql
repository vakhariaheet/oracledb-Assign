-- 5. Write a PL/SQL block that while purchasing certain items,discount of
-- each is as follows
-- i) If qty purchased > 1000 discount is 20%
-- ii) If the qty and price per item are i/p then calculate the expenditure
DECLARE
    QTY         INTEGER := &QTY;
    PRICE       NUMBER(5) := &PRICE;
    DISCOUNT    NUMBER(15, 2);
    EXPENDITURE NUMBER(15, 2);
BEGIN
    IF QTY > 1000 THEN
        DISCOUNT := PRICE * QTY * 0.2;
    ELSE
        DISCOUNT := 0;
    END IF;

    EXPENDITURE := ( PRICE * QTY ) - DISCOUNT;

    DBMS_OUTPUT.PUT_LINE('Expenditure is $'
                         || EXPENDITURE || '(You got $'||DISCOUNT || ' discount)');
END;
/
