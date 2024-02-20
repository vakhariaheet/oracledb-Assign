DECLARE
    l_name VARCHAR(255);
    l_id INT;
BEGIN
--  CREATE TABLE Student ( NAME VARCHAR(255),ID INT );
--  INSERT INTO Student (NAME,ID) VALUES('Pooja',2);
    SELECT NAME,ID INTO l_name,l_id FROM Student WHERE ID =2;
    
    DBMS_OUTPUT.PUT_LINE(l_name||'-'||l_id);
    -- ALTER TABLE Student MODIFY ID NUMBER; 
    ALTER TABLE Student RENAME COLUMN ID to Student_ID;
    ALTER TABLE Student ADD  roll_no INT;
    -- UPDATE Student SET NAME='Pooja Mistry' WHERE ID = 2
END;
/