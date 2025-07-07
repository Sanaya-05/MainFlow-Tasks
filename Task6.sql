USE StudentManagement;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    JoiningDate DATE
);
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate) VALUES
(1, 'Alice', 'HR', '2023-01-10'),
(2, 'Bob', 'IT', '2022-05-12'),
(3, 'Charlie', 'Finance', '2021-03-20');
ALTER TABLE Employees
ADD LastUpdated DATE,
ADD Status VARCHAR(10);
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees
SET Status = 'Active';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees SET LastUpdated = CURRENT_DATE;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Employees;
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate, LastUpdated, Status) VALUES
(4, 'David', 'HR', '2020-08-02', '2025-07-07','Inactive'),
(5, 'Elsa', 'IT', '2020-05-12', '2025-07-07', 'Inactive'),
(6, 'Fara', 'Finance', '2022-03-14', '2022-06-07', 'Active'),
(7, 'George', 'IT', '2021-05-12', '2021-07-07', 'Active');
SELECT * FROM Employees WHERE Status = 'Inactive';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Employees WHERE Status = 'Inactive';
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Employees WHERE LastUpdated < '2023-01-01';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Employees WHERE LastUpdated < '2023-01-01';
SET SQL_SAFE_UPDATES = 1;
DESCRIBE Employees;
SELECT * FROM Employees;
SELECT * FROM Employees WHERE Status = 'Inactive';
SELECT * FROM Employees WHERE LastUpdated < '2023-01-01';
