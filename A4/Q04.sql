-- Write a trigger to store employee details into new table who is working
-- in ‘IT’ department.
CREATE TABLE ITEMP(
    EMPNO VARCHAR(10) PRIMARY KEY,
    ENAME VARCHAR(10)
);

CREATE OR REPLACE TRIGGER TRG_IT_EMP BEFORE
    INSERT OR UPDATE ON EMP FOR EACH ROW
BEGIN
    IF :NEW.DEPARTMENT = 'IT' THEN
        INSERT INTO ITEMP VALUES(
            :NEW.ENO,
            :NEW.ENAME
        );
    END IF;
END;
/