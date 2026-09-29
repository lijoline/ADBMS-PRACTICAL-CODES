DECLARE
    CURSOR student_cursor IS
        SELECT Student_ID, Name, Age
        FROM Student;

    v_id   Student.Student_ID%TYPE;
    v_name Student.Name%TYPE;
    v_age  Student.Age%TYPE;

BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor INTO v_id, v_name, v_age;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' Name: ' || v_name ||
            ' Age: ' || v_age
        );
    END LOOP;

    CLOSE student_cursor;
END;

