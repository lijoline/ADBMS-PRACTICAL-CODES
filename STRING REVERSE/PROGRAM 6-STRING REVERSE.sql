declare
  str VARCHAR(50);
  rev VARCHAR(50) := '';
BEGIN
  str := :input_val;
  FOR i IN REVERSE 1..LENGTH(str)
    LOOP
    rev := rev || SUBSTR(str, i, 1);
END LOOP;
  DBMS_OUTPUT.PUT_LINE('Original String: ' || str);
  DBMS_OUTPUT.PUT_LINE('Reversed String: ' || rev);
END;
