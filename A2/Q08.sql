DECLARE
  a NUMBER := &num1;
  b NUMBER := &num2;
BEGIN
  a := a + b;
  b := a - b;
  a := a - b;
  
  -- Now the values of a and b are swapped
  DBMS_OUTPUT.PUT_LINE('a: ' || a);
  DBMS_OUTPUT.PUT_LINE('b: ' || b);
END;
/
