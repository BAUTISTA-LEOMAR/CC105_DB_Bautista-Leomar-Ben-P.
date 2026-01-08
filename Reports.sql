/* Daily Sales Summary */
SELECT
    CAST(SaleDate AS DATE) AS SaleDate,
    COUNT(SaleID) AS TotalTransactions,
    SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY CAST(SaleDate AS DATE)
ORDER BY SaleDate DESC;

/* Product Sales Report */
SELECT
    p.ProductName,
    SUM(sd.Quantity) AS TotalQuantitySold,
    SUM(sd.SubTotal) AS TotalSalesAmount
FROM Sale_Details sd
INNER JOIN Products p ON sd.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantitySold DESC;

/* Cashier Sales Report */
SELECT
    u.FullName AS CashierName,
    COUNT(s.SaleID) AS TotalTransactions,
    SUM(s.TotalAmount) AS TotalSales
FROM Sales s
INNER JOIN Users u ON s.UserID = u.UserID
GROUP BY u.FullName
ORDER BY TotalSales DESC;
