CREATE TABLE Student (Student_ID INT PRIMARY KEY,Name VARCHAR(50) NOT NULL,Email VARCHAR(100) UNIQUE,Age INT CHECK (Age >= 18),Department VARCHAR(30) DEFAULT 'CSE');

INSERT INTO Student (Student_ID, Name, Email, Age, Department)
VALUES (101, 'Arun', 'arun@gmail.com', 20, 'CSE');

INSERT INTO Student (Student_ID, Name, Email, Age)
VALUES (102, 'Priya', 'priya@gmail.com', 21);
SELECT * FROM Student;
