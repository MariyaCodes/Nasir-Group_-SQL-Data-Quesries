CREATE DATABASE Nasir_Group;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT,
    Location VARCHAR(255),
    Budget DECIMAL(12,2),
    EstablishedYear INT,
    Phone VARCHAR(20)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
   FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactPerson VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    Country VARCHAR(50)
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,  
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10,2),
    QuantityInStock INT,
    SupplierID INT,
    ExpiryDate DATE,
    ManufacturingDate DATE,
    Description TEXT,
    Brand VARCHAR(100),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,  -- This matches the type in Products
    CustomerID INT,  
    QuantitySold INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,        
    CustomerID INT,                 
    OrderDate DATE,                
    OrderStatus VARCHAR(20) CHECK (OrderStatus IN ('Pending', 'Completed', 'Cancelled')),  
    TotalAmount DECIMAL(10,2),     
    ShippingAddress VARCHAR(255),  
    PaymentMethod VARCHAR(50),      
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  
);
INSERT INTO Departments VALUES
(1, 'Glass Manufacturing', 101, 'Gazipur', 1000000.00, 1991, '+8802222281859'),
(2, 'Tobacco Production', 102, 'Kushtia', 800000.00, 1997, '+8802222281849'),
(3, 'Melamine Production', 103, 'Dhaka', 600000.00, 1986, '+8802222281850'),
(4, 'Footwear Manufacturing', 104, 'Dhaka', 700000.00, 1997, '+8802222281851'),
(5, 'Jute Processing', 105, 'Tangail', 500000.00, 1998, '+8802222281852'),
(6, 'Printing & Packaging', 106, 'Dhaka', 400000.00, 2000, '+8802222281853'),
(7, 'Energy Solutions', 107, 'Dhaka', 300000.00, 2005, '+8802222281854'),
(8, 'Corporate Office', 108, 'Dhaka', 2000000.00, 1977, '+8802222281855'),
(9, 'Research & Development', 109, 'Dhaka', 900000.00, 2010, '+8802222281856'),
(10, 'Sales & Marketing', 110, 'Dhaka', 1000000.00, 1980, '+8802222281857');
INSERT INTO Employees (EmployeeID, FirstName, LastName, DOB, Gender, Phone, Email, DepartmentID, Salary, HireDate) VALUES
(1, 'John', 'Doe', '1990-05-15', 'Male', '123-456-7890', 'john.doe@example.com', 1, 55000.00, '2015-03-01'),
(2, 'Jane', 'Smith', '1985-07-22', 'Female', '234-567-8901', 'jane.smith@example.com', 2, 62000.00, '2016-06-15'),
(3, 'Tom', 'Jones', '1992-11-12', 'Male', '345-678-9012', 'tom.jones@example.com', 3, 48000.00, '2017-07-01'),
(4, 'Emily', 'Taylor', '1988-03-28', 'Female', '456-789-0123', 'emily.taylor@example.com', 1, 75000.00, '2018-02-20'),
(5, 'Michael', 'Brown', '1983-09-30', 'Male', '567-890-1234', 'michael.brown@example.com', 2, 59000.00, '2015-09-11'),
(6, 'Jessica', 'Wilson', '1995-01-25', 'Female', '678-901-2345', 'jessica.wilson@example.com', 4, 53000.00, '2019-10-05'),
(7, 'James', 'Moore', '1987-12-05', 'Male', '789-012-3456', 'james.moore@example.com', 3, 67000.00, '2014-08-13'),
(8, 'Sophia', 'Davis', '1991-06-17', 'Female', '890-123-4567', 'sophia.davis@example.com', 2, 72000.00, '2016-01-20'),
(9, 'David', 'Miller', '1990-04-09', 'Male', '901-234-5678', 'david.miller@example.com', 1, 64000.00, '2017-11-04'),
(10, 'Olivia', 'Anderson', '1986-02-03', 'Female', '012-345-6789', 'olivia.anderson@example.com', 4, 56000.00, '2015-12-25'),
(11, 'Liam', 'Thomas', '1984-08-14', 'Male', '123-456-7891', 'liam.thomas@example.com', 2, 67000.00, '2014-11-03'),
(12, 'Mia', 'Jackson', '1993-12-17', 'Female', '234-567-8902', 'mia.jackson@example.com', 1, 50000.00, '2018-07-19'),
(13, 'Ethan', 'White', '1989-04-24', 'Male', '345-678-9013', 'ethan.white@example.com', 3, 75000.00, '2019-03-15'),
(14, 'Ava', 'Harris', '1992-10-05', 'Female', '456-789-0124', 'ava.harris@example.com', 4, 68000.00, '2020-06-08'),
(15, 'Alexander', 'Martin', '1981-01-11', 'Male', '567-890-1235', 'alexander.martin@example.com', 2, 80000.00, '2013-04-21'),
(16, 'Charlotte', 'Thompson', '1994-07-27', 'Female', '678-901-2346', 'charlotte.thompson@example.com', 1, 54000.00, '2021-09-02'),
(17, 'Daniel', 'Garcia', '1990-03-17', 'Male', '789-012-3457', 'daniel.garcia@example.com', 3, 60000.00, '2018-04-09'),
(18, 'Isabella', 'Martinez', '1985-06-10', 'Female', '890-123-4568', 'isabella.martinez@example.com', 2, 73000.00, '2017-02-11'),
(19, 'Lucas', 'Roberts', '1987-05-20', 'Male', '901-234-5679', 'lucas.roberts@example.com', 4, 66000.00, '2016-01-25'),
(20, 'Amelia', 'Walker', '1991-09-14', 'Female', '012-345-6790', 'amelia.walker@example.com', 1, 51000.00, '2019-08-30'),
(21, 'Henry', 'Lopez', '1984-11-10', 'Male', '123-456-7892', 'henry.lopez@example.com', 3, 85000.00, '2015-02-01'),
(22, 'Lily', 'Lee', '1993-04-21', 'Female', '234-567-8903', 'lily.lee@example.com', 2, 59000.00, '2020-01-17'),
(23, 'William', 'Gonzalez', '1986-02-22', 'Male', '345-678-9014', 'william.gonzalez@example.com', 4, 71000.00, '2014-06-05'),
(24, 'Zoe', 'Perez', '1994-05-15', 'Female', '456-789-0125', 'zoe.perez@example.com', 1, 48000.00, '2022-04-23'),
(25, 'Jack', 'Wilson', '1990-03-12', 'Male', '567-890-1236', 'jack.wilson@example.com', 2, 63000.00, '2017-10-11');
INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, Phone, Email, Address, Country)
VALUES
(1, 'Nasir Cement Supplier', 'Mr. Ali', '123-456-7890', 'ali@nasircement.com', '123 Cement Road, Dhaka', 'Bangladesh'),
(2, 'Nasir Steel Supplier', 'Mr. Karim', '234-567-8901', 'karim@nasirsteel.com', '456 Steel Ave, Dhaka', 'Bangladesh'),
(3, 'Nasir Paint Supplier', 'Mr. Rahman', '345-678-9012', 'rahman@nasirpaint.com', '789 Paint St, Dhaka', 'Bangladesh'),
(4, 'Nasir Plumbing Supplier', 'Mr. Hasan', '456-789-0123', 'hasan@nasirplumbing.com', '101 Pipe Blvd, Dhaka', 'Bangladesh'),
(5, 'Nasir Tank Supplier', 'Mr. Raza', '567-890-1234', 'raza@nasirtank.com', '202 Tank Rd, Dhaka', 'Bangladesh'),
(6, 'Nasir Tile Supplier', 'Mr. Shah', '678-901-2345', 'shah@nasirtile.com', '303 Tile St, Dhaka', 'Bangladesh'),
(7, 'Nasir Roofing Supplier', 'Mr. Zaman', '789-012-3456', 'zaman@nasirroofing.com', '404 Roof Lane, Dhaka', 'Bangladesh'),
(8, 'Nasir Brick Supplier', 'Mr. Bashir', '890-123-4567', 'bashir@nasirbrick.com', '505 Brick Drive, Dhaka', 'Bangladesh'),
(9, 'Nasir Door Supplier', 'Mr. Iqbal', '901-234-5678', 'iqbal@nasirdoor.com', '606 Door Rd, Dhaka', 'Bangladesh'),
(10, 'Nasir Iron Supplier', 'Mr. Tariq', '012-345-6789', 'tariq@nasiriron.com', '707 Iron Street, Dhaka', 'Bangladesh');
INSERT INTO Products (ProductID, ProductName, Category, Price, QuantityInStock, SupplierID, ExpiryDate, ManufacturingDate, Description, Brand) VALUES
(1, 'Nasir Premium Cement', 'Construction', 450.00, 5000, 1, '2026-12-31', '2023-05-01', 'High-quality cement for all construction needs', 'Nasir Cement'),
(2, 'Nasir Steel Rod', 'Construction', 1200.00, 1000, 2, '2027-06-30', '2022-11-10', 'Durable steel rods for construction', 'Nasir Steel'),
(3, 'Nasir Paint', 'Construction', 300.00, 2000, 3, '2025-08-15', '2023-01-25', 'Long-lasting paint for walls and buildings', 'Nasir Paint'),
(4, 'Nasir PVC Pipes', 'Plumbing', 150.00, 1500, 4, '2026-11-20', '2022-04-10', 'Durable PVC pipes for plumbing solutions', 'Nasir PVC'),
(5, 'Nasir Water Tanks', 'Plumbing', 800.00, 800, 5, '2028-07-10', '2023-06-15', 'Water storage tanks for homes and industries', 'Nasir Tanks'),
(6, 'Nasir Tiles', 'Construction', 500.00, 1200, 6, '2026-12-31', '2023-03-01', 'Stylish and durable tiles for flooring', 'Nasir Tiles'),
(7, 'Nasir Roofing Sheets', 'Construction', 600.00, 700, 7, '2027-04-25', '2022-12-08', 'Heavy-duty roofing sheets for industrial use', 'Nasir Roofing'),
(8, 'Nasir Bricks', 'Construction', 20.00, 10000, 8, '2026-05-30', '2023-07-19', 'Standard red bricks for all construction projects', 'Nasir Bricks'),
(9, 'Nasir Steel Doors', 'Construction', 3000.00, 300, 9, '2027-10-10', '2022-10-15', 'High-quality steel doors for security and safety', 'Nasir Doors'),
(10, 'Nasir Iron Sheets', 'Construction', 350.00, 800, 10, '2026-09-18', '2022-07-05', 'Strong iron sheets for roofing and construction', 'Nasir Iron'),
(11, 'Nasir Windows', 'Construction', 2000.00, 400, 1, '2027-03-30', '2022-08-22', 'High-quality aluminum windows for homes and offices', 'Nasir Windows'),
(12, 'Nasir Steel Beams', 'Construction', 2500.00, 600, 2, '2028-02-14', '2022-06-18', 'Reinforced steel beams for construction projects', 'Nasir Steel'),
(13, 'Nasir Welding Equipment', 'Tools', 15000.00, 100, 3, '2028-01-15', '2021-12-10', 'Advanced welding equipment for industrial use', 'Nasir Tools'),
(14, 'Nasir TMT Bars', 'Construction', 950.00, 1100, 4, '2027-07-01', '2022-11-30', 'High-strength TMT bars for reinforcement in construction', 'Nasir TMT'),
(15, 'Nasir Electrical Wires', 'Electrical', 50.00, 5000, 5, '2025-10-15', '2023-04-01', 'Durable and flexible electrical wires for wiring', 'Nasir Electric'),
(16, 'Nasir Cement Blocks', 'Construction', 75.00, 2000, 6, '2026-12-31', '2023-02-12', 'Lightweight cement blocks for walls and partitions', 'Nasir Cement'),
(17, 'Nasir Insulation Material', 'Building Material', 1000.00, 600, 7, '2027-09-05', '2022-09-15', 'Thermal insulation material for buildings', 'Nasir Insulation'),
(18, 'Nasir Wooden Planks', 'Construction', 350.00, 1000, 8, '2025-11-25', '2023-03-10', 'High-quality wooden planks for furniture and building', 'Nasir Wood'),
(19, 'Nasir Sand', 'Construction', 200.00, 1500, 9, '2026-06-18', '2023-01-30', 'Pure sand for construction and landscaping', 'Nasir Sand'),
(20, 'Nasir Gravel', 'Construction', 100.00, 800, 10, '2026-03-22', '2023-02-07', 'High-quality gravel for construction and roads', 'Nasir Gravel'),
(21, 'Nasir Adhesives', 'Construction', 150.00, 1000, 1, '2025-05-01', '2023-05-05', 'Strong adhesives for tiles, cement, and wood', 'Nasir Adhesive'),
(22, 'Nasir Paint Brushes', 'Tools', 100.00, 2500, 2, '2025-08-11', '2023-01-01', 'High-quality paint brushes for smooth application', 'Nasir Brushes'),
(23, 'Nasir Aluminum Sheets', 'Construction', 500.00, 600, 3, '2027-12-20', '2023-02-18', 'Lightweight aluminum sheets for roofing and cladding', 'Nasir Aluminum'),
(24, 'Nasir Concrete Mix', 'Construction', 200.00, 2500, 4, '2026-08-29', '2022-12-01', 'Ready-mix concrete for building construction', 'Nasir Concrete'),
(25, 'Nasir Wall Panels', 'Building Material', 1200.00, 700, 5, '2027-05-15', '2022-11-25', 'Decorative and durable wall panels for interiors', 'Nasir Panels');
INSERT INTO Customers (CustomerID, FirstName, LastName, Phone, Email, Address, City)
VALUES
(1, 'Mohammad', 'Ali', '01711223344', 'mohammad.ali@email.com', '101 Main Road, Dhaka', 'Dhaka'),
(2, 'Sujit', 'Dutta', '01722334455', 'sujit.dutta@email.com', '45, Bazar Street, Chattogram', 'Chattogram'),
(3, 'Rahim', 'Sheikh', '01733445566', 'rahim.sheikh@email.com', '78, Mazar Road, Sylhet', 'Sylhet'),
(4, 'Asma', 'Sultana', '01744556677', 'asma.sultana@email.com', '123, Zilla School Road, Rajshahi', 'Rajshahi'),
(5, 'Shahin', 'Morshed', '01755667788', 'shahin.morshed@email.com', '56, Basudev Road, Khulna', 'Khulna'),
(6, 'Nusrat', 'Alam', '01766778899', 'nusrat.alam@email.com', '234, Kazi Road, Barishal', 'Barishal'),
(7, 'Mehdi', 'Hassan', '01777889900', 'mehedi.hassan@email.com', '345, Kachari Road, Mymensingh', 'Mymensingh'),
(8, 'Nahid', 'Mahmud', '01788990011', 'nahid.mahmud@email.com', '76, Proddhan Road, Naogaon', 'Naogaon'),
(9, 'Farhana', 'Rashid', '01799001122', 'farhana.rahid@email.com', '12, Shahid Raza Road, Bogura', 'Bogura'),
(10, 'Ahsan', 'Kabir', '01710001122', 'ahsan.kabir@email.com', '89, College Road, Rangpur', 'Rangpur');
INSERT INTO Sales (SaleID, ProductID, CustomerID, QuantitySold, SaleDate, TotalAmount, PaymentMethod)
VALUES
(1, 1, 1, 10, '2025-03-01', 4500.00, 'Credit Card'),
(2, 2, 2, 5, '2025-03-02', 6000.00, 'Debit Card'),
(3, 3, 3, 8, '2025-03-03', 2400.00, 'Cash'),
(4, 4, 4, 15, '2025-03-04', 4500.00, 'Bank Transfer'),
(5, 5, 5, 7, '2025-03-05', 5600.00, 'Credit Card'),
(6, 6, 6, 20, '2025-03-06', 10000.00, 'Debit Card'),
(7, 7, 7, 10, '2025-03-07', 6000.00, 'Cash'),
(8, 8, 8, 12, '2025-03-08', 2400.00, 'Bank Transfer'),
(9, 9, 9, 6, '2025-03-09', 18000.00, 'Credit Card'),
(10, 10, 10, 4, '2025-03-10', 1400.00, 'Debit Card');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderStatus, TotalAmount, ShippingAddress, PaymentMethod)
VALUES
(1, 1, '2025-03-01', 'Pending', 4500.00, '101 Main Road, Dhaka', 'Credit Card'),
(2, 2, '2025-03-02', 'Completed', 6000.00, '45, Bazar Street, Chattogram', 'Debit Card'),
(3, 3, '2025-03-03', 'Completed', 2400.00, '78, Mazar Road, Sylhet', 'Cash'),
(4, 4, '2025-03-04', 'Cancelled', 4500.00, '123, Zilla School Road, Rajshahi', 'Bank Transfer'),
(5, 5, '2025-03-05', 'Completed', 5600.00, '56, Basudev Road, Khulna', 'Credit Card'),
(6, 6, '2025-03-06', 'Pending', 10000.00, '234, Kazi Road, Barishal', 'Debit Card'),
(7, 7, '2025-03-07', 'Completed', 6000.00, '345, Kachari Road, Mymensingh', 'Cash'),
(8, 8, '2025-03-08', 'Pending', 2400.00, '76, Proddhan Road, Naogaon', 'Bank Transfer'),
(9, 9, '2025-03-09', 'Completed', 18000.00, '12, Shahid Raza Road, Bogura', 'Credit Card'),
(10, 10, '2025-03-10', 'Cancelled', 1400.00, '89, College Road, Rangpur', 'Debit Card');
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Products;
SELECT * FROM Sales;
SELECT * FROM Customers;
SELECT * FROM Suppliers;
SELECT * FROM Orders;
ALTER TABLE Employees
ADD Bonus DECIMAL(10,2);
UPDATE Employees
SET Bonus = CASE
               WHEN EmployeeID BETWEEN 1 AND 10 THEN 5000
               WHEN EmployeeID BETWEEN 11 AND 25 THEN 10000
           END
WHERE EmployeeID BETWEEN 1 AND 25;
Select * from Employees

Select * from Employees
SELECT FirstName, LastName, Salary FROM Employees WHERE Salary > 50000;

SELECT * FROM Customers WHERE City = 'Dhaka' OR City = 'Chittagong';

SELECT OrderID FROM Orders WHERE OrderStatus = 'Completed'
UNION
SELECT OrderID FROM Orders WHERE OrderStatus = 'Pending';

SELECT ProductName FROM Products WHERE QuantityInStock 
    (SELECT AVG(QuantityInStock) FROM Products);

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT FirstName AS 'Employee Name', Salary AS 'Monthly Salary' FROM Employees;
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Products;
SELECT * FROM Sales;
SELECT * FROM Customers;
SELECT * FROM Suppliers;
SELECT * FROM Orders;
ALTER TABLE Employees
ADD Bonus DECIMAL(10,2);
UPDATE Employees
SET Bonus = CASE
               WHEN EmployeeID BETWEEN 1 AND 10 THEN 5000
               WHEN EmployeeID BETWEEN 11 AND 25 THEN 10000
           END
WHERE EmployeeID BETWEEN 1 AND 25;
Select * from Employees
Select * from Employees
SELECT FirstName, LastName, Salary FROM Employees WHERE Salary &gt; 50000;
SELECT * FROM Customers WHERE City = &#39;Dhaka&#39; OR City ="Dhaka" OR City= "Chittagong";
SELECT OrderID FROM Orders WHERE OrderStatus = "Completed"
UNION
SELECT OrderID FROM Orders WHERE OrderStatus = "Pending";
SELECT ProductName FROM Products WHERE QuantityInStock
(SELECT AVG(QuantityInStock) FROM Products);

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
