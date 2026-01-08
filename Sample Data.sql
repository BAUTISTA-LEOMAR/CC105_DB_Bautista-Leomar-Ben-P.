INSERT INTO Users (FullName, Username, Password, Role)
VALUES 
('Juan Dela Cruz', 'admin', '12345', 'Admin'),
('Maria Santos', 'cashier1', '12345', 'Cashier');

INSERT INTO Customers (CustomerName, Phone)
VALUES
('Walk-in Customer', 'N/A'),
('Pedro Reyes', '09123456789');

INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Ballpen', 10.00, 100),
('Notebook', 45.00, 50),
('Pencil', 5.00, 200);

INSERT INTO Sales (SaleDate, UserID, CustomerID, TotalAmount)
VALUES
(GETDATE(), 2, 1, 65.00);


INSERT INTO Sale_Details (SaleID, ProductID, Quantity, SubTotal)
VALUES
(1, 1, 2, 20.00),
(1, 2, 1, 45.00);
