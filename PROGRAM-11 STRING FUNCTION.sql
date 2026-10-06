CREATE TABLE Student (Name VARCHAR(50));
INSERT INTO Student VALUES ('Arun Kumar');
INSERT INTO Student VALUES ('Priya Sharma');
INSERT INTO Student VALUES ('Rahul Raj');

SELECT
    Name,
    UPPER(Name) AS Uppercase_Name,
    LOWER(Name) AS Lowercase_Name,
    LENGTH(Name) AS Name_Length,
    SUBSTRING(Name, 1, 4) AS First_Four_Characters,
    CONCAT('Student: ', Name) AS Full_Text,
    REPLACE(Name, ' ', '_') AS Replaced_Name
FROM Student;
