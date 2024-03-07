CREATE TABLE EMP_LOG(
    ENO VARCHAR(10),
    OLD_SAL DECIMAL(10, 2),
    NEW_SAL DECIMAL(10, 2)
);

CREATE OR REPLACE TRIGGER EMP_SAL_LOG BEFORE
    UPDATE ON EMP FOR EACH ROW
BEGIN
    INSERT INTO EMP_LOG VALUES(
        :OLD.ENO,
        :OLD.SALARY,
        :NEW.SALARY
    );
END;
/