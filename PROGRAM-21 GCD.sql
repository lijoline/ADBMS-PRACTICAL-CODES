DECLARE
    a NUMBER := 24;
    b NUMBER := 36;
    r NUMBER;
BEGIN
    WHILE b <> 0 LOOP
        r := MOD(a, b);
        a := b;
        b := r;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
/
