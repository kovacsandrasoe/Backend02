-- Adatbázis létrehozása
CREATE DATABASE SalesDB;
GO

-- Az adatbázis használata
USE SalesDB;
GO

-- Customers tábla létrehozása
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100)
);
GO

-- Orders tábla létrehozása
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    ProductName NVARCHAR(100),
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

-- Customers tábla feltöltése adatokkal
INSERT INTO Customers (FirstName, LastName, Email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Brown', 'michael.brown@example.com'),
('Linda', 'Johnson', 'linda.johnson@example.com'),
('David', 'Williams', 'david.williams@example.com'),
('Sarah', 'Jones', 'sarah.jones@example.com'),
('Robert', 'Taylor', 'robert.taylor@example.com'),
('Mary', 'Anderson', 'mary.anderson@example.com'),
('James', 'Thomas', 'james.thomas@example.com'),
('Patricia', 'Jackson', 'patricia.jackson@example.com'),
('Charles', 'White', 'charles.white@example.com'),
('Barbara', 'Harris', 'barbara.harris@example.com'),
('Paul', 'Martin', 'paul.martin@example.com'),
('Nancy', 'Thompson', 'nancy.thompson@example.com'),
('George', 'Garcia', 'george.garcia@example.com'),
('Sandra', 'Martinez', 'sandra.martinez@example.com'),
('Steven', 'Robinson', 'steven.robinson@example.com'),
('Emily', 'Clark', 'emily.clark@example.com'),
('Daniel', 'Rodriguez', 'daniel.rodriguez@example.com'),
('Jessica', 'Lewis', 'jessica.lewis@example.com');
GO

-- Orders tábla feltöltése adatokkal (minden customer-nek több order-je van)
INSERT INTO Orders (CustomerID, ProductName, OrderDate, Amount) VALUES
(1, 'Laptop', '2023-01-01', 1000.50),
(1, 'Mouse', '2023-02-01', 25.75),
(2, 'Phone', '2023-01-02', 800.00),
(2, 'Headphones', '2023-03-02', 150.00),
(3, 'Tablet', '2023-01-03', 300.75),
(3, 'Keyboard', '2023-04-01', 50.20),
(4, 'Monitor', '2023-01-04', 200.20),
(4, 'Desk Chair', '2023-05-01', 120.60),
(5, 'Printer', '2023-01-05', 150.60),
(5, 'Ink Cartridge', '2023-06-01', 30.80),
(6, 'Webcam', '2023-01-06', 90.00),
(6, 'Microphone', '2023-07-01', 75.40),
(7, 'Graphics Card', '2023-01-07', 500.40),
(7, 'RAM', '2023-08-01', 180.25),
(8, 'Router', '2023-01-08', 60.00),
(8, 'Ethernet Cable', '2023-09-01', 20.50),
(9, 'External Hard Drive', '2023-01-09', 120.25),
(9, 'USB Drive', '2023-10-01', 15.30),
(10, 'Smart Watch', '2023-01-10', 250.50),
(10, 'Fitness Tracker', '2023-11-01', 99.99);
GO
