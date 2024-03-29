CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID NUMBER(2) PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(20),
    DEPARTMENT_AREA VARCHAR2(20)
);

CREATE TABLE NEW_DEPARTMENT(
    DEPARTMENT_ID NUMBER(2) PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(20),
    DEPARTMENT_AREA VARCHAR2(20)
);

INSERT INTO DEPARTMENT VALUES(1, 'HR', 'Bangalore'),
    (2, 'Finance', 'Mumbai'),
    (3, 'Sales', 'Delhi'),
    (4, 'Marketing', 'Chennai');


CREATE OR REPLACE TRIGGER MANAGE_DEPARTMENT_DELETE AFTER
    DELETE ON DEPARTMENT FOR EACH ROW
BEGIN
    INSERT INTO NEW_DEPARTMENT(
        DEPARTMENT_ID,
        DEPARTMENT_NAME,
        DEPARTMENT_AREA
    ) VALUES(
        :OLD.DEPARTMENT_ID,
        :OLD.DEPARTMENT_NAME,
        :OLD.DEPARTMENT_AREA
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('DEPARTMENT DELETED');
END;
/

