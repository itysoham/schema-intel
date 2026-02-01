-- Step 1: Create a database
CREATE DATABASE IF NOT EXISTS CompanyDB;

-- Step 2: Use the database
USE CompanyDB;

-- Step 3: Create a table called 'Employees'
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Step 4: Insert some sample data into the Employees table
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate)
VALUES 
    ('John', 'Doe', 'HR', 55000.00, '2020-06-15'),
    ('Jane', 'Smith', 'IT', 75000.00, '2019-09-23'),
    ('Emily', 'Johnson', 'Finance', 85000.00, '2018-03-12'),
    ('Michael', 'Brown', 'Marketing', 60000.00, '2021-01-09');

-- Step 5: Retrieve all data from the Employees table
SELECT * FROM Employees;

-- Step 6: Update an employee's salary
UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 2;

-- Step 7: Delete an employee record
DELETE FROM Employees
WHERE EmployeeID = 4;

-- Step 8: Retrieve employees who earn more than $70,000
SELECT * FROM Employees
WHERE Salary > 70000;
