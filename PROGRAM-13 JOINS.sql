CREATE TABLE Department (Dept_ID INT PRIMARY KEY,Dept_Name VARCHAR(50));
CREATE TABLE Student (Student_ID INT PRIMARY KEY,Name VARCHAR(50),Dept_ID INT,FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID));

INSERT INTO Department VALUES (1, 'CSE');
INSERT INTO Department VALUES (2, 'ECE');
INSERT INTO Department VALUES (3, 'MECH');

INSERT INTO Student VALUES (101, 'Arun', 1);
INSERT INTO Student VALUES (102, 'Priya', 2);
INSERT INTO Student VALUES (103, 'Rahul', 1);
INSERT INTO Student VALUES (104, 'Kavi', 3);

SELECT Student.Student_ID, Student.Name, Department.Dept_Name
FROM Student
INNER JOIN Department
ON Student.Dept_ID = Department.Dept_ID;


SELECT Student.Student_ID, Student.Name, Department.Dept_Name
FROM Student
LEFT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;


SELECT Student.Student_ID, Student.Name, Department.Dept_Name
FROM Student
RIGHT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;
