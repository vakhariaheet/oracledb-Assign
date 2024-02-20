CREATE TABLE TH(
    E_NAME VARCHAR2(50),
    E_AGE NUMBER(20),
    E_GENDER VARCHAR2(20),
    E_ADD VARCHAR2(20)
);

DECLARE
    E_NAME   VARCHAR2(50);
    E_AGE    NUMBER(20);
    E_GENDER VARCHAR(20);
    E_ADD    VARCHAR(20);
BEGIN
    INSERT INTO TH(
        E_NAME,
        E_AGE,
        E_GENDER,
        E_ADD
    ) VALUES(
        '&e_name',
        &E_AGE,
        '&e_gender',
        '&e_add'
    );
    INSERT INTO TH(
        E_NAME,
        E_AGE,
        E_GENDER,
        E_ADD
    ) VALUES(
        '&e_name',
        &E_AGE,
        '&e_gender',
        '&e_add'
    );
    INSERT INTO TH(
        E_NAME,
        E_AGE,
        E_GENDER,
        E_ADD
    ) VALUES(
        '&e_name',
        &E_AGE,
        '&e_gender',
        '&e_add'
    );
    INSERT INTO TH(
        E_NAME,
        E_AGE,
        E_GENDER,
        E_ADD
    ) VALUES(
        '&e_name',
        &E_AGE,
        '&e_gender',
        '&e_add'
    );
    INSERT INTO TH(
        E_NAME,
        E_AGE,
        E_GENDER,
        E_ADD
    ) VALUES(
        '&e_name',
        &E_AGE,
        '&e_gender',
        '&e_add'
    );
    SELECT
        E_NAME,
        E_AGE INTO E_NAME,
        E_AGE
    FROM
        TH
    WHERE
        E_NAME='dhs';
    DBMS_OUTPUT.PUT_LINE('seeeeeeeeeeeeeeeeeee');
    DBMS_OUTPUT.PUT_LINE('emp name='
                         || E_NAME);
    DBMS_OUTPUT.PUT_LINE('emp age='
                         || E_AGE);
END;
/