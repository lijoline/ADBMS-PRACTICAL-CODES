CREATE TABLE Employee (Emp_ID INT PRIMARY KEY,Emp_Name VARCHAR(50),Salary INT,Dept_ID INT);
INSERT INTO Employee VALUES (101, 'Arun', 30000, 1);
INSERT INTO Employee VALUES (102, 'Priya', 45000, 2);
INSERT INTO Employee VALUES (103, 'Rahul', 50000, 1);
INSERT INTO Employee VALUES (104, 'Kavi', 35000, 3);
INSERT INTO Employee VALUES (105, 'Divya', 60000, 2);
SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);
